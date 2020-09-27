defmodule RecvNode do
  def start() do
    {:ok, _} = Node.start(:recv, :shortnames, 15000)
  end
end
