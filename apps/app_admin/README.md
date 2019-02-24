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

# mix

mix Ecto.gen.migration create_app_schema

# iex stuff
Ecto.UUID.generate()

alias AppAdmin.{User, Repo}
import Ecto.Query, only: [from: 2]

# user 

params = %{ first_name: "Michael", last_name: "Johnson", email: "michael.a.johnson.wa@gmail.com", phone_number: "+12067554265"}
changeset = User.new(%User{}, params)

Repo.insert(changeset, prefix: :app)

<!-- query = from t in "users", prefix: "app", where: t.user_id == ^'a64603c7-2c2e-4827-981a-d3d69f06071f', select: [t.id, t.first_name, t.last_name, t.middle_name, t.email, t.phone_number]

{:ok, user_id} = Ecto.UUID.dump("b940fe31-f78e-4307-843e-a306d22fdc6a")
query = from t in "users", prefix: "app", where: t.user_id == ^user_id, select: [t.id, t.user_id, t.first_name, t.last_name, t.middle_name, t.email, t.phone_number]
Repo.all(query)

query = from t in "users", prefix: "app", where: t.user_id == ^'a64603c7-2c2e-4827-981a-d3d69f06071f', select: [t.id, t.first_name, t.last_name, t.middle_name, t.email, t.phone_number] -->

<!-- q = from User, prefix: "app", where: [user_id: ^user_id] -->

q = from User, prefix: "app"
Repo.all(q)
 
# card_app
alias AppAdmin.{CardApp, Repo}
import Ecto.Query, only: [from: 2]

params = %{ name: "asdf" }
changeset = CardApp.new(%CardApp{}, params)
Repo.insert(changeset, prefix: :app)

query = from CardApp, prefix: "app"
Repo.all(query)

# the card app will have a deck of cards
# the individual card apps will be contained by a individual source code repository
# the main application will be the deck holder application
# the deck holder application will have the basic settings to point to each deck application   
