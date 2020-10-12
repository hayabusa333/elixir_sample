defmodule SampleState do
  defstruct [:val]

  def new(val) do
    {:ok, %SampleState{val: val}}
  end
end
