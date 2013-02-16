Code.require_file "../../test_helper.exs", __FILE__

defmodule TriangleTest do
  use ExUnit.Case
  alias Pascal.Triangle, as: Subject

  test "triangles generated correctly" do
    assert Subject.generate(0) == []
    assert Subject.generate(1) == [[0,1,0]]
    assert Subject.generate(2) == [[0,1,0],
                                   [0,1,1,0]]
    assert Subject.generate(3) == [[0,1,0],
                                   [0,1,1,0],
                                   [0,1,2,1,0]]
    assert Subject.generate(4) == [[0,1,0],
                                   [0,1,1,0],
                                   [0,1,2,1,0],
                                   [0,1,3,3,1,0]]
  end

end
