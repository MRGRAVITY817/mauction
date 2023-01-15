defmodule Mauction.Item do
  use Ecto.Schema

  schema "items" do
    field(:title, :string)
    field(:description, :string)
    field(:ends_at, :utc_datetime)
    timestamps()
  end

  def changeset(item, params \\ %{}) do
    item |> Ecto.Changeset.cast(params, [:title, :description, :ends_at])
  end
end
