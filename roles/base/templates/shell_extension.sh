alias a=alias
a e=export

e TF_PLUGIN_CACHE_DIR=/workspace/tmp/terraform_cache
e LOCAL_BIN=~/.local/bin
e BASE_PATH=$PATH:$LOCAL_BIN:{{ script_directory }}
e PATH=$BASE_PATH

for alias_file in {{ alias_directory }}/*; do
  source $alias_file
done

. refresh_env