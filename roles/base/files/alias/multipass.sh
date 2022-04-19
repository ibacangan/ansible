alias mp=multipass
alias mpl='m list'
alias mpd='m delete'
alias mpp='m purge'
alias mpf='m find'
alias mpe='m exec'
alias mpi='m info'
alias mpr='m restart'
alias mps='m start'
alias mpS='m stop'
alias mpsh='m shell'
alias mph='m help'

alias mpl1='m launch -c 1 -m 2G -d 10G -n'
alias mpl2='m launch -c 2 -m 4G -d 10G -n'

mplx() {
    mp launch -n $1 -c $2 -m $3 -d $4
}
