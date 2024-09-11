defmodule Tutorials.Recursion.SumDigits do

  def sum(0) do
    0
  end

  def sum(num) do
    num + sum(num - 1)
  end

  def sum_tail_recursive(num, acc \\ 0)  #this is the definatiomn for the function with default value for acc
  def sum_tail_recursive(0, acc) do
    acc
  end

  def sum_tail_recursive(num, acc) do
    sum_tail_recursive(num - 1, acc + num)
  end

end

# mix tutorials
# then make new files in lib
