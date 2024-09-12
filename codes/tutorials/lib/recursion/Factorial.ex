defmodule Tutorials.Recursion.Factorial do

  def factorial(0), do: 1
  def factorial(n) when n > 0 do
    n * factorial(n - 1)
  end


  # create tail recursive function
  def fact_tail_recursive(num, acc \\ 1)  #this is the definatiomn for the function with default value for acc
  def fact_tail_recursive(0, acc) do
    acc
  end
  def fact_tail_recursive(num, acc) do
    fact_tail_recursive(num - 1, acc * num)
  end

  
end
