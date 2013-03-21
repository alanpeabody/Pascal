Code.require_file "../../test_helper.exs", __FILE__

defmodule WorkerTest do
  use ExUnit.Case

  test "server handles calls correctly" do
   { :ok, pid } = :gen_server.start_link(Pascal.Worker, [], [])
   assert :gen_server.call(pid, {:rows, 1}) == {:triangle, [[0,1,0]]}
   assert :gen_server.call(pid, {:rows, 2}) == {:triangle, [[0,1,0],[0,1,1,0]]}
  end

end
