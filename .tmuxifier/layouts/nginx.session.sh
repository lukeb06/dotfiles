session_root "~/settle/nginx"

if initialize_session "nginx"; then

  new_window "code"

  select_window 1

  run_cmd "git pull"
  run_cmd "vim"

fi

finalize_and_go_to_session
