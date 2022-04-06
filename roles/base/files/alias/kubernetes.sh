a k='kubectl'

a ka='k annotate'

a kaf='k apply -f'
a kad='k apply -d'

a kC='k create'
a kCcr='k create --dry-run=client -o yaml clusterrole'
a kCcrb='k create --dry-run=client -o yaml clusterrolebinding'
a kCcme='k create --dry-run=client -o yaml configmap --from-env'
a kCcmf='k create --dry-run=client -o yaml configmap --from-file'
a kCcml='k create --dry-run=client -o yaml configmap --from-literal'
function kCcj() {
    k
    create --dry-run=client -o yaml cronjob --image $1 --schedule "$2" $3
}
a kCd='k create --dry-run=client -o yaml deployment --image'
a kCj='k create --dry-run=client -o yaml job --image'
a kCn='k create --dry-run=client -o yaml namespace'
function kCpdb() {
    k create --dry-run=client -o yaml poddisruptionbudget --selector $1 --min-available $2 $3
}
function kCpdbm() {
    k create --dry-run=client -o yaml poddisruptionbudget --selector $1 --min-available $2 --max-available $3 $4
}
a kCpc='k create --dry-run=client -o yaml priorityclass'
a kCq='k create --dry-run=client -o yaml quota'
a kCr='k create --dry-run=client -o yaml role'
a kCrb='k create --dry-run=client -o yaml rolebinding'
a kCste='k create --dry-run=client -o yaml secret generic --from-env'
a kCstl='k create --dry-run=client -o yaml secret generic --from-literal'
a kCstf='k create --dry-run=client -o yaml secret generic --from-file'
a kCstt='k create --dry-run=client -o yaml secret tls'
a kCstd='k create --dry-run=client -o yaml secret docker-registry'
a kCsc='k create --dry-run=client -o yaml service clusterip --tcp'
a kCsl='k create --dry-run=client -o yaml service loadbalancer --tcp'
a kCse='k create --dry-run=client -o yaml service externalname --tcp'
function kCsn() {
    k create --dry-run=client -o yaml service nodeport --tcp $1 --node-port $2 $3
}
a kCsa='k create --dry-run=client -o yaml serviceaccount'

a kd='k describe'
a kdj='k describe job'
a kdcj='k describe cronjob'
a kdcr='k describe clusterrole'
a kdcrb='k describe clusterrolebinding'
a kdr='k describe role'
a kdrb='k describe rolebinding'
a kdd='k describe deployment'
a kdn='k describe nodes'
a kdp='k describe pods'
a kds='k describe service'
a kde='k describe endpoints'
a kdi='k describe ingress'
a kdr='k describe replicasets'
a kdcm='k describe configmap'
a kdss='k describe statefulsets'

a ke='k explain'

a kg='k get'
a kga='k get all'
a kgaa='k get all --all-namespaces'
a kge='k get endpoints -owide'
a kgd='k get deployments -owide'
a kgds='k get deployments -owide --selector'
a kgn='k get nodes -owide'
a kgp='k get pods -owide --show-labels'
a kgps='k get pods -owide --show-labels --selector'
a kgs='k get services -owide'
a kgi='k get ingress'
a kgcm='k get configmap'
a kgcm='k get statefulesets'

a kh='k help'

a kl='k label'
a klp='k label pods'
a kld='k label deployments'

a kL='k logs -f'

a krf='k replace -f'

a ks='k api-resources | sort'

a kp='k port-forward --address 0.0.0.0'
a ktn='k top node'
a ktp='k top pod'

a kD='k delete'
a kDl='k delete --selector'
a kDf='k delete -f'
a kDp='k delete pod'
a kDs='k delete service'
a kDd='k delete deployment'

a kx='k exec'
a kxi='k exec -it'
a kA='k attach'
a kAi='k attach -it'

a kc='k config'
a kcc='kc current-context'
a kcdc='kc delete-cluster'
a kcdx='kc delete-context'
a kcdu='kc delete-user'
a kcgc='kc get-clusters'
a kcgx='kc get-contexts'
a kcgu='kc get-users'
a kcr='kc rename-context'
a kcs='kc set'
a kcsx='kc set-context'
a kcsxn='kc set-context --namespace'
a kcsc='kc set-cluster'
a kcsC='kc set-credentials'
a kcu='kc unset'
a kcux='kc use-context'
a kcv='kc view'
