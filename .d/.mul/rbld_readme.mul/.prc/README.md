
<!-- [[__TOC_]] -->

<a name=top></a>
<a class=top-link hide href=#top>↑</a>

Start Contents Menu

<!-- TOC tocDepth:1..6 chapterDepth:1..6 -->

<!-- /TOC -->

End Contents Menu

<!--
CMND: ufl_stl0 4 /home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt /home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.prc/README.md

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.prc

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/004_d2m

DATE: 29082024025023

DATX: 1724874623
-->


<!-- file:///home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/001.contextus_culturalis.d/001.pref.txt.man -->

[001.pref.txt.man](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/001.contextus_culturalis.d/001.pref.txt.man)



# Contextus culturalis

Эпоха Виндовс характеризуемая тонким юзером довольствующимся графическим интерфейсом с кнопками созданными глобальными корпорациями подходит к концу. Графически итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугабляется падающей квалификацией программистов пытающихся их (системы) поддерживать. Если умножить это пониманием того что корпорации строились на диктате гегимона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Остается Линукс характеризуемый толстым юзером знающим что делает и тонкими программистами представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем). Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще.
    

<!-- file:///home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/002.manifesto.d/001.pef.txt.man -->

[001.pef.txt.man](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/002.manifesto.d/001.pef.txt.man)



# Manifesto
    

<!-- file:///home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/002.manifesto.d/002.walk_to_stone.d/001.pef.txt.man -->

[001.pef.txt.man](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/002.manifesto.d/002.walk_to_stone.d/001.pef.txt.man)



## Gradus in saxa 
    

<!-- file:///home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/002.manifesto.d/002.walk_to_stone.d/002.d/001.txt.man -->

[001.txt.man](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/002.manifesto.d/002.walk_to_stone.d/002.d/001.txt.man)



- Следует доверять только доверенному коду, который тестировал сам, а так же операционной системе
- Следует знать как используется недоверенный код    
    

<!-- file:///home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/003.user_task.d/001.pref.txt.man -->

[001.pref.txt.man](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/003.user_task.d/001.pref.txt.man)



# Задачи юзера
    

<!-- file:///home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/003.user_task.d/002.d/001.txt.man -->

[001.txt.man](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/003.user_task.d/002.d/001.txt.man)



- много локальных репозиториев push в много удаленных репозиториев ( как локальных так и в сети ) \{push many to many}
- перед git add проверить что нет больших файлов (>50Mb) \{flow hook}
- сделать .md файл используя файлы из директории - вставить картинки и т.п. \{file gennerate}
- сделать локальную базу знаний на файлах с поиском по тегам и каталогом .md файл \{knowledge base}
- сделать унифицированые по поведнию и удобные в испльзовании юзером обертки над стандартными утилитами os \{user wrapper}
- обеспечить бэкап с последующим восстановлением файлов и настроек программ \{bcp dpl}
    

<!-- file:///home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.install_stl.d/001.pref.txt.man -->

[001.pref.txt.man](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.install_stl.d/001.pref.txt.man)



# Install stl
    

<!-- file:///home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.install_stl.d/002.inst_stl.code.sh -->

[002.inst_stl.code.sh](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.install_stl.d/002.inst_stl.code.sh)


```sh

#!/bin/bash

# THIS file (beta version) install stl for user

read -p "Enter full path to dir with for clone repo st_rc_d :" PATH_TO_CLONE

cd "${PATH_TO_CLONE}" || {
    echo "in file: inst_st_rc_d.sh : NOTDIR : ${PATH_TO_CLONE} : return 1" >&2
    return 1
}

git clone git@gitflic.ru:legioner9/st_rc_d.git

cp "${PATH_TO_CLONE}"/st_rc_d/.d/.zip/.d.zip "${HOME}"

unzip .d.zip

if ! grep -F 'if [[ -f ~/.d/.rc.d/.st.rc.d/.st.rc ]]; then' <~/.bashrc; then
    echo 'if [[ -f ~/.d/.rc.d/.st.rc.d/.st.rc ]]; then if ! . ~/.d/.rc.d/.st.rc.d/.st.rc ; then echo "in ~/.bashrc : FAIL . ~/.d/.rc.d/.st.rc.d/.st.rc : return 1" >&2;return 1;fi fi' >>~/.bashrc
fi

bash

```

<!-- file:///home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.install_stl.d/003.rm_stl.code.sh -->

[003.rm_stl.code.sh](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.install_stl.d/003.rm_stl.code.sh)


```sh

#!/bin/bash

# THIS file (beta version) delele stl for user

read -rp "Enter full path to dir with for clone repo st_rc_d :" PATH_TO_CLONE

cd "${PATH_TO_CLONE}" || {
    echo "in file: rm_st_rc_d.sh , line=${LINENO} : NOTDIR : ${PATH_TO_CLONE} : return 1" >&2
    return 1
}

rm -rf st_rc_d || {
    echo "in file: rm_st_rc_d.sh , line=${LINENO} : FAILEXEC : 'rm -rf st_rc_d' : be continue"
    read -rp "Delete ${PATH_TO_CLONE}/st_rc_d : Enter to continue"
}

read -rp "Delete from ~/.bashrc code \
starting with 'if [[ -f ~/.d/.rc.d/.st.rc.d/.st.rc ]]; then' \
and restart you shell : \
Enter to continue"



```

<!-- file:///home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.install_stl.d/004.inst_stl_and_data.code.sh -->

[004.inst_stl_and_data.code.sh](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.install_stl.d/004.inst_stl_and_data.code.sh)


```sh

#!/bin/bash

# THIS file (beta version) install stl and data for user

read -p "Enter full path to dir with for clone repo st_rc_d :" PATH_TO_CLONE

cd "${PATH_TO_CLONE}" || {
    echo "in file: inst_st_rc_d_and_data_repo.sh : NOTDIR : ${PATH_TO_CLONE} : return 1" >&2
    return 1
}

git clone git@gitflic.ru:legioner9/st_rc_d.git
# empty DATA to st_rc_d
git clone git@gitflic.ru:legioner9/st_rc_d_data.git

cp "${PATH_TO_CLONE}"/st_rc_d/.d/.zip/.d.zip "${HOME}"

unzip .d.zip

if ! grep -F 'if [[ -f ~/.d/.rc.d/.st.rc.d/.st.rc ]]; then' <~/.bashrc; then
    echo 'if [[ -f ~/.d/.rc.d/.st.rc.d/.st.rc ]]; then if ! . ~/.d/.rc.d/.st.rc.d/.st.rc ; then echo "in ~/.bashrc : FAIL . ~/.d/.rc.d/.st.rc.d/.st.rc : return 1" >&2;return 1;fi fi' >>~/.bashrc
fi

bash


```

<!-- file:///home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.install_stl.d/005.rm_stl_and_data.code.sh -->

[005.rm_stl_and_data.code.sh](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.install_stl.d/005.rm_stl_and_data.code.sh)


```sh

#!/bin/bash

# THIS file (beta version) delele stl and data for user

read -rp "Enter full path to dir with for clone repo st_rc_d :" PATH_TO_CLONE

cd "${PATH_TO_CLONE}" || {
    echo "in file: dpl_st_rc_d.sh , line=${LINENO} : NOTDIR : ${PATH_TO_CLONE} : return 1" >&2
    return 1
}

rm -rf st_rc_d || {
    echo "in file: dpl_st_rc_d.sh , line=${LINENO} : FAILEXEC : 'rm -rf st_rc_d' : be continue"
    read -rp "Delete ${PATH_TO_CLONE}/st_rc_d : Enter to continue"
}

rm -rf st_rc_d_data || {
    echo "in file: dpl_st_rc_d.sh , line=${LINENO} : FAILEXEC : 'rm -rf st_rc_d_data' : be continue"
    read -rp "Delete ${PATH_TO_CLONE}/st_rc_d_data : Enter to continue"
}

read -rp "Delete from ~/.bashrc code \
starting with 'if [[ -f ~/.d/.rc.d/.st.rc.d/.st.rc ]]; then' \
and restart you shell : \
Enter to continue"



```

<!-- file:///home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/901.unsort.d/001.pref.txt.man -->

[001.pref.txt.man](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/901.unsort.d/001.pref.txt.man)



# Libero capitulum
    

<!-- file:///home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/901.unsort.d/002.d/001.pref.txt.man -->

[001.pref.txt.man](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/901.unsort.d/002.d/001.pref.txt.man)



## Bibliotheca Lapidum (stl)

### Lexicon

    stl                 - библиотека первого уровня абстракции от опрационной системы
    stl\<num>           - библиотека \<num> уровня абстракции от опрационной системы
    stlu                - библиотека древа с корнем stl
    os                  - операционная система
    os_cl               - основной компилируемый язык операционной системы 
    os_sl               - основной скриптовый язык операционной системы 
    fn_elem             - элементарная функция 

### Quid est

- Состоит только из доверенного кода
- Определяется только для контекста юзера
- Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
- Последующее за stl древо библиотек - stlu

### Limitations

#### Ограничение сложности

- stl состоит из fn_elem 
- stl\<num> использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
#### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
#### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

#### Тестируемость 

- stl тестируется при каждом запуске оболочки

#### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

#### Ограничение производительности

- Читабельность и простота для юзера будет происходить за счет увеличения времени исплнения stlu функций
- Производительность есть следствие толщины юзера (оптимизация как повод к повышению квалификации)
- Управляемость автоматизации рутинных действий для юзера ценнее скорости выполнения

    



