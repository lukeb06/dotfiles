session_root "~/dotfiles"

if initialize_session "dotfiles"; then
  new_window "code"

  select_window 1

  run_cmd "git pull"
  run_cmd "zshrc"
fi

finalize_and_go_to_session
