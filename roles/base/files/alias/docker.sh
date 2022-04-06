alias d=docker

alias dil='d image ls | sort'
alias dip='d image prune -f'
alias dir='d image rm'
alias di='d inspect'

alias dcl='d container ls -a'
alias dcp='d container prune -f'
alias dcs='d container stop'
alias dcss='d container start'
alias dcr='d container restart'
function _dcsr() { docker container stop $1; docker container rm $1; }
alias dcsr=_dcsr

alias dcu='docker-compose up --remove-orphans'
alias dcud='docker-compose up --remove-orphans -d'
alias dcd='docker-compose down --volumes --remove-orphans'

alias dp='d pull'
alias dpp='d pull --tls-verify=false'
alias dps='d push --tls-verify=false --format=docker --creds'

alias dl='d logs -f'

alias dup=docker_update

alias dr='d run --rm'
alias drd='d run --rm -d --name'
alias dri='d run --rm -it'
alias drin='d run --rm -it --name'

alias db='d build --rm -t'

alias dvl='d volume ls'
alias dvc='d volume create'
alias dvr='d volume rm'
alias dvp='d volume prune'
alias dvi='d volume inspect'

alias de='d exec -it'

alias dnl='d network ls'
alias dnc='d network create'
alias dnco='d network create --driver=overlay --attachable'
alias dnr='d network rm'
alias dni='d network inspect'
alias dnp='d network prune'
alias dnn='d network connect'
alias dnd='d network disconnect'
