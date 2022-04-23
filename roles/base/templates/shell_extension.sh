ZSH_THEME="fino-time"
source $ZSH/oh-my-zsh.sh

alias a=alias
a e=export

e TF_PLUGIN_CACHE_DIR={{ system_directory }}/hashicorp
mkdir -p $TF_PLUGIN_CACHE_DIR

e LOCAL_BIN=~/.local/bin
e BASE_PATH=$PATH:$LOCAL_BIN:{{ script_directory }}
e PATH=$BASE_PATH

. refresh_env
