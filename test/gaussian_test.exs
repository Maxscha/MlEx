defmodule MlEx.GaussianOutlierTest do
  use ExUnit.Case
  alias MlEx.GaussianOutlier
  doctest MlEx

  test "Test Mean" do
    assert GaussianOutlier.mean([1, 2, 3]) == 2
  end

  test "Test Mean 3" do
    assert GaussianOutlier.mean([1, 2, 3, 4]) == 2.5
  end

  test "Test Variance" do
    assert GaussianOutlier.variance([1, 2, 3, 4], 2.5) == 1.25
  end

  test "Test Probability" do
    assert GaussianOutlier.probability(0, 2.5, 1.25) < 0.02
  end
end
