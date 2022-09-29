defmodule Demo do
  def run do
    val = 10
    if val == 10, do: "positive", else: "negative"
  end
end

Demo.run
