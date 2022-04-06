a mp=multipass
a mpl='m list'
a mpd='m delete'
a mpp='m purge'
a mpf='m find'
a mpe='m exec'
a mpi='m info'
a mpr='m restart'
a mps='m start'
a mpS='m stop'
a mpsh='m shell'
a mph='m help'

a mpl1='m launch -c 1 -m 2G -d 10G -n'
a mpl2='m launch -c 2 -m 4G -d 10G -n'

function mplx() {
    mp launch -n $1 -c $2 -m $3 -d $4
}
