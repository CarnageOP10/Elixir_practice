defmodule DataTypes.Map do

  @spec map([any()], (any() -> any()), [any()]) :: any()
   def map(elements, func, acc \\ [])
   def map([], _, acc), do: acc

   def map([h | t], func, acc) do
    map(t, func, [func.(h) | acc])
   end

   def flatmap(elements, func, acc \\ [])
   def flatmap([], _, acc), do: acc
   def flatmap([h | t], func, acc) do
    flatmap(t, func, DataTypes.List.concat(acc, func.(h)))
   end

end

#  DataTypes.Map.map([1,2,3], fn x -> x*2 end) |> DataTypes.List.rev_list
#  DataTypes.Map.map([1,2,3], fn x -> x*2 end) |> Enum.reverse

#  |> pipeline operator
