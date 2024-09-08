
<!-- [[__TOC_]] -->

<a name=top></a>
<a class=top-link hide href=#top>↑</a>

Start Contents Menu

<!-- TOC tocDepth:1..6 chapterDepth:1..6 -->

- [Ave Marcus tshemsedinov](#ave-marcus-tshemsedinov)
  - [Gratia](#gratia)
- [Manifesto](#manifesto)
  - [Gradus in saxa](#gradus-in-saxa)
- [Sfondo](#sfondo)
  - [Contextus culturalis](#contextus-culturalis)
  - [Fuoco dentro](#fuoco-dentro)
- [Quid possum facere](#quid-possum-facere)
- [Bibliotheca Lapidum - Theoria](#bibliotheca-lapidum---theoria)
  - [Lexicon](#lexicon)
  - [Quid est](#quid-est)
  - [Limitations](#limitations)
    - [Ограничение сложности stl](#ограничение-сложности-stl)
    - [Требования к fn\_elem](#требования-к-fn_elem)
    - [Требования к os\_sl](#требования-к-os_sl)
    - [Тестируемость](#тестируемость)
    - [Расширяемость](#расширяемость)
    - [Производительность](#производительность)
  - [Genera et mores](#genera-et-mores)
- [Bibliotheca Lapidum - Usu](#bibliotheca-lapidum---usu)
  - [Deminutio abstractionis](#deminutio-abstractionis)
    - [Basic principiis](#basic-principiis)
    - [Basic technologiae](#basic-technologiae)
- [Quid est hic](#quid-est-hic)
  - [STL](#stl)
- [Install stl](#install-stl)
- [Libero capitulum](#libero-capitulum)

<!-- /TOC -->

End Contents Menu

<!--
CMND: ufl_stl0 4 /.d/.mul/rbld_readme.mul/.cnt /.d/.mul/rbld_readme.mul/.prc/README.md

PPWD: /.d/.mul/rbld_readme.mul/.prc

FLOW: /REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/004_d2m

DATE: 09092024012703

DATX: 1725820023
-->


[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/001.01.ave_marcus.d/001.pref.txt.man)



# Ave Marcus tshemsedinov

Да здравствует Марк tshemsedinov* (лат.)

*) Cuius fides est lux

    

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.man)



## Gratia

Благодарность (лат.)

- vitlav
    

[001.pef.txt.man](/.d/.mul/rbld_readme.mul/.cnt/002.01.manifesto.d/001.pef.txt.man)



# Manifesto
    
Явление миру (лат.)

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.man](/.d/.mul/rbld_readme.mul/.cnt/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.man)



## Gradus in saxa 

Шаги по камням (лат.)
    

[001.txt.man](/.d/.mul/rbld_readme.mul/.cnt/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.man)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/002.02.sfondo.d/001.pref.txt.man)



# Sfondo

Фон (лат.)

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.man)



## Contextus culturalis

Культурологический контекст (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.man)



## Fuoco dentro

Огонь внутри (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/003.quid_possum_facere.d/001.pref.txt.man)



# Quid possum facere
    
Что я могу сделать (лат.)

[001.txt.man](/.d/.mul/rbld_readme.mul/.cnt/003.quid_possum_facere.d/002.d/001.txt.man)





- Демонстрация возможностей stlu
    - данный README.md динамически создается из директории /.d/.mul/rbld_readme.mul/.cnt
      - локальная версия README.md /.d/.mul/rbld_readme.mul/.prc/README.md
    - много локальных репозиториев push в много удаленных репозиториев ( как локальных так и в сети ) \{push many to many}
    - перед git add проверить что нет больших файлов (>50Mb) \{flow hook}
    - сделать .md файл используя файлы из директории - вставить картинки и т.п. \{file generate}
    - сделать локальную базу знаний на файлах с поиском по тегам и каталогом .md файл \{knowledge base}
    - сделать унифицированые по поведнию и удобные в испльзовании юзером обертки над стандартными утилитами os \{user wrapper}
    - обеспечить бэкап с последующим восстановлением файлов и настроек программ \{bcp dpl}
    - вставка сниппетов в код \{insert snippet}
 
    

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/001.pref.txt.man)



# Bibliotheca Lapidum - Theoria
    
Библиотека камней - Теория (лат.)

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.man)



## Lexicon

Словарь (лат.)

    stl                 - библиотека первого уровня абстракции от опрационной системы
    stlu                - библиотека из древа с корнем stl

    fn_stl              - функция библиотеки stl
    fn_stlu             - функция библиотеки stlu
    fn_name             - имя функции
    fn_file             - имя файла в котором определена функция
    fn_dir              - путь к директории содержащей fn_file и служебные файлы к нему
    
    os                  - операционная система
    os_cl               - основной компилируемый язык операционной системы 
    os_sl               - основной скриптовый язык операционной системы 
    fn_elem             - элементарная функция написаная на os_cl вызываемая os_sl с аргументами и по имени 

    upath               - тип указания пути файловой системы
    

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/003.quid_est.d/001.pref.txt.man)



## Quid est

Что это (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.man)



## Limitations

Ограничения (лат.)

### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.man)



## Genera et mores

Типы и поведение (лат.)

- Типы
  - Гитхуки в репозитории
    - файлы процедур и данных вызываемые функциями обертками над git
  - Арбструктуры
    - Структуры поддерикторий предназначенные для поиска по тегам и строке основного содержания
  - upath 
    - строка являющаяся '@', относительным либо абсолютным путем
    
- Поведение
  - информация и ее обработка связаны только через интерфейсы
  - создавать регулярные структуры только генерацией с параметрами - копипаст недоверенная операция 

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/005.bibliotheca_lapidum_usu.d/001.pref.txt.man)



# Bibliotheca Lapidum - Usu

Библиотека камней - Практика (лат.)  

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.man)



## Deminutio abstractionis 

Понижение абстракций (лат.)
    

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.man)



### Basic principiis

Базовые принципы (лат.)

- stlu : описание поведения и интерфейсов:
  - при возникновении ошибки генерируется stack error который должен содержать:
    - описание восхождения ошибки от системного вызова до пользовательского файла его вызвавшего в виде списка
    - файл в котором сгенерирована ошибка
    - номер строки где произошла ошибка
    - возвращаемый код ошибки
    - краткое описание ошибки 

- fn_stlu : описание поведения и интерфейсов:
  - все файлы с функциями хранятся в однотипных поддиректориях одной директории
  - содержит только одну функцию с именем совпадающем с именем файла без расширений  
  - содержит только логику состоящую в использовании fn_elem, fn_stl и запуска процедур хрнящихся в файлах
    - если логика состоит в обработке вариантов использования однотипных процедур или наборов данных - все процедуры или наборы данных для выбора следует хранить в отдельных директориях    
  - содержит следующие однострочные описательные данные себя самой для текстового поиска начинающиеся с:
    - MAIN:
      - краткое описание работы функции состоящее в упоминании аргументов и действий с их участием
    - TAGS:
      - слова начинающиеся с @ через пробел и фиксирующие ключевые определения 
  - содержит следующие пояснения себя самой начинающиеся с:
    - ARGS: 
      - перечисление всех возможных вариантов наборов аргументов и их значения в функции при стандартном вызове
    - CNTL:
      - перечисление всех возможных специальных аргументов определяющих специальное поведение:
        - [-h] возвращает текст - описывает общее поведение и внутреннее устройство
        - [_go or _e] вызывает в редактор кода тело функции
        - [_tst or _t] вызывает функцию в стандартном тестовом контексте и тестовыми параметрами, возвращает:
          - return 1 : if test NOT PASS
          - return 0 : if test IS PASS
        - [_flow_1] (demo run) вызывает функцию в произвольном пользовательском контексте и произвольными параметрами 
    - EXAM:
      - пример вызова функции
  - аргументы функции
    - если аргумент обязателен и необходимо передать пустое значение - следует указать '@'



[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/003.basic_technologiae.txt.d/001.pref.txt.man)



### Basic technologiae

Базовые технологии (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/001.pref.txt.man)



# Quid est hic

Что здесь есть (лат.)
    

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.pref.txt.man)



## STL

Состав библиотеки STL
    

[002.files_stl.txt.man](/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.txt.man)




[_abs_path](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_abs_path.sh)

- NAME: _abs_path
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_abs_path.sh
- MAIN: _abs_path :: echo abs_path if $1 PWD $2 ptr to upath or @ instead empty $2
- TAGS: 

------------------------------------------------


[_arb_up](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_arb_up.sh)

- NAME: _arb_up
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_arb_up.sh
- MAIN: _arb_up :: 
- TAGS: 

------------------------------------------------


[_bcp_strc](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_bcp_strc.sh)

- NAME: _bcp_strc
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_bcp_strc.sh
- MAIN: _bcp_strc :: bcp mirror ~/.d/.rc.d/.st.rc.d , ~/.d/.rc.d/.<name_repo>.rc to /.d/.zip
- TAGS: 

------------------------------------------------


[_bm7z](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_bm7z.sh)

- NAME: _bm7z
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_bm7z.sh
- MAIN: _bm7z :: cr multi-valume arh from src_file_upath $1 with value (mb) $2 to dist_dir_upath $3 as dir 'basename src_file_upath'.bm7z
- TAGS: 

------------------------------------------------


[_color_self](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_color_self.sh)

- NAME: _color_self
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_color_self.sh
- MAIN: _color_self :: 
- TAGS: 

------------------------------------------------


[_c_up](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_c_up.sh)

- NAME: _c_up
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_c_up.sh
- MAIN: _c_up :: exec rec in dir nfile with ext=.sh
- TAGS: 

------------------------------------------------


[_d2ae](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_d2ae.sh)

- NAME: _d2ae
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_d2ae.sh
- MAIN: _d2ae :: like ls (NOT uprev) $1 (@|path) @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_d2Ae](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_d2Ae.sh)

- NAME: _d2Ae
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_d2Ae.sh
- MAIN: _d2Ae :: like ls (-A, NOT uprev) $1 (@|path) @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_d2e](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_d2e.sh)

- NAME: _d2e
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_d2e.sh
- MAIN: _d2e :: like ls (uprev) $1 (@|path) @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_d2f_marg](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_d2f_marg.sh)

- NAME: _d2f_marg
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_d2f_marg.sh
- MAIN: _d2f_marg :: $1 file result (3d arg _d2f) $2 0 or num  or '-h' (menu from st.d/.mul/_d2f_marg/x.h) flow from /.d/.rc.d/.st.rc.d/.st.d/.mul/_d2f_marg (1d arg _d2f: x.flow/x.insert.d, 2d arg _d2f: x.flow/x.tml )
- TAGS: 

------------------------------------------------


[_d2f](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_d2f.sh)

- NAME: _d2f
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_d2f.sh
- MAIN: _d2f :: $1 dir with <reciver>.insert files $2 .tml file with {{<reciver>}} $3 path to file result
- TAGS: 

------------------------------------------------


[_d2mm](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_d2mm.sh)

- NAME: _d2mm
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_d2mm.sh
- MAIN: _d2mm :: choice file from dir : $1 upath dir $2 ptr_result $3 num (0|num_menu)
- TAGS: 

------------------------------------------------


[_date](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_date.sh)

- NAME: _date
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_date.sh
- MAIN: _date :: 
- TAGS: 

------------------------------------------------


[_dd2ae](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dd2ae.sh)

- NAME: _dd2ae
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dd2ae.sh
- MAIN: _dd2ae :: like ls (NOT uprev) (only dir) $1 (@|path) @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_dd2Ae](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dd2Ae.sh)

- NAME: _dd2Ae
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dd2Ae.sh
- MAIN: _dd2Ae :: like ls (-A, NOT uprev) (only dir) $1 (@|path) @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_dd2e](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dd2e.sh)

- NAME: _dd2e
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dd2e.sh
- MAIN: _dd2e :: like ls (uprev) (only dir) $1 (@|path) @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_ddr2ae](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_ddr2ae.sh)

- NAME: _ddr2ae
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_ddr2ae.sh
- MAIN: _ddr2ae :: recuce _dd2e : $1 like ls (NOT uprev) (only dir) (@|path) @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_ddr2Ae](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_ddr2Ae.sh)

- NAME: _ddr2Ae
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_ddr2Ae.sh
- MAIN: _ddr2Ae :: recuce _dd2e : $1 like ls (-A, NOT uprev) (only dir) (@|path) @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_ddr2e](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_ddr2e.sh)

- NAME: _ddr2e
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_ddr2e.sh
- MAIN: _ddr2e :: recuce _dd2e : $1 like ls (uprev) (only dir) (@|path) @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_df2ae](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_df2ae.sh)

- NAME: _df2ae
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_df2ae.sh
- MAIN: _df2ae :: like ls (NOT uprev) (only file) $1 (@|path)  @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_df2Ae](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_df2Ae.sh)

- NAME: _df2Ae
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_df2Ae.sh
- MAIN: _df2Ae :: like ls (-A, NOT uprev) (only file) $1 (@|path)  @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_df2e](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_df2e.sh)

- NAME: _df2e
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_df2e.sh
- MAIN: _df2e :: like ls (uprev) (only file) $1 (@|path)  @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_dfr2ae](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dfr2ae.sh)

- NAME: _dfr2ae
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dfr2ae.sh
- MAIN: _dfr2ae :: 
- TAGS: 

------------------------------------------------


[_dfr2Ae](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dfr2Ae.sh)

- NAME: _dfr2Ae
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dfr2Ae.sh
- MAIN: _dfr2Ae :: 
- TAGS: 

------------------------------------------------


[_dfr2e](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dfr2e.sh)

- NAME: _dfr2e
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dfr2e.sh
- MAIN: _dfr2e :: recuce _df2e : $1 like ls (only file) (@|path) @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_dig2base](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dig2base.sh)

- NAME: _dig2base
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dig2base.sh
- MAIN: _dig2base :: digit $1 to diggit on base $2 
- TAGS: 

------------------------------------------------


[_dig_ibase2obase](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dig_ibase2obase.sh)

- NAME: _dig_ibase2obase
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dig_ibase2obase.sh
- MAIN: _dig_ibase2obase :: digit $1 in ibase $2  to diggit on obase $3
- TAGS: 

------------------------------------------------


[_dis_git](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dis_git.sh)

- NAME: _dis_git
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dis_git.sh
- MAIN: _dis_git :: if diss with git HEAD in dir or pwd return 0 else 1 
- TAGS: @git @diss

------------------------------------------------


[_dpl_strc](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dpl_strc.sh)

- NAME: _dpl_strc
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dpl_strc.sh
- MAIN: _dpl_strc :: 
- TAGS: 

------------------------------------------------


[_dr2ae](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dr2ae.sh)

- NAME: _dr2ae
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dr2ae.sh
- MAIN: _dr2ae :: recuce _d2e : like ls $1 (NOT uprev) (@|path) @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_dr2Ae](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dr2Ae.sh)

- NAME: _dr2Ae
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dr2Ae.sh
- MAIN: _dr2Ae :: recuce _d2e : like ls $1 (-A, NOT uprev) (@|path) @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_dr2e](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dr2e.sh)

- NAME: _dr2e
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dr2e.sh
- MAIN: _dr2e :: recuce _d2e : like ls $1 (uprev) (@|path) @ if path='' [, $2 .ext]
- TAGS: 

------------------------------------------------


[_dSYd](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dSYd.sh)

- NAME: _dSYd
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_dSYd.sh
- MAIN: _dSYd :: rsync mirror dir_src path $1 to dir_dist path $2 
- TAGS: 

------------------------------------------------


[_edir](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_edir.sh)

- NAME: _edir
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_edir.sh
- MAIN: _edir :: 
- TAGS: 

------------------------------------------------


[_edit](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_edit.sh)

- NAME: _edit
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_edit.sh
- MAIN: _edit :: 
- TAGS: 

------------------------------------------------


[_elib](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_elib.sh)

- NAME: _elib
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_elib.sh
- MAIN: _elib :: 
- TAGS: 

------------------------------------------------


[_eval](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_eval.sh)

- NAME: _eval
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_eval.sh
- MAIN: _eval :: eval string with delim 
 from stdin or < file or $1 file or << here doc or <<< here string
- TAGS: 

------------------------------------------------


[_f2ad](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_f2ad.sh)

- NAME: _f2ad
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_f2ad.sh
- MAIN: _f2ad :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
- TAGS: 

------------------------------------------------


[_f2d](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_f2d.sh)

- NAME: _f2d
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_f2d.sh
- MAIN: _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
- TAGS: 

------------------------------------------------


[_f2e](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_f2e.sh)

- NAME: _f2e
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_f2e.sh
- MAIN: _f2e :: if [[ {str0:1} != # ]] ; eval echo str from file $1 
- TAGS: 

------------------------------------------------


[_f2f](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_f2f.sh)

- NAME: _f2f
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_f2f.sh
- MAIN: _f2f :: insert $1 file after str $2 in file $3
- TAGS: 

------------------------------------------------


[_f2mm](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_f2mm.sh)

- NAME: _f2mm
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_f2mm.sh
- MAIN: _f2mm :: menu $1: file with lst $2: ptr result $3 0 or num menu
- TAGS: 

------------------------------------------------


[_flur](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_flur.sh)

- NAME: _flur
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_flur.sh
- MAIN: _flur :: treat stdin accoding menu with treat files
- TAGS: 

------------------------------------------------


[_fn2var](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_fn2var.sh)

- NAME: _fn2var
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_fn2var.sh
- MAIN: _fn2var :: $1=_do : replace _fn to ${_fn_stf} in dir strcl, $1=_n : 
- TAGS: 

------------------------------------------------


[_fnCMPenv](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_fnCMPenv.sh)

- NAME: _fnCMPenv
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_fnCMPenv.sh
- MAIN: _fnCMPenv :: compare env /.d/.rc.d/.st.rc.d/.st.config.d/fn_name.sh with real /.d/.rc.d/.st.rc.d/.st.sh.d
- TAGS: @cmp @env 

------------------------------------------------


[_gig_st_rc_fn](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_gig_st_rc_fn.sh)

- NAME: _gig_st_rc_fn
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_gig_st_rc_fn.sh
- MAIN: _gig_st_rc_fn :: generate $1 st_rc_fn like _XXX
- TAGS: 

------------------------------------------------


[_iac_lcu_in_d](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_iac_lcu_in_d.sh)

- NAME: _iac_lcu_in_d
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_iac_lcu_in_d.sh
- MAIN: _iac_lcu_in_d :: create --force __.lcu in $1 u@dir
- TAGS: 

------------------------------------------------


[_is_d2acc](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_d2acc.sh)

- NAME: _is_d2acc
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_d2acc.sh
- MAIN: _is_d2acc :: IS for access (w , x) for sys_user for $1 dir  
- TAGS: 

------------------------------------------------


[_is_dDIFz](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_dDIFz.sh)

- NAME: _is_dDIFz
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_dDIFz.sh
- MAIN: _is_dDIFz :: is? diff dir $1 with unzip $2
- TAGS: 

------------------------------------------------


[_is_dNTf](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_dNTf.sh)

- NAME: _is_dNTf
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_dNTf.sh
- MAIN: _is_dNTf :: is? cmp dir $1 recurce any node -nt that $2 file
- TAGS: 

------------------------------------------------


[_isn_from](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_isn_from.sh)

- NAME: _isn_from
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_isn_from.sh
- MAIN: _isn_from :: true if $1 < $2 or $1 >$3
- TAGS: 

------------------------------------------------


[_isn_od](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_isn_od.sh)

- NAME: _isn_od
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_isn_od.sh
- MAIN: _isn_od :: true if $1 not number
- TAGS: 

------------------------------------------------


[_is_reINs](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_reINs.sh)

- NAME: _is_reINs
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_reINs.sh
- MAIN: _is_reINs :: if regexp $1 in string $2 return 0 else return 1
- TAGS: 

------------------------------------------------


[_is_rndx_f](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_rndx_f.sh)

- NAME: _is_rndx_f
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_rndx_f.sh
- MAIN: _is_rndx_f :: is? $1 file contane str 'RNDX: $(_rnd2e)'
- TAGS: 

------------------------------------------------


[_is_root](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_root.sh)

- NAME: _is_root
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_root.sh
- MAIN: _is_root :: 
- TAGS: 

------------------------------------------------


[_is_rr](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_rr.sh)

- NAME: _is_rr
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_rr.sh
- MAIN: _is_rr :: return 1 if _rr with (err or >&2)
- TAGS: 

------------------------------------------------


[_is_sINs](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_sINs.sh)

- NAME: _is_sINs
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_sINs.sh
- MAIN: _is_sINs :: if string $1 in string $2 return 0 else return 1
- TAGS: @IN @str

------------------------------------------------


[_is_yes](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_yes.sh)

- NAME: _is_yes
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_is_yes.sh
- MAIN: _is_yes :: return 0 only answer for question type 'y' 
- TAGS: 

------------------------------------------------


[_l2f](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_l2f.sh)

- NAME: _l2f
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_l2f.sh
- MAIN: _l2f :: 
- TAGS: 

------------------------------------------------


[_lcu2d](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_lcu2d.sh)

- NAME: _lcu2d
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_lcu2d.sh
- MAIN: _lcu2d :: add LCUflow to u@path dir $1
- TAGS: 

------------------------------------------------


[_lcur2d](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_lcur2d.sh)

- NAME: _lcur2d
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_lcur2d.sh
- MAIN: _lcur2d :: recucively add LCUflow to u@path dir $1
- TAGS: 

------------------------------------------------


[_lf2f](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_lf2f.sh)

- NAME: _lf2f
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_lf2f.sh
- MAIN: _lf2f :: 
- TAGS: 

------------------------------------------------


[_lnv2ad](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_lnv2ad.sh)

- NAME: _lnv2ad
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_lnv2ad.sh
- MAIN: _lnv2ad :: insert list name value cntx from $1 file.lst to dir (-A, NOT prev) $2
- TAGS: 

------------------------------------------------


[_lnv2d](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_lnv2d.sh)

- NAME: _lnv2d
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_lnv2d.sh
- MAIN: _lnv2d :: insert list name value cntx from $1 file.lst to dir (with prev) $2
- TAGS: 

------------------------------------------------


[_lnv2e](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_lnv2e.sh)

- NAME: _lnv2e
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_lnv2e.sh
- MAIN: _lnv2e :: print list name value cntx from $1 file.lst
- TAGS: 

------------------------------------------------


[_nr2mm](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_nr2mm.sh)

- NAME: _nr2mm
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_nr2mm.sh
- MAIN: _nr2mm :: $1: parr [n]ame mm, $2: parr [r]es [mm], $3: parr string result $4 0 or num menu
- TAGS: 

------------------------------------------------


[_parr3e](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_parr3e.sh)

- NAME: _parr3e
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_parr3e.sh
- MAIN: _parr3e :: $1: parr treat echo
- TAGS: 

------------------------------------------------


[_prs_f](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_prs_f.sh)

- NAME: _prs_f
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_prs_f.sh
- MAIN: _prs_f ::
- TAGS: 

------------------------------------------------


[_re](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_re.sh)

- NAME: _re
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_re.sh
- MAIN: _re :: 
- TAGS: 

------------------------------------------------


[_ret2e](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_ret2e.sh)

- NAME: _ret2e
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_ret2e.sh
- MAIN: _ret2e :: echo return $@
- TAGS: 

------------------------------------------------


[_rm_st_rc_fn](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_rm_st_rc_fn.sh)

- NAME: _rm_st_rc_fn
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_rm_st_rc_fn.sh
- MAIN: _rm_st_rc_fn :: rm any files $1 name fn from .d/.rc.d
- TAGS: 

------------------------------------------------


[_rnd2e](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_rnd2e.sh)

- NAME: _rnd2e
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_rnd2e.sh
- MAIN: _rnd2e :: echo [\w|\d]{32}
- TAGS: @rnd

------------------------------------------------


[_rndxf2e](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_rndxf2e.sh)

- NAME: _rndxf2e
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_rndxf2e.sh
- MAIN: _rndxf2e :: stdout
- TAGS: 

------------------------------------------------


[_rpr_strc](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_rpr_strc.sh)

- NAME: _rpr_strc
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_rpr_strc.sh
- MAIN: _rpr_strc :: repire strc : 
- TAGS: 

------------------------------------------------


[_rr](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_rr.sh)

- NAME: _rr
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_rr.sh
- MAIN: _rr :: 
- TAGS: 

------------------------------------------------


[_s2ad](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_s2ad.sh)

- NAME: _s2ad
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_s2ad.sh
- MAIN: _s2ad :: insert $1 str into str $2 in ALL (without prevent) file from dir $3
- TAGS: 

------------------------------------------------


[_s2d](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_s2d.sh)

- NAME: _s2d
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_s2d.sh
- MAIN: _s2d :: insert $1 str into str $2 in (with prevent) file from dir $3
- TAGS: 

------------------------------------------------


[_s2f](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_s2f.sh)

- NAME: _s2f
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_s2f.sh
- MAIN: _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3 
- TAGS: 

------------------------------------------------


[_s2se](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_s2se.sh)

- NAME: _s2se
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_s2se.sh
- MAIN: _s2se :: stdout $1 reciver_string $2 inserter_string (if $2 will be emty - $2=@ ) $3 reciver_result_string
- TAGS: 

------------------------------------------------


[_sd2d](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_sd2d.sh)

- NAME: _sd2d
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_sd2d.sh
- MAIN: _sd2d :: cp dir ${ARGS[2]} to . with replace ${ARGS[0]} to ${ARGS[1]} in files and name node
- TAGS: 

------------------------------------------------


[_sdd2d](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_sdd2d.sh)

- NAME: _sdd2d
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_sdd2d.sh
- MAIN: _sdd2d :: cp dir ${ARGS[2]} to ${ARGS[3]} with replace ${ARGS[0]} to ${ARGS[1]} in files and name node
- TAGS: 

------------------------------------------------


[_sf2f](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_sf2f.sh)

- NAME: _sf2f
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_sf2f.sh
- MAIN: _sf2f :: cp file ${ARGS[2]} to . with replace ${ARGS[0]} to ${ARGS[1]} in file and name file
- TAGS: 

------------------------------------------------


[_sRf](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_sRf.sh)

- NAME: _sRf
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_sRf.sh
- MAIN: _sRf :: remove string $1 from file $2
- TAGS: 

------------------------------------------------


[_st_err](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_st_err.sh)

- NAME: _st_err
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_st_err.sh
- MAIN: _st_err :: info>&2, return 1
- TAGS: 

------------------------------------------------


[_stE](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_stE.sh)

- NAME: _stE
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_stE.sh
- MAIN: _stE :: catalog strc_fn form /.d/.rc.d/.st.rc.d/st.sh.d
- TAGS: 

------------------------------------------------


[_st_exit](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_st_exit.sh)

- NAME: _st_exit
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_st_exit.sh
- MAIN: _st_exit :: info>&2, pause, return 1 or ^C
- TAGS: 

------------------------------------------------


[_st_info](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_st_info.sh)

- NAME: _st_info
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_st_info.sh
- MAIN: _st_info :: only message
- TAGS: 

------------------------------------------------


[_st_pause](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_st_pause.sh)

- NAME: _st_pause
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_st_pause.sh
- MAIN: _st_pause :: echo args and wait ENTER or ^C 
- TAGS: @pause @read

------------------------------------------------


[_strc_run2log](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_strc_run2log.sh)

- NAME: _strc_run2log
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_strc_run2log.sh
- MAIN: _strc_run2log :: . '/.d/.rc.d/.st.rc.d/.st.rc' ?> '/.d/.rc.d/.st.rc.d/.st.log.d/run_st_rc.log'
- TAGS: 

------------------------------------------------


[_str_lib_lst](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_str_lib_lst.sh)

- NAME: _str_lib_lst
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_str_lib_lst.sh
- MAIN: _str_lib_lst :: _f2e ${HOME}/.d/.lst.d/.st.lst
- TAGS: 

------------------------------------------------


[_ststart](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_ststart.sh)

- NAME: _ststart
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_ststart.sh
- MAIN: _ststart :: . ${HOME}/.d/.rc.d/.st.rc.d/.st.rc
- TAGS: 

------------------------------------------------


[_tmp](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_tmp.sh)

- NAME: _tmp
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_tmp.sh
- MAIN: _tmp :: 
- TAGS: 

------------------------------------------------


[_tst_arb](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_tst_arb.sh)

- NAME: _tst_arb
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_tst_arb.sh
- MAIN: _tst_arb :: 
- TAGS: 

------------------------------------------------


[_unzip_to](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_unzip_to.sh)

- NAME: _unzip_to
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_unzip_to.sh
- MAIN: _unzip_to :: unzip to $1 dir_dist from zip path_src file [-f]
- TAGS: 

------------------------------------------------


[_upg_st_rc_fn](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_upg_st_rc_fn.sh)

- NAME: _upg_st_rc_fn
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_upg_st_rc_fn.sh
- MAIN: _upg_st_rc_fn :: 
- TAGS: 

------------------------------------------------


[_XXX](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_XXX.sh)

- NAME: _XXX
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_XXX.sh
- MAIN: _XXX :: 
- TAGS: 

------------------------------------------------


[_zip_to](/.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_zip_to.sh)

- NAME: _zip_to
- PATH: /.d/.unzip/.d/.rc.d/.st.rc.d/.st.sh.d/_zip_to.sh
- MAIN: _zip_to :: zip $1 dist file $2 src node (-f|-d) with check in ${dir_dist}/_zip_to.tmp.d
- TAGS: @zip

------------------------------------------------



[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/801.install_stl.d/001.pref.txt.man)



# Install stl
    

[002.inst_stl.code.sh](/.d/.mul/rbld_readme.mul/.cnt/801.install_stl.d/002.inst_stl.code.sh)


```sh

#!/bin/bash

# THIS file (demo version) install stl for user

read -rp "Enter full path to dir with for clone repo st_rc_d :" PATH_TO_CLONE

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

[003.rm_stl.code.sh](/.d/.mul/rbld_readme.mul/.cnt/801.install_stl.d/003.rm_stl.code.sh)


```sh

#!/bin/bash

# THIS file (demo version) delele stl for user

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

[004.inst_stl_and_data.code.sh](/.d/.mul/rbld_readme.mul/.cnt/801.install_stl.d/004.inst_stl_and_data.code.sh)


```sh

#!/bin/bash

# THIS file (demo version) install stl and data for user

read -rp "Enter full path to dir with for clone repo st_rc_d :" PATH_TO_CLONE

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

[005.rm_stl_and_data.code.sh](/.d/.mul/rbld_readme.mul/.cnt/801.install_stl.d/005.rm_stl_and_data.code.sh)


```sh

#!/bin/bash

# THIS file (demo version) delele stl and data for user

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

[001.pref.txt.man](/.d/.mul/rbld_readme.mul/.cnt/901.unsort.d/001.pref.txt.man)



# Libero capitulum

Неупорядоченные заметки (лат.)
    



