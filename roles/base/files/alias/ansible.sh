alias an=ansible

alias agg=ansible-galaxy
alias agh='agg --help'
alias agi='agg role init --offline'

alias ad=ansible-doc
alias adl='ansible-doc -l'

alias ap=ansible-playbook
alias apl='ansible-playbook -i localhosts'
alias aplv='ansible-playbook -i localhosts --vault-password-file .key'
alias aph='ansible-playbook --help'

alias av=ansible-vault
alias avh='av --help'
alias ave='av encrypt'
alias avs='av encrypt_string'
alias avd='av decrypt'

function avef() {
    ansible-vault encrypt $1 --vault-password-file $2
}

function avEf() {
    ansible-vault encrypt_string $1 --vault-password-file $2
}

function avdf() {
    ansible-vault decrypt $1 --vault-password-file $2
}
