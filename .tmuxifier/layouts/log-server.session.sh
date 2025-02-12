session_root "~/repos/log-server"

if initialize_session "log-server"; then
  new_window "code"

  select_window 1

  run_cmd "git pull"
  run_cmd "vim"
fi

finalize_and_go_to_session
