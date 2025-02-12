session_root "~/repos/repo-name"

if initialize_session "session-name"; then

  new_window "window-name"

  select_window 1

  run_cmd "git pull"
  run_cmd "vim"

fi

finalize_and_go_to_session
