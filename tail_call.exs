defmodule ListUtils do
  def mult(list), do: do_mult(1, list)

  defp do_mult(current_val, []), do: current_val # stops the recursion

  defp do_mult(current_val, [head | tail]) do
    current_val * head |>
    do_mult(tail) # tail call
  end

end

ListUtils.mult([1,2,3,4])
