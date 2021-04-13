# SumMixedArray

**Spec**

| Input | Output |
| ---- | ---- |
| [] | 0 |
| [1] | 1 |
| [2] | 2 |
| ["1"] | 1 |
| ["1200"] | 1200 |

| [1, 2, 3] | 6 |
| ["1", "2", "5"] | 8 |
| [1, "4", 7] | 12 |

| non-list | ArgumentError |
| list containing at least 1 (non-integer && non-integer-as-string) | ArgumentError |


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `sum_mixed_array` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:sum_mixed_array, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/sum_mixed_array](https://hexdocs.pm/sum_mixed_array).
