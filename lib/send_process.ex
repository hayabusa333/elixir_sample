defmodule SendProcess do
  def ping do
    send self(), {:ping}
  end
end
