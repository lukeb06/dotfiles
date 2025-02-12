session_root "~/repos/history.nvim"

if initialize_session "history"; then

  new_window "code"

  select_window 1

  run_cmd "git pull"
  run_cmd "vim"

fi

finalize_and_go_to_session
