#!/bin/bash

# . ${HOME}/REPOBARE/_repo/st_rc_d/.tmp/s2f.sh "^' .*" "@" ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.boot.flumen.tml.puml


eval "sed -i 's|^'\'' .*||g' ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.boot.flumen.tml.puml"
eval "sed -i 's|^'\'n||g' ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.boot.flumen.tml.puml"

cat ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.boot.flumen.tml.puml