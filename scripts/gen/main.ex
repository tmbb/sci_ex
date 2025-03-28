defmodule SciEx.Gen.Main do
  alias SciEx.Gen.RustModule
  alias SciEx.Gen.Injector

  require EEx

  @external_resource "priv/rust_generator/templates/array_comparisons.rs"

  EEx.function_from_file(
    :def,
    :array_comparisons_rs,
    "priv/rust_generator/templates/array_comparisons.rs",
    []
  )

  @external_resource "priv/rust_generator/templates/vectorized_function.rs"

  EEx.function_from_file(
    :def,
    :fft_rs,
    "priv/rust_generator/templates/fft_float.rs",
    [:assigns]
  )

  @external_resource "priv/rust_generator/templates/array_builders.rs"

  EEx.function_from_file(
    :def,
    :array_builders_rs,
    "priv/rust_generator/templates/array_builders.rs",
    []
  )

  @external_resource "priv/rust_generator/templates/array_binary_operations.rs"

  EEx.function_from_file(
    :def,
    :array_binary_operations_rs,
    "priv/rust_generator/templates/array_binary_operations.rs",
    [:assigns]
  )

  def generate_fft(bits) do
    path = "native/sci_ex_nif/src/fft_float#{bits}.rs"
    code = fft_rs(bits: bits)

    File.write!(path, code)
  end

  def generate_math_float_code(bits) when bits in [64, 32] do
    # Standardized naming scheme helps keep the source data tidy
    input_path = "priv/rust_generator/rust_modules/f#{bits}_api.rs"
    # When we generate it for real, update this to the real path
    output_path = "native/sci_ex_nif/src/math_float#{bits}.rs"

    test_path = "test/sci_ex_test/float_#{bits}/math_functions_test.exs"

    type = "f#{bits}"

    # Create our rust/rustler module
    math_float_module = %RustModule{
      prefix: "math",
      type: "float",
      bits: bits,
      extra_imports: ["use libm::Libm;"]
    }

    # Add vectorized functions to the module
    math_float_module = RustModule.add_vectorized_functions_from_file(
      math_float_module,
      input_path,
      # TODO: check this for conflicts
      rename_self_to: "x",
      assign_type_to_self: type,
      rs_module: type,
      filter: fn f -> f.result_type == type end
    )

    math_float_module = RustModule.add_vectorized_functions_from_file(
      math_float_module,
      "priv/rust_generator/rust_modules/f#{bits}_libm_api.rs",
      rs_module: "Libm::<f#{bits}>"
    )

    RustModule.to_rust_file(math_float_module, output_path)

    RustModule.to_ex_test_file(
      math_float_module,
      test_path,
      overrides: %{
        "cbrt" => "cube_root"
      },
      exclude: [
        "to_radians",
        "to_degrees",
        "signum",
        "tgamma",
        "recip",
        "log1p"
      ]
    )

    RustModule.to_elixir_nif_file(
      math_float_module,
      "math_float#{bits}",
      "lib/sci_ex/sci_ex_nif.ex"
    )
  end

  def generate_array_builders() do
    code = array_builders_rs()
    path = "native/sci_ex_nif/src/array_builders.rs"

    File.write!(path, code)

    generated_defs =
      for bits <- [64, 32] do
        _defs_for_bits =
          for type <- ["complex", "float"] do
            defs_for_type =
              for n_dims <- 1..6 do
                args = Enum.map(1..n_dims, fn i -> "_n#{i}" end) |> Enum.intersperse(", ")

                [
                  "  def #{type}#{bits}_array#{n_dims}_zeros(#{args}), do: err()\n",
                  "  def #{type}#{bits}_array#{n_dims}_ones(#{args}), do: err()\n"
                ]
              end

            [defs_for_type, "\n"]
          end
      end

    special_defs =
      for bits <- [64, 32] do
        [
          "  def float#{bits}_array1_linspace(_start, _stop, _n), do: err()\n",
          "  def float#{bits}_array1_geomspace(_start, _stop, _n), do: err()\n",
          "  def float#{bits}_array1_logspace(_base, _start, _stop, _n), do: err()\n"
        ]
      end
      |> Enum.intersperse("\n")

    code_to_inject = List.flatten([generated_defs, special_defs])

    Injector.inject_between(
      "lib/sci_ex/sci_ex_nif.ex",
      "  # %% BEGIN:GENERATED:array_builders %%\n",
      "  # %% END:GENERATED:array_builders %%\n",
      code_to_inject
    )
  end

  def generate_array_binary_operations() do
    code = array_binary_operations_rs(
      operations: [
        add: :+,
        subtract: :-,
        multiply: :*,
        divide: :/
    ])
    path = "native/sci_ex_nif/src/array_binary_operations.rs"

    File.write!(path, code)

    generated_defs =
      for bits <- [64, 32] do
        defs_for_bits =
          for type <- ["complex", "float"] do
            defs_for_type =
              for n_dims <- 1..6, op <- ["add", "subtract", "multiply", "divide"] do
                [
                  "  def #{type}#{bits}_#{op}_array#{n_dims}_array#{n_dims}(_a, _b), do: err()\n",
                  "  def #{type}#{bits}_#{op}_array#{n_dims}_scalar(_a, _b), do: err()\n",
                  "  def #{type}#{bits}_#{op}_scalar_array#{n_dims}(_a, _b), do: err()\n",
                  if type == "complex" and n_dims == 1 do
                    "  def #{type}#{bits}_#{op}_scalar_scalar(_a, _b), do: err()\n"
                  else
                    []
                  end
                ]
              end

            Enum.intersperse(defs_for_type, "\n")
          end

        Enum.intersperse(defs_for_bits, "\n")
      end

    code_to_inject = List.flatten(generated_defs)

    Injector.inject_between(
      "lib/sci_ex/sci_ex_nif.ex",
      "  # %% BEGIN:GENERATED:array_binary_operations %%\n",
      "  # %% END:GENERATED:array_binary_operations %%\n",
      code_to_inject
    )
  end

  def generate_array_comparisons() do
    precise_float_function_names = ~w(
        equal not_equal all_not_equal
        all_greater_than all_greater_than_or_equal
        all_less_than all_less_than_or_equal
        all_absolute_values_greater_than
        all_absolute_values_greater_than_or_equal
        all_absolute_values_less_than
        all_absolute_values_less_than_or_equal
      )

    # We can't order complex numbers, but we can order their
    # absolute values
    precise_complex_function_names = ~w(
      equal not_equal all_not_equal
      all_absolute_values_greater_than
      all_absolute_values_greater_than_or_equal
      all_absolute_values_less_than
      all_absolute_values_less_than_or_equal
    )

    precise_float_functions =
      for nr_of_bits <- [64, 32], n_dim <- 1..6, name <- precise_float_function_names do
        "  def float#{nr_of_bits}_array#{n_dim}_#{name}(_a, _b), do: err()"
      end

    precise_complex_functions =
      for nr_of_bits <- [64, 32], n_dim <- 1..6, name <- precise_complex_function_names do
        "  def complex#{nr_of_bits}_array#{n_dim}_#{name}(_a, _b), do: err()"
      end

    all_functions = precise_float_functions ++ precise_complex_functions

    code_to_inject = Enum.intersperse(all_functions, "\n")

    code = array_comparisons_rs()
    File.write!(
      "native/sci_ex_nif/src/array_comparisons.rs",
      code
    )

    Injector.inject_between(
      "lib/sci_ex/sci_ex_nif.ex",
      "  # %% BEGIN:GENERATED:float_array_comparisons %%\n",
      "  # %% END:GENERATED:float_array_comparisons %%\n",
      code_to_inject
    )
  end

  def run() do
    # Simple array builders for 1D up to 6D arrays.
    # More sophisticated builders for 1D arrays.
    generate_array_builders()

    # Arithmetic operations on arrays
    generate_array_binary_operations()

    # # Generate 64-bit and 32-bit code
    generate_math_float_code(64)
    generate_math_float_code(32)

    generate_array_comparisons()

    # Generate FFT functions (currently only DCT)
    generate_fft(64)
    generate_fft(32)

    :ok
  end
end
