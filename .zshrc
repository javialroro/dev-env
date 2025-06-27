# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf)

alias vim='nvim'
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
autoload -Uz compinit
compinit

# Hacer que Tab complete
bindkey '^I' autosuggest-accept
# pnpm
export PNPM_HOME="/home/javialroro/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#addToPath function thanks Prime


addToPath() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$PATH:$1
    fi
}


# Adding to PATH

addToPath $HOME/.local/scripts


# Setting xdg config home
export XDG_CONFIG_HOME="$HOME/.config"

# Ejecutar ready-tmux solo si no estás dentro de tmux y la shell es interactiva
if [[ -z "$TMUX" && $- == *i* ]]; then
    ready-tmux
fi


# Ctrl+T ya tiene función, usar Alt+T (M-t)
autoload -U add-zsh-hook

# Función para llamar tmux-sessionizer
run_tmux_sessionizer() {
  tmux-sessionizer
  zle reset-prompt
}

# Registra la función como widget de zle
zle -N run_tmux_sessionizer

bindkey -s ^f "tmux-sessionizer\n"

