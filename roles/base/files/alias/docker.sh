a d=docker

a dil='d image ls | sort'
a dip='d image prune -f'
a dir='d image rm'
a di='d inspect'

a dcl='d container ls -a'
a dcp='d container prune -f'
a dcs='d container stop'
a dcss='d container start'
a dcr='d container restart'
function _dcsr() { docker container stop $1; docker container rm $1; }
a dcsr=_dcsr

a dcu='docker-compose up --remove-orphans'
a dcud='docker-compose up --remove-orphans -d'
a dcd='docker-compose down --volumes --remove-orphans'

a dp='d pull'
a dpp='d pull --tls-verify=false'
a dps='d push --tls-verify=false --format=docker --creds'

a dl='d logs -f'

a dup=docker_update

a dr='d run --rm'
a drd='d run --rm -d --name'
a dri='d run --rm -it'
a drin='d run --rm -it --name'

a db='d build --rm -t'

a dvl='d volume ls'
a dvc='d volume create'
a dvr='d volume rm'
a dvp='d volume prune'
a dvi='d volume inspect'

a de='d exec -it'

a dnl='d network ls'
a dnc='d network create'
a dnco='d network create --driver=overlay --attachable'
a dnr='d network rm'
a dni='d network inspect'
a dnp='d network prune'
a dnn='d network connect'
a dnd='d network disconnect'
