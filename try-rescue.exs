defmodule Demo do
  def run do
    try do
      Keyword.fetch!([a: 10], :a)
    rescue
      KeyError -> "Key cannot be found...."
    after #ensure its run
      IO.puts "im executed no matter what..."
    else # executed if only no errors not presented
      10 -> "found ten"
      _ -> "not sure what that is"
    end
  end
end

Demo.run
