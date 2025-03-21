defmodule SciEx.Random do
  @moduledoc """
  Functions to efficiently generate random numbers from random number distributions.
  """
  import SciEx.RandomDistBuilder, only: [defdraw: 1]
  alias SciEx.Array1

  @max_random_seed 2**63

  @doc """
  Draw `nr_of_draws` values from a Normal distribution.

  Returns a dataframe with the following columns:
    - `:draw` (type: `:u64`) - the number of the draw
    - `:x` (type: `:f64`) - the values
  """
  @spec draw_from_normal(float(), float(), integer()) :: Array1.t()
  defdraw draw_from_normal({mu, :float}, {sigma, :float}, nr_of_draws)

  @doc """
  Draw `nr_of_draws` values from a Beta distribution.

  Returns a dataframe with the following columns:
    - `:draw` (type: `:u64`) - the number of the draw
    - `:x` (type: `:f64`) - the values
  """
  @spec draw_from_beta(float(), float(), integer()) :: Array1.t()
  defdraw draw_from_beta({a, :float}, {b, :float}, nr_of_draws)


  # @doc """
  # Draw `nr_of_draws` values from a SkewNormal distribution.

  # Returns a dataframe with the following columns:
  #   - `:draw` (type: `:u64`) - the number of the draw
  #   - `:x` (type: `:f64`) - the values
  # """
  # @spec draw_from_skew_normal(float(), float(), float(), integer()) :: Array1.t()
  # defdraw draw_from_skew_normal(loc, scale, shape, nr_of_draws)

  @doc """
  Draw `nr_of_draws` values from a Cauchy distribution.

  Returns a dataframe with the following columns:
    - `:draw` (type: `:u64`) - the number of the draw
    - `:x` (type: `:f64`) - the values
  """
  @spec draw_from_cauchy(float(), float(), integer()) :: Array1.t()
  defdraw draw_from_cauchy({median, :float}, {scale, :float}, nr_of_draws)

  @doc """
  Draw `nr_of_draws` values from a Geometric distribution.

  Returns a dataframe with the following columns:
    - `:draw` (type: `:u64`) - the number of the draw
    - `:x` (type: `:f64`) - the values
  """
  @spec draw_from_geometric(float(), integer()) :: Array1.t()
  defdraw draw_from_geometric({p, :float}, nr_of_draws)

  @doc """
  Draw `nr_of_draws` values from a Hypergeometric distribution.

  Returns a dataframe with the following columns:
    - `:draw` (type: `:u64`) - the number of the draw
    - `:x` (type: `:f64`) - the values
  """
  @spec draw_from_hypergeometric(float(), float(), float(), integer()) :: Array1.t()
  defdraw draw_from_hypergeometric(pop_size, success_states, sample_size, nr_of_draws)

  @doc """
  Draw `nr_of_draws` values from a LogNormal distribution.

  Returns a dataframe with the following columns:
    - `:draw` (type: `:u64`) - the number of the draw
    - `:x` (type: `:f64`) - the values
  """
  @spec draw_from_log_normal(float(), float(), integer()) :: Array1.t()
  defdraw draw_from_log_normal({mean, :float}, {variance, :float}, nr_of_draws)

  # @doc """
  # Draw `nr_of_draws` values from a Dirichlet distribution with parameters `alpha`.

  # Returns a dataframe with the following columns:
  #   - `:draw` (type: `:u64`) - the number of the draw
  #   - `:x1`, `:x2`, ..., `:"x#\{k}"`
  #     (total of `k` columns, where `k = length(alpha), type: `:f64`) -
  #     the generated values for each draw
  # """
  # @spec draw_from_dirichlet(list(float()), integer()) :: Array1.t()
  # defdraw draw_from_dirichlet(alphas, nr_of_draws)
end
