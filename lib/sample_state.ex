defmodule SampleState do
  @enforce_keys [:val]
  defstruct [:val, :num]

  def new(val, num) when is_integer(val) do
    {:ok, %SampleState{val: val, num: num}}
  end

  def new(val) when is_integer(val) do
    {:ok, %SampleState{val: val}}
  end

  def new(_) do
    {:error}
  end
end
