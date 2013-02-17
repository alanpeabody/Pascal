defmodule Pascal do
  use Application.Behaviour

  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, _args) do

    dispatch = :cowboy_router.compile([
      {:_, [{"/", Pascal.Handler, []}]}
    ])

    {:ok, _} = :cowboy.start_http(:http, 100,
                                  [port: 8080],
                                  [env: [dispatch: dispatch]])
    Pascal.Supervisor.start_link
  end

end
