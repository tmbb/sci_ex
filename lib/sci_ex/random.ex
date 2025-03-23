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

  @doc """
  Draw `nr_of_draws` values from a Normal distribution.
  """
  @spec draw_from_normal(float(), float(), integer()) :: Array1.t()
  defdraw(draw_from_normal({mu, :float}, {sigma, :float}, nr_of_draws))

  @doc """
  Draw `nr_of_draws` values from a Beta distribution.
  """
  @spec draw_from_beta(float(), float(), integer()) :: Array1.t()
  defdraw(draw_from_beta({a, :float}, {b, :float}, nr_of_draws))

  @doc """
  Draw `nr_of_draws` values from a Cauchy distribution.
  """
  @spec draw_from_cauchy(float(), float(), integer()) :: Array1.t()
  defdraw(draw_from_cauchy({median, :float}, {scale, :float}, nr_of_draws))

  @doc """
  Draw `nr_of_draws` values from a Geometric distribution.
  """
  @spec draw_from_geometric(float(), integer()) :: Array1.t()
  defdraw(draw_from_geometric({p, :float}, nr_of_draws))

  @doc """
  Draw `nr_of_draws` values from a Hypergeometric distribution.
  """
  @spec draw_from_hypergeometric(float(), float(), float(), integer()) :: Array1.t()
  defdraw(draw_from_hypergeometric(pop_size, success_states, sample_size, nr_of_draws))

  @doc """
  Draw `nr_of_draws` values from a LogNormal distribution.
  """
  @spec draw_from_log_normal(float(), float(), integer()) :: Array1.t()
  defdraw(draw_from_log_normal({mean, :float}, {variance, :float}, nr_of_draws))
end
