# Cards

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `cards` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cards, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/cards>.

# Notes

- `mix new cards` to create a new project
- `just s` to enter iex shell
- `recompile` in iex shell to recompile after changes

### Object Oriented vs Functional Programming

- Cards Object Oriented
  - Instance variables
![Alt text](./assets/cards_oo.png)

```typescript
deck = new Deck();  // <Deck>

deck.cards;         // [Card1, Card2, Card3, ...]
deck.shuffle();     // [Card2, Card1, Card3, ...]
deck.deal();        // Deck[Card2, Card3, ...]
```

- Cards Functional
  - No concept of instance variables!
![Alt text](./assets/cards_fp.png)
