defmodule SciExTest.RandomTest do
  use ExUnit.Case
  use ExUnitProperties

  doctest SciEx

  alias SciEx.Random
  require SciEx.Float64.Array1, as: Array1

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

  property "normal distribution is deterministic with seed" do
    check all {algo, seed} <- gen_random_algorithm_and_seed(),
              # Set (liberal) limits to avoid floating point weirdness
              mean <- StreamData.float(min: -10.0e3, max: 10.0e3),
              std_dev <- StreamData.float(min: 0.01, max: 1000.0) do

      :rand.seed(algo, seed)
      samples1 = Random.draw_from_normal(mean, std_dev, 100)

      # Reset the seed
      :rand.seed(algo, seed)
      samples2 = Random.draw_from_normal(mean, std_dev, 100)

      assert Array1.equal?(samples1, samples2)
    end
  end

  property "normal distribution is non-deterministic without seed" do
    # Set (liberal) limits to avoid floating point weirdness.
    check all mean <- StreamData.float(min: -10.0e4, max: 10.0e4),
              std_dev <- StreamData.float(min: 0.01, max: 1000.0) do

      samples1 = Random.draw_from_normal(mean, std_dev, 100)
      samples2 = Random.draw_from_normal(mean, std_dev, 100)

      # It will be practically impossible to generate the same
      # list of 100 random numbers using a normal distribution.
      assert Array1.not_equal?(samples1, samples2)
    end
  end

  property "normal distribution can misbehave on very large numbers" do
    # Remove the limits on the mean and std deviation so that we
    # get the floating point weirdness we have been avoiding
    # in the previous tests.
    assert_raise ExUnit.AssertionError, fn ->
      check all mean <- StreamData.float(),
                std_dev <- StreamData.float(min: 0.01) do

        samples1 = Random.draw_from_normal(mean, std_dev, 100)
        samples2 = Random.draw_from_normal(mean, std_dev, 100)

        # It will be practically impossible to generate the same
        # list of 100 random numbers using a normal distribution.
        assert Array1.not_equal?(samples1, samples2)
      end
    end
  end
end
