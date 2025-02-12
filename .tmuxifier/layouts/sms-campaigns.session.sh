session_root "~/repos/sms-campaigns"

if initialize_session "sms-campaigns"; then

  new_window "code"

  select_window 1

  run_cmd "git pull"
  run_cmd "vim"

fi

finalize_and_go_to_session
