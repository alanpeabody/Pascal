Code.require_file "../../test_helper.exs", __FILE__

defmodule TriangleTest do
  use ExUnit.Case

  test "triangles generated correctly" do
    assert Pascal.Triangle.generate(0) == []
    assert Pascal.Triangle.generate(1) == [[0,1,0]]
    assert Pascal.Triangle.generate(2) == [[0,1,0],
                                           [0,1,1,0]]
    assert Pascal.Triangle.generate(3) == [[0,1,0],
                                           [0,1,1,0],
                                           [0,1,2,1,0]]
    assert Pascal.Triangle.generate(4) == [[0,1,0],
                                           [0,1,1,0],
                                           [0,1,2,1,0],
                                           [0,1,3,3,1,0]]
  end

end
