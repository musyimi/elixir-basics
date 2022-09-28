defmodule Demo do
  def delete do
    List.delete_at list(),2
  end
  def list do
    [1,2,3,4,5,6,7]
  end
end

Demo.delete
