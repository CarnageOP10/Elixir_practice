defmodule Hello do
  # same name for file and module like java
  def world(name) do
    IO.puts("hello #{name}")
  end
end

Hello.world("Parth")
