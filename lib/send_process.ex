defmodule SendProcess do
  def message(msg) do
    send self(), {true, msg}
  end

  def ping do
    send self(), {:ping}
  end
end
