a jc='journalctl'
a jcb='journalctl --boot'
a jcd='journalctl --dmesg'
a jcs='journalctl --system'
a jcu='journalctl --user'
a jcfu='journalctl --follow --unit'
a jcdu='journalctl --disk-usage'
a jcr='journalctl --rotate'
a jcg='journalctl --grep'

function jcug() {
    journalctl --user $1 --grep $2
}