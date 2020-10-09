defmodule RecvProcess do
  def message do
    receive do
      {message} -> message
    after
      1_000 -> {:error}
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

  def add do
    receive do
      {val, num} -> {:ok, val + num}
    after
      1_000 -> {:error}
    end
  end

  def add_message do
    receive do
      {val, num} -> send self(), {val, num}
    end
    {:ok, val} = add
    send self(), {val}
    message
  end
end
