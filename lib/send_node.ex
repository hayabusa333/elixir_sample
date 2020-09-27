defmodule SendNode do
  def start() do
    {:ok, _} = Node.start(:send, :shortnames, 15000)
  end
end
