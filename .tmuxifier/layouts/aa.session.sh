session_root "~/aa"

if initialize_session "app-academy"; then
  new_window "code"

  select_window 1

  run_cmd "l"
fi

finalize_and_go_to_session
