session_root "~/repos/health-tracker"

if initialize_session "health-tracker"; then

  new_window "code"

  select_window 1

  run_cmd "git pull"
  run_cmd "vim"
fi

finalize_and_go_to_session
