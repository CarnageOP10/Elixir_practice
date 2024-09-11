defmodule Tutorials.Recursion.PrintDigits do
  def upto(0) do
    IO.puts(0)
     :ok #return
  end

  def upto(num) do
    IO.puts(num)
    upto(num - 1)
  end

  def uptor(0), do: :ok

  def uptor(num) do
    uptor(num - 1)
    IO.puts(num)

  end

end


    # num -> 3 --> 0 1 2 3
    # for (i = 0; i <= num; i++) NO
