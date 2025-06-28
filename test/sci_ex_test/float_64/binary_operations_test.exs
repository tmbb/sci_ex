defmodule SciExTest.Float64.BinaryOperationsTest do
  use ExUnit.Case, async: true
  use ExUnitProperties

  doctest SciEx

  alias SciEx.Float64.Array1
  use SciEx.Operators
  alias SciEx.Random

  @doc """
  Generator for a pair of a random algorithm and a seed,
  so that we can seed the random number generators for
  tests in which we want to see if our random variable
  samplers are deterministic BUT in which we want to sample
  different values in each test run.
  """
  def gen_random_algorithm_and_seed() do
    StreamData.tuple({
      StreamData.one_of([:exsss, :exs1024s, :exrop, :exsp]),
      StreamData.tuple({
        StreamData.positive_integer(),
        StreamData.positive_integer(),
        StreamData.positive_integer()
      })
    })
  end

  property "Float64.Array1 - zero is the identity of addition (array, array), operator" do
    check all({algo, seed} <- gen_random_algorithm_and_seed()) do
      :rand.seed(algo, seed)

      a = Random.draw_from_normal(0.0, 50.0, 10)
      b = a + Array1.zeros(10)

      assert Array1.equal?(a, b)
    end
  end

  property "Float64.Array1 - zero is the identity of addition (array, array), function" do
    check all({algo, seed} <- gen_random_algorithm_and_seed()) do
      :rand.seed(algo, seed)

      a = Random.draw_from_normal(0.0, 50.0, 10)
      b = SciEx.add(a, Array1.zeros(10))

      assert Array1.equal?(a, b)
    end
  end

  property "Float64.Array1 - zero is the identity of addition (array, scalar), operator" do
    check all({algo, seed} <- gen_random_algorithm_and_seed()) do
      :rand.seed(algo, seed)

      a = Random.draw_from_normal(0.0, 50.0, 10)
      b = a + 0.0

      assert Array1.equal?(a, b)
    end
  end

  property "Float64.Array1 - zero is the identity of addition (array, scalar), function" do
    check all({algo, seed} <- gen_random_algorithm_and_seed()) do
      :rand.seed(algo, seed)

      a = Random.draw_from_normal(0.0, 50.0, 10)
      b = SciEx.add(a, 0.0)

      assert Array1.equal?(a, b)
    end
  end

  property "Float64.Array1 - zero is the identity of addition (scalar, array), operator" do
    check all({algo, seed} <- gen_random_algorithm_and_seed()) do
      :rand.seed(algo, seed)

      a = Random.draw_from_normal(0.0, 50.0, 10)
      b = 0.0 + a

      assert Array1.equal?(a, b)
    end
  end

  property "Float64.Array1 - zero is the identity of addition (scalar, array), function" do
    check all({algo, seed} <- gen_random_algorithm_and_seed()) do
      :rand.seed(algo, seed)

      a = Random.draw_from_normal(0.0, 50.0, 10)
      b = SciEx.add(0.0, a)

      assert Array1.equal?(a, b)
    end
  end

  property "Float64.Array1 - one is the identity of multiplication (array, array), operator" do
    check all({algo, seed} <- gen_random_algorithm_and_seed()) do
      :rand.seed(algo, seed)

      a = Random.draw_from_normal(1.0, 51.0, 10)
      b = a * Array1.ones(10)

      assert Array1.equal?(a, b)
    end
  end

  property "Float64.Array1 - one is the identity of multiplication (array, array), function" do
    check all({algo, seed} <- gen_random_algorithm_and_seed()) do
      :rand.seed(algo, seed)

      a = Random.draw_from_normal(1.0, 51.0, 10)
      b = SciEx.multiply(a, Array1.ones(10))

      assert Array1.equal?(a, b)
    end
  end

  property "Float64.Array1 - one is the identity of multiplication (array, scalar), operator" do
    check all({algo, seed} <- gen_random_algorithm_and_seed()) do
      :rand.seed(algo, seed)

      a = Random.draw_from_normal(1.0, 51.0, 10)
      b = a * 1.0

      assert Array1.equal?(a, b)
    end
  end

  property "Float64.Array1 - one is the identity of multiplication (array, scalar), function" do
    check all({algo, seed} <- gen_random_algorithm_and_seed()) do
      :rand.seed(algo, seed)

      a = Random.draw_from_normal(1.0, 51.0, 10)
      b = SciEx.multiply(a, 1.0)

      assert Array1.equal?(a, b)
    end
  end

  property "Float64.Array1 - one is the identity of multiplication (scalar, array), operator" do
    check all({algo, seed} <- gen_random_algorithm_and_seed()) do
      :rand.seed(algo, seed)

      a = Random.draw_from_normal(1.0, 51.0, 10)
      b = 1.0 * a

      assert Array1.equal?(a, b)
    end
  end

  property "Float64.Array1 - one is the identity of multiplication (scalar, array), function" do
    check all({algo, seed} <- gen_random_algorithm_and_seed()) do
      :rand.seed(algo, seed)

      a = Random.draw_from_normal(1.0, 51.0, 10)
      b = SciEx.multiply(1.0, a)

      assert Array1.equal?(a, b)
    end
  end
end
