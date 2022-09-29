defmodule Streams do
  def transform do
    [ 1,2,3,4,5,6,7] |>
    Stream.map(&(&1 *2)) |>
    Stream.drop_every(3)

  end

  def own_stream(multiplier) do
    Stream.iterate(1, &(&1 * multiplier))
  end
end

Streams.own_stream(3) |> Enum.take(15)
