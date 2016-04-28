ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Tiktak.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Tiktak.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Tiktak.Repo)

