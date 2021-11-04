is_bin_in_path starship || sh -c "$(curl -fsSL https://starship.rs/install.sh)"
is_bin_in_path direnv || curl -sfL https://direnv.net/install.sh | bash


update() {
    is_bin_in_path apt-get && sudo apt update || echo "skipping apt"
    is_bin_in_path apt-get && sudo apt upgrade -y
    is_bin_in_path brew && brew update || echo "skipping brew"
    is_bin_in_path brew && brew upgrade
    is_bin_in_path nix && nix-env -u || echo "skipping nix"
    is_bin_in_path flatpak && flatpak update || echo "skipping flatpak"
}
# https://stackoverflow.com/questions/6569478/detect-if-executable-file-is-on-users-path
function is_bin_in_path {
  if [[ -n $ZSH_VERSION ]]; then
    builtin whence -p "$1" &> /dev/null
  else  # bash:
    builtin type -P "$1" &> /dev/null
  fi
}


