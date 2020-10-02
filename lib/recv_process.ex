defmodule RecvProcess do
  def confirm() do
    receive do
      {true, message} -> message
    end
  end

  def ping do
    receive do
      {sender, msg} -> "pong"
    end
  end
end
