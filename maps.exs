defmodule Demo do
  def update do
    new_map = %{ map() | title: "Mad Men", year: 2022}
    new_map
  end
  def keys do
    map() |> Map.keys
  end
  def merge do
    map() |> Map.merge(%{some: "data"})
  end
  def has_key do
    map() |> Map.has_key?(:year)
  end
  def get do
    Map.get map(), :title
  end
  def map do
    %{title: "hangover", year: 2000}
  end
end

Demo.update
