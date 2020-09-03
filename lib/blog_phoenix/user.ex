defmodule BlogPhoenix.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :c, :string
    field :email, :string
    field :name, :string
    field :x, :integer

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :c, :x])
    |> validate_required([:name, :email, :c, :x])
  end
end
