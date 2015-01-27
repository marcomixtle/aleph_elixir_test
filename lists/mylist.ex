defmodule MyList do
  def sum(list), do: _sum(list)
  # private methods
  defp _sum([ head | [] ]), do: head
  defp _sum([ head | [heady | tail] ]), do: _sum([ head + heady | tail]) 
end