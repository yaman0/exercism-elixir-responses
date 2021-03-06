defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, factors) do
    Enum.filter(1..(limit-1), fn(item) ->
      Enum.find(factors, 0, &(rem(item, &1) === 0)) !== 0
    end)
    |> Enum.sum()
  end
end
