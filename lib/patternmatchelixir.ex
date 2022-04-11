defmodule Patternmatchelixir do
  use Application

  def start(_, _) do
    params = %{role: "default", name: "Filipao"}

    map_user(params)
    {:ok, self()}
  end

  def map_user(%{role: "admin"} = _params) do
    IO.puts("Welcome admin!!!")
  end

  def map_user(%{role: "user"} = _params) do
    IO.puts("Welcome user!!!")
  end

  def map_user(_) do
    handle_result({:error, "wrong permission"})
  end

  def handle_result({:ok, result}), do: result
  def handle_result({:error, result}), do: result
end
