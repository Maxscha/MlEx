defmodule MlExTest do
  use ExUnit.Case
  doctest MlEx

  test "greets the world" do
    assert MlEx.hello() == :world
  end
end
