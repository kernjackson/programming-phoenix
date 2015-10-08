defmodule Rumbl.Repo do
#  use Ecto.Repo, otp_app: :rumbl
  @moduledoc """
  In memory repository.
  """

  def all(Rumbl.User) do
    [
      %Rumbl.User{id: "1", name: "Jose", username: "josevalim", password: "elixir"},
      %Rumbl.User{id: "2", name: "Bruce", username: "rerapids", password: "7langs"},
      %Rumbl.User{id: "3", name: "Chris", username: "chrismccord", password: "phx"}
  ]
  end

  def all(_module), do: []

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end

end

# defmodule Rumbl.Repo do
#   # use Ecto.Repo, otp_app: :rumbl
#
#   @moduledoc """
#   In memory repository
#   """
#
#   def all(Rumbl.User) do
#     [
#       %Rumbl.User{id: "1", name: "Sean", username: "somlor", password: "elixir"},
#       %Rumbl.User{id: "2", name: "Alli", username: "alli", password: "cookies"},
#       %Rumbl.User{id: "3", name: "Sebastian", username: "sebastian", password: "meow"},
#     ]
#   end
#
#   def all(_module), do: []
#
#   def get(module, id), do: get_by(module, id: id)
#
#   def get_by(module, params) do
#     Enum.find all(module), record_contains?(params)
#   end
#
#   defp record_contains?(params) do
#     fn(record) -> Enum.all? params, params_in?(record) end
#   end
#
#   def params_in?(record) do
#     fn({key, val}) -> Map.get(record, key) == val end
#   end
# end
