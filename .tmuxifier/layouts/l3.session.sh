session_root "~/repos/create-l3-app"

if initialize_session "create-l3-app"; then
  new_window "code"

  select_window 1

  run_cmd "git pull"
  run_cmd "vim"
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
