defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "greets the world" do
    pid = Calculator.start()
    assert Calculator.value(pid) == 0

    Calculator.add(pid, 31415)
    assert Calculator.value(pid) == 31415
  end
end
