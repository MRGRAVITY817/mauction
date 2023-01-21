# Mauction

## Useful Commands

- Compile project: `mix compile`
- Interact with project: `iex -S mix`
- Start Phoenix server: `cd apps/mauction_web && mix phx.server`
- Setup database: `mix ecto.create`
- Create database migration file: `mix ecto.gen.migration <migration_name>`
- Show database migration list: `mix ecto.migrations`
- Run database migration: `mix ecto.migrate`
- Rollback database migration: `mix ecto.rollback`

## How to update

```elixir
iex(6)> item |> 
...(6)> Mauction.Item.changeset(
...(6)> %{title: "My updated item", ends_at:
...(6)> DateTime.from_naive!(~N[2023-01-22 00:00:00], "Etc/UTC")}) |>
...(6)> Mauction.Repo.update()
```