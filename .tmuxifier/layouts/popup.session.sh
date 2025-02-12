session_root "~/other-code/popup-engine"

if initialize_session "popup-engine"; then

  new_window "popup-engine"

  select_window 1

  run_cmd "git pull"
  run_cmd "vim"

  new_window "shopify"
  run_cmd "cd ~/repos/shopify"
  run_cmd "vim"
fi

finalize_and_go_to_session
