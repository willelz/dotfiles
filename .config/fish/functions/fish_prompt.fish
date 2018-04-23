function fish_prompt
  if [ $status -eq 0 ]
    set status_face (set_color green)"(*'-') < "
  else
    set status_face (set_color blue)"(*;-;) < "
  end

  set -l git_dir (git rev-parse --git-dir 2> /dev/null)
  set prompt (set_color yellow)(prompt_pwd)

  if test -n "$git_dir"
    echo
    echo $prompt [(parse_git_branch)]
    echo $status_face
  else
    echo
    echo $prompt
    echo $status_face
  end
end
