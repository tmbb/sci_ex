defmodule SciEx.Gen.Main do
  alias SciEx.Gen.RustModule

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

  def run() do
    # Generate 64-bit and 32-bit code
    generate_math_float_code(64)
    generate_math_float_code(32)

    :ok
  end
end
