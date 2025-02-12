session_root "~/repos/settlemyre-messenger"

if initialize_session "settlemyre-messenger"; then
  new_window "code"

  select_window 1
  run_cmd "vim"
fi

finalize_and_go_to_session
