# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

###################CUSTOM CONFIGS##############################################################
# Removing battery percentage from wacom devices (it always shows 0%)
SPACESHIP_BATTERY_SHOW="false"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fastfetch

alias restart_plasma="systemctl --user restart plasma-plasmashell.service"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/doug/.dart-cli-completion/zsh-config.zsh ]] && . /home/doug/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
