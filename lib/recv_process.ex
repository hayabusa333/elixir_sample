defmodule RecvProcess do
  def confirm() do
    receive do
      {true, message} -> message
    end
  end
end
