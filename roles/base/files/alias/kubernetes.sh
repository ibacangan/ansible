alias k='kubectl'

alias ka='k annotate'

alias kaf='k apply -f'
alias kad='k apply -d'

alias kC='k create'
alias kCcr='k create --dry-run=client -o yaml clusterrole'
alias kCcrb='k create --dry-run=client -o yaml clusterrolebinding'
alias kCcme='k create --dry-run=client -o yaml configmap --from-env'
alias kCcmf='k create --dry-run=client -o yaml configmap --from-file'
alias kCcml='k create --dry-run=client -o yaml configmap --from-literal'
function kCcj() {
    k
    create --dry-run=client -o yaml cronjob --image $1 --schedule "$2" $3
}
alias kCd='k create --dry-run=client -o yaml deployment --image'
alias kCj='k create --dry-run=client -o yaml job --image'
alias kCn='k create --dry-run=client -o yaml namespace'
function kCpdb() {
    k create --dry-run=client -o yaml poddisruptionbudget --selector $1 --min-available $2 $3
}
function kCpdbm() {
    k create --dry-run=client -o yaml poddisruptionbudget --selector $1 --min-available $2 --max-available $3 $4
}
alias kCpc='k create --dry-run=client -o yaml priorityclass'
alias kCq='k create --dry-run=client -o yaml quota'
alias kCr='k create --dry-run=client -o yaml role'
alias kCrb='k create --dry-run=client -o yaml rolebinding'
alias kCste='k create --dry-run=client -o yaml secret generic --from-env'
alias kCstl='k create --dry-run=client -o yaml secret generic --from-literal'
alias kCstf='k create --dry-run=client -o yaml secret generic --from-file'
alias kCstt='k create --dry-run=client -o yaml secret tls'
alias kCstd='k create --dry-run=client -o yaml secret docker-registry'
alias kCsc='k create --dry-run=client -o yaml service clusterip --tcp'
alias kCsl='k create --dry-run=client -o yaml service loadbalancer --tcp'
alias kCse='k create --dry-run=client -o yaml service externalname --tcp'
function kCsn() {
    k create --dry-run=client -o yaml service nodeport --tcp $1 --node-port $2 $3
}
alias kCsa='k create --dry-run=client -o yaml serviceaccount'

alias kd='k describe'
alias kdj='k describe job'
alias kdcj='k describe cronjob'
alias kdcr='k describe clusterrole'
alias kdcrb='k describe clusterrolebinding'
alias kdr='k describe role'
alias kdrb='k describe rolebinding'
alias kdd='k describe deployment'
alias kdn='k describe nodes'
alias kdp='k describe pods'
alias kds='k describe service'
alias kde='k describe endpoints'
alias kdi='k describe ingress'
alias kdr='k describe replicasets'
alias kdcm='k describe configmap'
alias kdss='k describe statefulsets'

alias ke='k explain'

alias kg='k get'
alias kga='k get all'
alias kgaa='k get all --all-namespaces'
alias kge='k get endpoints -owide'
alias kgd='k get deployments -owide'
alias kgds='k get deployments -owide --selector'
alias kgn='k get nodes -owide'
alias kgp='k get pods -owide --show-labels'
alias kgps='k get pods -owide --show-labels --selector'
alias kgs='k get services -owide'
alias kgi='k get ingress'
alias kgcm='k get configmap'
alias kgcm='k get statefulesets'

alias kh='k help'

alias kl='k label'
alias klp='k label pods'
alias kld='k label deployments'

alias kL='k logs -f'

alias krf='k replace -f'

alias ks='k api-resources | sort'

alias kp='k port-forward --address 0.0.0.0'
alias ktn='k top node'
alias ktp='k top pod'

alias kD='k delete'
alias kDl='k delete --selector'
alias kDf='k delete -f'
alias kDp='k delete pod'
alias kDs='k delete service'
alias kDd='k delete deployment'

alias kx='k exec'
alias kxi='k exec -it'
alias kA='k attach'
alias kAi='k attach -it'

alias kc='k config'
alias kcc='kc current-context'
alias kcdc='kc delete-cluster'
alias kcdx='kc delete-context'
alias kcdu='kc delete-user'
alias kcgc='kc get-clusters'
alias kcgx='kc get-contexts'
alias kcgu='kc get-users'
alias kcr='kc rename-context'
alias kcs='kc set'
alias kcsx='kc set-context'
alias kcsxn='kc set-context --namespace'
alias kcsc='kc set-cluster'
alias kcsC='kc set-credentials'
alias kcu='kc unset'
alias kcux='kc use-context'
alias kcv='kc view'
