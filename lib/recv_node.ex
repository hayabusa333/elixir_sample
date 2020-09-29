defmodule RecvNode do
  def start(name) do
    {:ok, _} = Node.start(:"#{name}", :shortnames, 15000)
  end

  def self() do
    Node.self
  end
end
