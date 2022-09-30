defmodule Demo do
  def work do
    IO.puts "doing work....."

    result = receive do
      message -> message
    end
    IO.puts result
  end

  def run(message) do
    pid = spawn fn ->
      work()
    end
    send pid, message
  end
end

Demo.run("my message")
