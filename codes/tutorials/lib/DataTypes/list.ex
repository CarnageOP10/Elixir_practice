defmodule DataTypes.List do

  @module """
  This module contains functions to work with lists
  """

  @doc """
  This function takes a list of numbers and returns the sum of all the numbers in the list
  """

  @spec sum(list(number())) :: number()
  def sum([]), do: 0
  def sum([head | tail]) do
    head + sum(tail)
  end

  # create tail recursive function
  @spec sum_tail_recursive(list(number()), integer()) :: number()
  def sum_tail_recursive(list, acc \\ 0)
  def sum_tail_recursive([], acc), do: acc
  def sum_tail_recursive([h | t], acc) do
    sum_tail_recursive(t, acc + h)
  end

  # reverse a list
  def rev_list([]), do: []
  def rev_list([h | t]), do: rev_list(t) ++ [h]

  # create tail recursive function
  @spec rev_list_tail_recursive(list(number()), list(number())) :: list(number())
  def rev_list_tail_recursive(list, acc \\ [])
  def rev_list_tail_recursive([], acc), do: acc
  def rev_list_tail_recursive([h | t], acc) do
    rev_list_tail_recursive(t, [h | acc])
  end

  # concat two lists
  @spec concat([any()], [any()]) :: [any()]
  def concat(src, dest), do: concat_f(src |> rev_list(), dest)
  defp concat_f([], dest), do: dest
  defp concat_f([h|t], dest) , do: concat_f(t, [h | dest])

end
