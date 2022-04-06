a an=ansible

a agg=ansible-galaxy
a agh='agg --help'
a agi='agg role init --offline'

a ad=ansible-doc
a adl='ansible-doc -l'

a ap=ansible-playbook
a apl='ansible-playbook -i localhosts'
a aplv='ansible-playbook -i localhosts --vault-password-file .key'
a aph='ansible-playbook --help'

a av=ansible-vault
a avh='av --help'
a ave='av encrypt'
a avs='av encrypt_string'
a avd='av decrypt'

function avef() {
    ansible-vault encrypt $1 --vault-password-file $2
}

function avEf() {
    ansible-vault encrypt_string $1 --vault-password-file $2
}

function avdf() {
    ansible-vault decrypt $1 --vault-password-file $2
}
