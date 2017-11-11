defmodule Algos do

  @doc"""
  The Fibonacci Sequence is the series of numbers: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
  The next number is found by adding up the two numbers before it.

  ## Examples

    iex> Algos.fib!(0)
    0

    iex> Algos.fib!(1)
    1

    iex> Algos.fib!(2)
    1

    iex> Algos.fib!(3)
    2

    iex> Algos.fib!(4)
    3

    iex> Algos.fib!(5)
    5

  """
  def fib!(n) do
    case fib(n) do
      {:ok, answer} -> answer
      {:error, reason} -> raise reason
    end
  end

  @doc"""
  The Fibonacci Sequence is the series of numbers: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
  The next number is found by adding up the two numbers before it.

  Returns {:ok, num} if the input is an integer and greater than or equal to 0,
  and {:error, reason} otherwise

  ## Examples

    iex> Algos.fib(6)
    {:ok, 8}

    iex> Algos.fib("apples")
    {:error, "Must be an integer >=0, provided \\\"apples\\\""}

    iex> Algos.fib(%{name: "bananas"})
    {:error, "Must be an integer >=0, provided %{name: \\\"bananas\\\"}"}

    iex> Algos.fib(-1)
    {:error, "Must be an integer >=0, provided -1"}

  """
  def fib(n) when is_integer(n) and n >= 0, do: {:ok, _fib(n)}
  def fib(n), do: {:error, "Must be an integer >=0, provided #{Kernel.inspect(n)}"}
  defp _fib(0), do: 0
  defp _fib(1), do: 1
  defp _fib(n), do: _fib(n-1) + _fib(n-2)


end
