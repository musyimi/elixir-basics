defmodule Demo do
  def work do
    IO.puts "doing work..."
    exit :error
  end

  def run do

    #pid = spawn fn -> work() end
    #Process.monitor pid
    spawn_monitor(Demo, :work, [])

    receive do
      msg -> IO.inspect msg
        # code
    end

  end
end

Demo.run
