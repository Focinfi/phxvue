defmodule Phxvue.Posts.Article do
  use Ecto.Schema
  import Ecto.Changeset
  alias Phxvue.Posts.Article


  schema "articles" do
    field :content, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Article{} = article, attrs) do
    article
    |> cast(attrs, [:title, :content])
    |> validate_required([:title, :content])
  end
end
