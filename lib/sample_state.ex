defmodule SampleState do
  @enforce_keys [:val]
  defstruct [:val]

  def new(val) do
    {:ok, %SampleState{val: val}}
  end
end
