#!/bin/bash


wget -P ${HOME} https://github.com/legioner9/st_rc_d/raw/master/.d/.zip/.st.rc.d.zip
cd ${HOME}
unzip .st.rc.d.zip

wget -P ${HOME} https://github.com/legioner9/st_rc_d/raw/master/.d/.zip/.st_rc_d.rc.zip
cd ${HOME}
unzip .st_rc_d.rc.zip

echo "path/to/repo/st_rc_d"

wget -P ${HOME} https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.zip%2F.st.rc.d.zip&inline=false
wget -P ${HOME} https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.zip%2F.st_rc_d.rc.zip&inline=false 