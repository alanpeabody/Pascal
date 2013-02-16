defmodule Pascal.Worker do
  use GenServer.Behaviour
  @moduledoc """
    OTP Server that responds to calls with a triangle.

   # iex usage:
   { :ok, pid } = :gen_server.start_link(Pascal.Worker, [], [])
   :gen_server.call(pid, {:rows, 1})
  """

  def handle_call({:rows, rows}, _from, state) do
    {:reply, Pascal.Triangle.generate(rows), state}
  end
end
