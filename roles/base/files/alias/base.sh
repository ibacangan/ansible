alias zz='source ~/.zshrc'
alias bb='source ~/.bashrc'

alias rr='rm --recursive --force'

alias qq=exit

alias ag='alias | rg -i'
alias hh='history | rg -i'

alias watch='watch --color '

alias md='mkdir -p'
mcd() {
  mkdir -p $1 && cd $1
}

alias boot='sudo reboot -h 0'
alias shut='sudo shutdown -h 0'

alias l="ls --almost-all --classify --human-readable -lt --color"
alias le="less --ignore-case --raw-control-chars --squeeze-blank-lines"

alias px='ps aux'
alias df='df --human-readable --inodes'
alias du1='du --max-depth 1 --human-readable ./ | sort --human-readable'

# TODO: improve
alias kp='keepass2 /workspace/personal/python/install/qq.kdbx &>/dev/null &'

alias rsync='rsync -av --progress $1 $2'

search_alias() {
  [[ -z $1 ]] && echo no input to search && return 1

  alias=$(alias $1)
  search_dir=/workspace/personal/infra/setup/roles/alias/files/
  alias_file=""

  if [[ -z $alias ]]; then # search as plain alias definition
    alias_file=$(rg -l "alias $1[a-zA-Z0-9]*=" $search_dir)
  fi

  if [[ -z $alias ]]; then # search as function
    alias_file=$(rg -l "function $1[a-zA-Z0-9]*()" $search_dir)
  fi

  if [[ -z $alias ]]; then # make a plain generic search
    alias_file=$(rg -l "$1" $search_dir)
  fi

  if [[ -n $alias ]]; then
    echo "found $1 as an alias"
    echo "$alias"

  elif [[ -n $alias_file ]]; then
    echo "found $1 in an alias definition file"
    alias_file=$(echo $alias_file | mapfile)
    for file in $alias_file; do
      bat -P $file
    done

  else
    echo "$1 not found as an alias or in any alias file"

  fi
}
