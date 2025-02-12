session_root "~/repos/shopify-prod"

if initialize_session "shopify"; then
  new_window "retail"

  select_window 1

  run_cmd "git pull"
  run_cmd "vim"

  new_window "commercial"
  run_cmd "cd ~/repos/shopify-comm"
  run_cmd "git pull"
  run_cmd "vim"
fi

finalize_and_go_to_session
