session_root "~/repos/repo-update"

if initialize_session "repo-update"; then
  new_window "code"

  select_window 1

  run_cmd "git pull"
  run_cmd "vim"
fi

finalize_and_go_to_session
