defmodule SendProcess do
  def message(msg) do
    send self(), {msg}
  end

  def ping do
    send self(), {:ping}
  end
end
