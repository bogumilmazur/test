defmodule BlogPhoenix.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do

    alter table(:users) do
      add :x, :integer
    end
  end
end
