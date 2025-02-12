session_root "~/lukebarrier.info/root"

if initialize_session "lukebarrier-info"; then
  new_window "code"

  select_window 1

  run_cmd "git pull"
  run_cmd "vim"

  new_window "server"
  run_cmd "sshl"
fi

finalize_and_go_to_session
