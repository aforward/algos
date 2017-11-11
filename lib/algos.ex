defmodule Algos do

  @doc"""
  The Fibonacci Sequence is the series of numbers: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
  The next number is found by adding up the two numbers before it.

  ## Examples

    iex> Algos.fib(0)
    0

    iex> Algos.fib(1)
    1

    iex> Algos.fib(2)
    1

    iex> Algos.fib(3)
    2

    iex> Algos.fib(4)
    3

    iex> Algos.fib(5)
    5

    iex> Algos.fib(-1)
    0

  """
  def fib(n) when n <= 0, do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n-1) + fib(n-2)

end
