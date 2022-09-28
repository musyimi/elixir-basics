defmodule Demo do
  def access do
    keyword() |> keyword.get(:color)
  end
  def keyword do
    [color: :red, size: 10, size: 400]
  end
end

Demo.access
