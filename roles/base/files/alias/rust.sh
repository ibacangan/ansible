a cg=cargo

a cgr='cg run'

a cgu='cg update'

a cgb='cg build'
a cgbr='cgb --release'

function cgt() {
    cargo test $1 -- --show-output
}
function cgtf() {
    cargo test --test $1 -- --show-output
}
function cgti() {
    cargo test $1 -- --ignored
}

a cgn='cg new'
a cgnl='cgn --lib'

a cgc='cg clippy'

a cgf='cg fmt'

a cgwf='cg watch -x fmt'
a cgwr='cg watch -x run'

a cgi='cg install'

a cgin='cg init'

a cgun='cg uninstall'

a cgu='cg update'

a cgs='cg search'
