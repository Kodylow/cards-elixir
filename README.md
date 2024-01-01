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


Number of arguments a funciton accepts is called its `arity`.

Immutable data structures are a core concept of functional programming. In Elixir, we have lists, tuples, maps, and structs. All of these data structures are immutable. This means that once they are created, they cannot be modified. Instead, any operation on an immutable data structure will return a new copy of that data structure with the modification applied.

- Tuples
![Alt text](assets/elixir_tuples.png)

- Pattern Matching
  - Elixir's replacement for variable assignment
  - Used any time you see the `=` operator
  - The left side of the `=` is a pattern
  - The right side of the `=` is a value
![Alt text](assets/elixir_pattern_matching.png)


- Relationship to Erlang

Code written in Elixir is transpiled to Erlang bytecode, then is compiled and executed on the Erlang virtual machine (BEAM, conceptually similar to JVM). Elixir can be thought of as a more modern syntax for Erlang. Elixir also provides a lot of conveniences that Erlang does not, such as a package manager, a test framework, and a build tool.

