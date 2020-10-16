defmodule Grid do
  @moduledoc """
  Grid provides easy generation and manipulation
  of two dimensional lists.
  """
  defstruct width: 0,
            height: 0,
            data: %{}

  @doc """
  Generate a new grid.
  Returns a map
  """
  def create(width, height, default \\ nil) when width > 0 and height > 0 do
    data = for x <- 0..(width - 1), y <- 0..(height - 1), into: %{}, do: {{x, y}, default}
    %__MODULE__{width: width, height: height, data: data}
  end

  @doc """
  Returns given grid as a string.

  * Rows are separated by newline characters.
  """
  def to_string(%__MODULE__{} = grid) do
    grid
    |> Enum.map(fn row -> row ++ ["\n"] end)
    |> Enum.concat()
    |> Enum.join()
  end
end
