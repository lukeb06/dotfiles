session_root "~/aa/mod_4_project"

if initialize_session "mod_4_project"; then

  new_window "code"

  select_window 1

  run_cmd "git pull"
  run_cmd "vim"

fi

finalize_and_go_to_session
