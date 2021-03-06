defmodule SendNode do
  def start() do
    {:ok, _} = Node.start(:send, :shortnames, 15000)
  end

  def connect(name) do
    Node.connect(:"#{name}")
  end

  def self() do
    Node.self()
  end

  def list do
    Node.list()
  end

  def ping(name) do
    Node.ping(:"#{name}")
  end

  def broadcast_ping do
    for node_list <- list do
      Node.ping(node_list)
    end
  end
end
