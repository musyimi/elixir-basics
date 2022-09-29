defmodule Cond do
  def run(str) do
    len = String.length(str)

    cond do
      len > 0 && len < 5 -> "short"
      len >= 5 && len < 10 -> "meduim"
      len > 10  -> "long"
      true -> "an empty string...." #fallback
    end
  end
end

Cond.run("Wamlambez")
