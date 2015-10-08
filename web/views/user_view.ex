defmodule Rumbl.UserView do
  use Rumbl.Web, :view
  alias Rumbl.User

# We added a simple first_name function to parse a user’s first name from their name field.
  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
