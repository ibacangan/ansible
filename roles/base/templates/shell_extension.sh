alias a=alias
a e=export

e TF_PLUGIN_CACHE_DIR=/workspace/tmp/terraform_cache
e LOCAL_BIN=~/.local/bin
e BASE_PATH=$PATH:$LOCAL_BIN:{{ script_directory }}
e PATH=$BASE_PATH

. refresh_env

# add time to zsh prompt
echo $SHELL | grep -q zsh && PS1="%D{%L:%M:%S} $PS1"