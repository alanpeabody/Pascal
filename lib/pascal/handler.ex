defmodule Pascal.Handler do
  @behaviour :cowboy_http_handler

  def init(_transport, req, []) do
    {:ok, req, nil}
  end

  def handle(req, state) do
    {:ok, req} = :cowboy_req.reply(200, [], "Hello world!", req)
    {:ok, req, state}
  end

  def terminate(_reason, _req) do
    :ok
  end
end
