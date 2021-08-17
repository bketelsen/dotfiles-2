
if [[ -a /opt/homebrew/bin ]]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [[ -a /home/linuxbrew/.linuxbrew/bin ]]; then
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

export ZPROFILE_LOADED=1
