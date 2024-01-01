defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @spec create_deck() :: list(String.t())
  def create_deck do
    values = [
      "Ace",
      "Two",
      "Three",
      "Four",
      "Five",
      "Six",
      "Seven",
      "Eight",
      "Nine",
      "Ten",
      "Jack",
      "Queen",
      "King"
    ]

    suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

    # List comprehension syntax: for <var> <- <list>, do: <expression>
    for suit <- suits, value <- values, do: "#{value} of #{suit}"
  end

  @spec shuffle(list(String)) :: list()
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  # Question mark in elixir is convention for functions that return a boolean
  @spec contains?(list(String), String) :: boolean()
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck) do
    {hand, deck} = Enum.split(deck, 5)
    {hand, deck}
  end
end
