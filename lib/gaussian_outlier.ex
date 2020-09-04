defmodule MlEx.GaussianOutlier do
  def mean(l) do
    Enum.sum(l) / Enum.count(l)
  end

  def variance(l, m) do
    Enum.sum(Enum.map(l, fn x -> (x - m) * (x - m) end)) / Enum.count(l)
  end

  def probability(x, mean, 0) do
    if x == mean, do: 1, else: 0
  end

  def probability(x, mean, variance) do
    first = 1 / :math.sqrt(2 * :math.pi() * variance)
    in_exp = -((x - mean) * (x - mean) / 2 * variance)
    first * :math.exp(in_exp)
  end
end
