# The code that's part of the generators can't be part of
# the main application because if it were, we'd get stuck
# in case we ever generated code (even rust code) that didn't
# compile. In that case we'd be unable to correct the mistakes
# in the generators and generate the right code by running the
# generators again.
#
# This script must be run with `mix run scripts/rust_generator.exs --no-compile`
#
# It's ok if we depend on external packages here, though.
paths = Path.wildcard("scripts/gen/*.ex")
Kernel.ParallelCompiler.compile(paths)

SciEx.Gen.Main.run()
