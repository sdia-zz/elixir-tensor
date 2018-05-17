defmodule Chat.Supervisor do
  use Supervisor


  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end

  def init(_) do
    childs = [
      worker(Chat.Server, [])
    ]
    supervise(childs, strategy: :one_for_one)
  end
end
