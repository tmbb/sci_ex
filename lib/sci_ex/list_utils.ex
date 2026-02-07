defmodule SciEx.ListUtils do
  @moduledoc false
  @doc """
  Returns true if the nested list is regular (all sub-lists at the same depth
  have the same size), false otherwise.
  """
  @spec regular?(any()) :: boolean()
  def regular?(nested_list) do
    match?({:ok, _}, dimensions(nested_list))
  end

  @doc """
  Returns {:ok, dimensions} if the list is a regular dense array,
  or {:error, reason} if it is irregular or contains invalid data.
  """
  @spec dimensions(any()) :: {:ok, [integer()]} | {:error, String.t()}
  def dimensions(list) when is_list(list) do
    case get_shape(list) do
      {:error, reason} -> {:error, reason}
      shape -> {:ok, shape}
    end
  end

  # A non-list is treated as a scalar (0-dimensional)
  def dimensions(_), do: {:error, "Input is not a list"}

  @doc """
  Reshapes a flat list into a nested structure based on the provided dimensions.
  Raises on failure.
  """
  def reshape!(flat_list, dims) when is_list(flat_list) and is_list(dims) do
    {:ok, reshaped} = reshape(flat_list, dims)
    reshaped
  end

  @doc """
  Reshapes a flat list into a nested structure based on the provided dimensions.
  Returns {:ok, nested_list} or {:error, reason}.
  """
  @spec reshape(list(), [integer()]) :: {:ok, list()} | {:error, String.t()}
  def reshape(flat_list, dims) when is_list(flat_list) and is_list(dims) do
    total_elements = Enum.product(dims)

    cond do
      length(flat_list) != total_elements ->
        {:error, "Total elements (#{length(flat_list)}) does not match dimensions product (#{total_elements})"}

      dims == [] ->
        {:ok, flat_list}

      true ->
        {:ok, do_reshape(flat_list, dims)}
    end
  end

  # Base case: if there's only one dimension left, the list is already at that level
  defp do_reshape(list, [_n]), do: list

  # Recursive step
  defp do_reshape(list, [_n | rest]) do
    # Calculate how many elements belong in each sub-chunk
    chunk_size = Enum.product(rest)

    list
    |> Enum.chunk_every(chunk_size)
    |> Enum.map(fn chunk -> do_reshape(chunk, rest) end)
  end

  # --- Private Helpers ---

  # Base case: empty list is a valid 1D structure with size 0
  defp get_shape([]), do: [0]

  defp get_shape(list) when is_list(list) do
    first = List.first(list)

    # Determine the shape of the first element
    inner_shape = if is_list(first), do: get_shape(first), else: []

    if is_tuple(inner_shape) and elem(inner_shape, 0) == :error do
      inner_shape
    else
      # Validate that all elements in the current list have the same inner shape
      if Enum.all?(list, fn elem -> current_shape_matches?(elem, inner_shape) end) do
        [length(list) | inner_shape]
      else
        {:error, "Inconsistent dimensions detected at depth"}
      end
    end
  end

  # Helper to check if an element matches the expected dimensions
  defp current_shape_matches?(elem, []) when not is_list(elem), do: true
  defp current_shape_matches?(elem, shape) when is_list(elem) do
    case get_shape(elem) do
      ^shape -> true
      _ -> false
    end
  end

  defp current_shape_matches?(_, _), do: false
end
