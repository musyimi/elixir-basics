defmodule ListUtils do

  def max([value | [head | tail]]) when value < head do
    max [head | tail]
  end

  def max([value | [head | tail]]) when value >= head do
    max [value | tail]
  end

  def max([value]), do: value

  def map([], _), do: []

  def map([head | tail], fun) do
    [fun.(head) | map(tail, fun)]
  end

end

ListUtils.max([1,2,3,4,40,50]) |> IO.inspect
