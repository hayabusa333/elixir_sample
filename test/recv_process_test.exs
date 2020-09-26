defmodule RecvProcessTest do
  use ExUnit.Case

  test "test confirm" do
    pid = spawn( RecvProcess, :confirm, [] )
    send( pid, { true, "hello" } ) == {:true, "hello"}
  end
end
