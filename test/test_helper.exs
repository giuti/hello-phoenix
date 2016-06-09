ExUnit.start

Mix.Task.run "ecto.create", ~w(-r HiPhoenix.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r HiPhoenix.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(HiPhoenix.Repo)

