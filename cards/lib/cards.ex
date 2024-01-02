defmodule Cards do
  @moduledoc """
  A module for creating and manipulating decks of cards.
  """

  @doc """
  Creates a deck of cards.
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

  @doc """
  Shuffles a deck of cards.
  """
  @spec shuffle(list(String)) :: list()
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
  Checks if a deck contains a card.

  ## Examples
        iex> Cards.contains?(["Ace of Spades", "Two of Spades", "Three of Spades"], "Ace of Spades")
        true
        iex> Cards.contains?(["Ace of Spades", "Two of Spades", "Three of Spades"], "Ace of Clubs")
        false
  """
  # Question mark in elixir is convention for functions that return a boolean
  @spec contains?(list(String), String) :: boolean()
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
  Deals a hand of cards.

  ## Examples
        iex> Cards.deal(["Ace of Spades", "Two of Spades", "Three of Spades"], 2)
        {["Ace of Spades", "Two of Spades"], ["Three of Spades"]}
  """
  @spec deal(list(String), number()) :: {list(), list()}
  def deal(deck, handsize) do
    {hand, deck} = Enum.split(deck, handsize)
    {hand, deck}
  end

  @doc """
  Saves a deck of cards to a file.
  """
  @spec save(list(), iodata()) :: :ok
  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  @doc """
  Loads a deck of cards from a file.
  """
  @spec load(binary()) :: list()
  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, reason} -> "Error: #{reason}"
    end
  end

  @doc """
  Creates a hand of cards.
  """
  def create_hand(hand_size) do
    Cards.create_deck()
    |> Cards.shuffle()
    |> Cards.deal(hand_size)
  end
end
