defmodule MlEx.Normalizer do
  def normalize(l, :max) do
    m = Enum.max(l)
    Enum.map(l, fn x -> x / m end)
  end

  def normalize(l, :min_max) do
    max = Enum.max(l)
    min = Enum.min(l)
    Enum.map(l, fn x -> (x - min) / (max - min) end)
  end
end
