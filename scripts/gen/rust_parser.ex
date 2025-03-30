defmodule SciEx.Gen.RustParser do
  import NimbleParsec

  # Write a parser to extract the function declarations
  # from a rust file. This parser allows us to save
  # a lot of work when adding functions in bulk.

  def ignore_naked_strings(list) do
    Enum.reject(list, &is_binary/1)
  end

  whitespace = ascii_string([?\s, ?\t, ?\n, ?\r], min: 1)

  rust_identifier =
    ascii_string([?a..?z, ?A..?Z], 1)
    |> optional(ascii_string([?a..?z, ?A..?Z, ?0..?9, ?_], min: 1))
    |> reduce({Enum, :join, [""]})

  rust_type =
    ascii_string([?a..?z, ?A..?Z], 1)
    |> optional(ascii_string([?a..?z, ?A..?Z, ?0..?9, ?_, ?>, ?<], min: 1))
    |> reduce({Enum, :join, [""]})

  rust_function_name = rust_identifier

  any_char = utf8_char([])

  skip_ws = fn combinators ->
    Enum.reduce(combinators, empty(), fn comb, acc ->
      acc
      |> concat(ignore(optional(whitespace)))
      |> concat(comb)
    end)
  end

  argument = skip_ws.([
    unwrap_and_tag(rust_identifier, :name),
    optional(
      skip_ws.([
        string(":"),
        unwrap_and_tag(rust_type, :type)
      ])
    )
  ])
  |> reduce({:ignore_naked_strings, []})

  arguments = skip_ws.([
    argument,
    repeat(
      skip_ws.([
        ignore(string(",")),
        argument
      ])
    )
  ])

  function_declaration =
    skip_ws.([
      string("pub"),
      optional(string("const")),
      string("fn"),
      unwrap_and_tag(rust_function_name, :function),
      string("("),
      tag(arguments, :arguments),
      string(")"),
      string("->"),
      unwrap_and_tag(rust_type, :type)
    ])
    |> reduce({:ignore_naked_strings, []})
    |> reduce({:build_function, []})

  function_declarations = repeat(
    choice([
      function_declaration,
      ignore(any_char)
    ])
  )

  alias SciEx.Gen.{Function, Argument}

  def build_function(decl) do
    [inner] = decl

    name = Keyword.fetch!(inner, :function)
    arguments = Keyword.get(inner, :arguments, [])
    result_type = Keyword.fetch!(inner, :type)

    arguments = for arg <- arguments do
      # We can't pattern match on the list because the
      # argument might not have a type
      %Argument{
        name: Keyword.get(arg, :name, nil),
        type: Keyword.get(arg, :type, nil)
      }
    end

    %Function{
      ex_function: name,
      rs_function: name,
      arguments: arguments,
      result_type: result_type
    }
  end

  defparsec(:function_declarations, function_declarations)

  def extract_function_declarations_from_text!(text) do
    case function_declarations(text) do
      {:ok, decls, "", _, _, _} ->
        decls
    end
  end

  def extract_functions_from_file!(path) do
    text = File.read!(path)
    extract_function_declarations_from_text!(text)
  end

  def example() do
    path = "scripts/rust_generator/rust_modules/f64_api.rs"
    _decls = extract_functions_from_file!(path)
  end
end
