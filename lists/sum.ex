defmodule MyList do
  def sum(list), do: _sum(list)
    # private methods
    defp _sum([ head | [] ]), do: head
    defp _sum([ head | tail]), do: head + _sum(tail)        
end