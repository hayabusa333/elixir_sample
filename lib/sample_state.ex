defmodule SampleState do
  @enforce_keys [:val]
  defstruct [:val]

  def new(val) when is_integer(val) do
    {:ok, %SampleState{val: val}}
  end

  def new(_) do
    {:error}
  end
end
