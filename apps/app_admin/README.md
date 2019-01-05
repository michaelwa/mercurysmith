# AppAdmin

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `app_admin` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:app_admin, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/app_admin](https://hexdocs.pm/app_admin).

alias AppAdmin.User
params = %{ first_name: "Michael", last_name: "Johnson", email: "michael.a.johnson.wa@gmail.com", phone_number: "+12067554265"}
changeset = User.changeset(%User{}, params)
Ecto.Changeset.apply_changes(changeset)

