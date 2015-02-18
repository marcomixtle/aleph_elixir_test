defmodule MyList do
  def sum(list), do: _sum(list)
  # private methods
  defp _sum([ head | [] ]), do: head
  defp _sum([ head | [heady | tail] ]), do: _sum([ head + heady | tail])
  
  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ] 
end