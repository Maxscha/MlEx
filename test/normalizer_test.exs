defmodule MlEx.NormalizerTest do
  use ExUnit.Case
  alias MlEx.Normalizer
  doctest MlEx

  test "Test Max" do
    assert Normalizer.normalize([1, 2, 4], :max) == [0.25, 0.5, 1]
  end

  test "Test min_max" do
    assert Normalizer.normalize([2, 2, 4, 10], :min_max) == [0, 0, 0.25, 1]
  end
end
