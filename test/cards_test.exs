defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  setup do
    deck = Cards.create_deck()
    {:ok, deck: deck}
  end

  test "create_deck/0", context do
    assert length(context[:deck]) == 52
  end

  test "shuffle/1", context do
    assert Cards.shuffle(context[:deck]) != context[:deck]
  end

  test "contains?/2", context do
    assert Cards.contains?(context[:deck], "Ace of Spades")
    assert Cards.contains?(context[:deck], "Ace of Clubs")
  end

  test "deal/2" do
    deck = Cards.create_deck()
    {hand, _deck} = Cards.deal(deck, 5)
    assert length(hand) == 5
  end

  test "save/2 and load/1" do
    deck = Cards.create_deck()
    Cards.save(deck, "test_deck")
    loaded_deck = Cards.load("test_deck")
    assert deck == loaded_deck
  end

  test "create_hand/1" do
    {hand, _deck} = Cards.create_hand(5)
    assert length(hand) == 5
  end

  test "deal/2 removes cards from deck", context do
    {hand, deck} = Cards.deal(context[:deck], 1)
    dealt_card = hd(hand)
    refute Cards.contains?(deck, dealt_card)
  end
end
