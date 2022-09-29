defmodule Comp do
  require Integer
  def demo(list) do
    for el <- list, Integer.is_even(el), do: el * 2
  end
end

Comp.demo([1,2,3,4,5,6,7,8,9,10])

# "el <- list" is called a generator, explains exactly how to extract values from a collection
