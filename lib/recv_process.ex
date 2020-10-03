defmodule RecvProcess do
  def confirm() do
    receive do
      {true, message} -> message
    end
  end

  def ping do
    receive do
      {:ping} -> :pong
      {_} -> :pang
    after
      1_000 -> "nothing after 1s"
    end
  end
end
