defmodule SciEx.Random do
  @moduledoc """
  Functions to efficiently generate arrays of random numbers
  from random number distributions.
  """

  import SciEx.RandomDistBuilder, only: [defdraw: 1]
  alias SciEx.Array1

  @max_random_seed 2 ** 63

  # TODO: add more distributions.
  # TODO: add support for other array shapes.

  random_seed_message = """
  This function uses the seed from the current BEAM process,
  as described in the documentation for the
  [:rand](https://www.erlang.org/docs/28/apps/stdlib/rand.html) module.
  In order to get reproducible output, you need to set a new seed.
  To set a new seed, call the `:rand.seed/2` function.
  """

  @doc """
  Draw `nr_of_draws` values from a Normal distribution.

  #{random_seed_message}
  """
  @spec draw_from_normal(float(), float(), integer()) :: Array1.t()
  defdraw(draw_from_normal({mu, :float}, {sigma, :float}, nr_of_draws))

  @doc """
  Draw `nr_of_draws` values from a Beta distribution.

  #{random_seed_message}
  """
  @spec draw_from_beta(float(), float(), integer()) :: Array1.t()
  defdraw(draw_from_beta({a, :float}, {b, :float}, nr_of_draws))

  @doc """
  Draw `nr_of_draws` values from a Cauchy distribution.

  #{random_seed_message}
  """
  @spec draw_from_cauchy(float(), float(), integer()) :: Array1.t()
  defdraw(draw_from_cauchy({median, :float}, {scale, :float}, nr_of_draws))

  @doc """
  Draw `nr_of_draws` values from a Geometric distribution.

  #{random_seed_message}
  """
  @spec draw_from_geometric(float(), integer()) :: Array1.t()
  defdraw(draw_from_geometric({p, :float}, nr_of_draws))

  @doc """
  Draw `nr_of_draws` values from a Hypergeometric distribution.

  #{random_seed_message}
  """
  @spec draw_from_hypergeometric(float(), float(), float(), integer()) :: Array1.t()
  defdraw(draw_from_hypergeometric(pop_size, success_states, sample_size, nr_of_draws))

  @doc """
  Draw `nr_of_draws` values from a LogNormal distribution.

  #{random_seed_message}
  """
  @spec draw_from_log_normal(float(), float(), integer()) :: Array1.t()
  defdraw(draw_from_log_normal({mean, :float}, {variance, :float}, nr_of_draws))
end
