defmodule HelloPhoenix.Comment do
  use HelloPhoenix.Web, :model

  schema "comments" do
    field :name, :string
    field :context, :string
    belongs_to :post, HelloPhoenix.Post, foreign_key: :post_id

    timestamps
  end

  @required_fields ~w(name context post_id)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end