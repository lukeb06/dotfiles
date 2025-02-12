session_root "~/settle/admin-dashboard"

if initialize_session "admin-dashboard"; then

  new_window "code"

  select_window 1

  run_cmd "git pull"
  run_cmd "vim"

  new_window "config.json"
  run_cmd "cons"
  run_cmd "vim ~/CPSQL.1/business_automations/config.json"

  select_window 1
fi

finalize_and_go_to_session
