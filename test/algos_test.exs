defmodule AlgosTest do
  use ExUnit.Case
  doctest Algos

  test "fib less than 0 isn't valid" do
    catch_error do
      Algos.fib!(-1)
    end
  end

end
