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

### Identicons

Identicons are visual representations of hashes. They are often used to visually identify users in online forums. The following is an example of an identicon:
![Alt text](./assets/identicons.png)

String -> MD5 Hash -> List of numbers based on the hash -> Pick color -> Build grid -> Convert grid to image -> Save image
