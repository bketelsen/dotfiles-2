is_bin_in_path starship || sh -c "$(curl -fsSL https://starship.rs/install.sh)"
is_bin_in_path direnv || curl -sfL https://direnv.net/install.sh | bash


# https://stackoverflow.com/questions/6569478/detect-if-executable-file-is-on-users-path
function is_bin_in_path {
  if [[ -n $ZSH_VERSION ]]; then
    builtin whence -p "$1" &> /dev/null
  else  # bash:
    builtin type -P "$1" &> /dev/null
  fi
}


