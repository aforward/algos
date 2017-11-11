defmodule Athlete do
  defstruct name: nil, age: nil

  @doc"""
  Deterine the age range of the athlete

  ## Example

      iex> Athlete.category(13)
      :ineligible

      iex> Athlete.category(14)
      :teenage14

      iex> Athlete.category(15)
      :teenage14

      iex> Athlete.category(16)
      :teenage16

      iex> Athlete.category(17)
      :teenage16

      iex> Athlete.category(34)
      :adult

      iex> Athlete.category(35)
      :masters35

      iex> Athlete.category(39)
      :masters35

      iex> Athlete.category(40)
      :masters40

      iex> Athlete.category(44)
      :masters40

      iex> Athlete.category(45)
      :masters45

      iex> Athlete.category(49)
      :masters45

      iex> Athlete.category(50)
      :masters50

      iex> Athlete.category(54)
      :masters50

      iex> Athlete.category(55)
      :masters55

      iex> Athlete.category(59)
      :masters55

      iex> Athlete.category(60)
      :masters60

      iex> Athlete.category(61)
      :masters60

      iex> Athlete.category(99)
      :masters60
  """
  def category(%Athlete{age: age}), do: category(age)
  def category(age) when is_integer(age) and age >= 60, do: :masters60
  def category(age) when is_integer(age) and age >= 55, do: :masters55
  def category(age) when is_integer(age) and age >= 50, do: :masters50
  def category(age) when is_integer(age) and age >= 45, do: :masters45
  def category(age) when is_integer(age) and age >= 40, do: :masters40
  def category(age) when is_integer(age) and age >= 35, do: :masters35
  def category(age) when is_integer(age) and age >= 18, do: :adult
  def category(age) when is_integer(age) and age >= 16, do: :teenage16
  def category(age) when is_integer(age) and age >= 14, do: :teenage14
  def category(age) when is_integer(age) and age < 14, do: :ineligible

end