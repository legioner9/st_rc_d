
<!-- [[__TOC_]] -->

<a name="top"></a>
<a class=top-link hide href="#top">↑</a>

<style type="text/css">
   .top-link {
    transition: all .25s ease-in-out;
    position: fixed;
    bottom: 0;
    right: 0;
    display: inline-flex;
    color: #000000;

    cursor: pointer;
    align-items: center;
    justify-content: center;
    margin: 0 2em 2em 0;
    border-radius: 50%;
    padding: .25em;
    width: 1em;
    height: 1em;
    background-color: #F8F8F8;
}
</style>

Start Contents Menu

<!-- TOC toc2f_stl0 --> 
 - <a href=#c42614b69eb24133bcc409541cf4cbba> Да здравствует Марк tshemsedinov</a>
   - <a href=#8df1685fabde44428bde40f76f89ee20> Благодарность</a>
 - <a href=#e5521f3594494dd2aaa41fe9bfe345c6> Явление миру </a>
   - <a href=#f5fb60078fd54c82844afa0ca0b66637> Шаги по камням</a>
 - <a href=#64bb0bac028d49079fc0513dba428f46> Фон </a>
   - <a href=#524ab00fb27d418a8c95a134c7456a70> Культурологический контекст</a>
   - <a href=#17252cab97ef4773b8dd87b9008eb9e9> Огонь внутри</a>
 - <a href=#1c6f924d4541441a8f31af7786450b91> Что я могу сделать</a>
 - <a href=#2a4ec8d465ea4e078f824ff9380ef368> Библиотека камней - Теория</a>
   - <a href=#de887868b00b4168bcef6ad10273d0f7> Словарь</a>
   - <a href=#7fec199416a64d2cac24e8774933fcca> [Рекомендации RCM]</a>
   - <a href=#1efd90fa72da419b856df98f2afb069e> Что это</a>
   - <a href=#2ea6823a3d6d443693baeabaa0b1fb96> Ограничения</a>
     - <a href=#e4c2cb13fa6045cfa8e5d962a2cb11f2> Ограничение сложности stl</a>
     - <a href=#99c062bfa0d54dec81c373f38c09435f> Требования к fn_elem</a>
     - <a href=#3d13d38af1ec4426a52954236a4e7a9f> Требования к os_sl</a>
     - <a href=#84dcd601daa1413c98e4903cb5150e45> Тестируемость </a>
     - <a href=#72b75a36d61c47e09b1a3477e388650a> Расширяемость</a>
     - <a href=#a98498347a1c4a11ae0e9745a49df7d9> Производительность</a>
   - <a href=#2d9c85ff6eb9480da31fe0b196cfaaa3> Типы и поведение</a>
 - <a href=#63e60471b6c94f9bbb61fb656e66074c> Библиотека камней - Практика</a>
   - <a href=#2f504be7ee7a456786ce4605926ee5eb> Понижение абстракций</a>
     - <a href=#97e56785f6e04c2fbcc3c0e06f96e30b> Базовые принципы</a>
     - <a href=#c45ad0d96416477987634cfa8d8db65d> Базовые технологии</a>
 - <a href=#7beda3faff4541cdb3bdc3c35e169b6e> Что здесь есть</a>
     - <a href=#8a7ea7b418b6423aa88c7432b1eb6c0f> Библиотека STL</a>
       - <a href=#baf7fcbbdd54455caf7dc8d2f384c533> Поведение библиотеки STL</a>
         - <a href=#4df9358160b9477aa08f7734032cb731> Правила именования функций</a>
         - <a href=#680b662dd0bb476590a91578fb4b2916> Подсказки в именовании файлов или директорий</a>
         - <a href=#81f7462d0ea04db3b76bdc65bef9254b> Подсказки в расширениях файлов - wellknown - `wnext`</a>
     - <a href=#5a16e2b3563340a2af0627574dbd0117> Функция библиотеки STL</a>
       - <a href=#ab3c73b6210d49c38c6947e566c2d3a1> Поведение функции STL</a>
   - <a href=#5d654b5974014ce8ac6f0ac066e0c597> Состав библиотеки STL</a>
       - <a href=#a6d02047756b4130b21f302303942d96> [Все функции STL (local)]</a>
       - <a href=#ab76cb52baf444679ba280e1c674fbd1> [Все функции STL (git)]</a>
   - <a href=#8d1637f506d44b6a9c36c260fd29845e> Библиотека STL0</a>
     - <a href=#5ec110a739524d34a89b71173fa438c4> Поведение библиотеки STL0</a>
   - <a href=#79cd9f42c1714fd89538eb952ae4f351> Функция библиотеки STL0</a>
     - <a href=#e15e70f38d2740bdb4e03d4bcf8d1c7e> Поведение функции STL0</a>
   - <a href=#4254e132db164be6a28c604882680519> LCU</a>
     - <a href=#acba15eace974eb78851ce827eae8571> Что это</a>
     - <a href=#cccb96b6f3254ef28d852da1020e0b2b> naming</a>
     - <a href=#1f173bc9c55d402184cf8caacb5188c2> add to flcu</a>
         - <a href=#c5b027fbef0643a889b0a6eb22abde39> search among flcu</a>
   - <a href=#f2a4eeefda3f4641ad4c8d8964eb135d> Unsort</a>
       - <a href=#14716153bea046af97f287f654c1d5ed> Select (меню выбора) в параметре функции</a>
       - <a href=#3f650f22131945e1889a18f168b94b94> UPG stl_fn</a>
 - <a href=#a25fa2bd505a479b894899f131fecf91> Install STL [and STL0]</a>
   - <a href=#71c3340be6824104824e53ffede0815c> restore STL from .d.zip</a>
 - <a href=#84e70d9768aa4a8196af174bd712d063> Неупорядоченные заметки</a>
 - <a href=#c34378d1b776475e82cc590ec4218a6f> Замечания об использовании функций</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/cntx.ins.d /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731838641_17112024171721

DATX: 1731838641
-->


[001.pref.txt.md](cntx.ins.d/001.01.ave_marcus.d/001.pref.txt.md)



 <a id="c42614b69eb24133bcc409541cf4cbba"></a>
# Да здравствует Марк tshemsedinov

Ave Marcus tshemsedinov* (лат.)

*) Cuius fides est lux (лат.)

    

[001.pref.txt.md](cntx.ins.d/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.md)



 <a id="8df1685fabde44428bde40f76f89ee20"></a>
## Благодарность

Gratia (лат.)

- vitlav
- larchanka
- a3rus
    

[001.pef.txt.md](cntx.ins.d/002.01.manifesto.d/001.pef.txt.md)



 <a id="e5521f3594494dd2aaa41fe9bfe345c6"></a>
# Явление миру 

Manifesto

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.md](cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.md)



 <a id="f5fb60078fd54c82844afa0ca0b66637"></a>
## Шаги по камням

Gradus in saxa (лат.)
   

[001.txt.md](cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.md)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/001.pref.txt.md)



 <a id="64bb0bac028d49079fc0513dba428f46"></a>
# Фон 

Sfondo (лат.)  

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.md)



 <a id="524ab00fb27d418a8c95a134c7456a70"></a>
## Культурологический контекст

Contextus culturalis (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.md)



 <a id="17252cab97ef4773b8dd87b9008eb9e9"></a>
## Огонь внутри

Fuoco dentro (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.md](cntx.ins.d/003.quid_possum_facere.d/001.pref.txt.md)



 <a id="1c6f924d4541441a8f31af7786450b91"></a>
# Что я могу сделать

Quid possum facere (лат.)


[001.txt.md](cntx.ins.d/003.quid_possum_facere.d/002.d/001.txt.md)




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
 
    

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/001.pref.txt.md)



 <a id="2a4ec8d465ea4e078f824ff9380ef368"></a>
# Библиотека камней - Теория

Bibliotheca Lapidum - Theoria (лат.)
    


[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.md)



 <a id="de887868b00b4168bcef6ad10273d0f7"></a>
## Словарь

Lexicon (лат.)

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
    

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/002.d/001.pref.txt.md)



 <a id="7fec199416a64d2cac24e8774933fcca"></a>
## [Рекомендации RCM](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.ins_dr/001.rcm.d/res.md)

  

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/003.quid_est.d/001.pref.txt.md)



 <a id="1efd90fa72da419b856df98f2afb069e"></a>
## Что это

Quid est (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.md)



 <a id="2ea6823a3d6d443693baeabaa0b1fb96"></a>
## Ограничения

Limitations (лат.)

 <a id="e4c2cb13fa6045cfa8e5d962a2cb11f2"></a>
### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
 <a id="99c062bfa0d54dec81c373f38c09435f"></a>
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
 <a id="3d13d38af1ec4426a52954236a4e7a9f"></a>
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

 <a id="84dcd601daa1413c98e4903cb5150e45"></a>
### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

 <a id="72b75a36d61c47e09b1a3477e388650a"></a>
### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

 <a id="a98498347a1c4a11ae0e9745a49df7d9"></a>
### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.md)



 <a id="2d9c85ff6eb9480da31fe0b196cfaaa3"></a>
## Типы и поведение

Genera et mores (лат.)



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

[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/001.pref.txt.md)



 <a id="63e60471b6c94f9bbb61fb656e66074c"></a>
# Библиотека камней - Практика

Bibliotheca Lapidum - Usu (лат.)

  

[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.md)



 <a id="2f504be7ee7a456786ce4605926ee5eb"></a>
## Понижение абстракций

Deminutio abstractionis (лат.)


    

[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.md)



 <a id="97e56785f6e04c2fbcc3c0e06f96e30b"></a>
### Базовые принципы

Basic principiis (лат.)

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



[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/003.basic_technologiae.txt.d/001.pref.txt.md)



 <a id="c45ad0d96416477987634cfa8d8db65d"></a>
### Базовые технологии

Basic technologiae (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/001.pref.txt.md)



 <a id="7beda3faff4541cdb3bdc3c35e169b6e"></a>
# Что здесь есть

Quid est hic (лат.)


    

[001.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/001.txt.md)



 <a id="8a7ea7b418b6423aa88c7432b1eb6c0f"></a>
### Библиотека STL

    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/001.pref.txt.md)



 <a id="baf7fcbbdd54455caf7dc8d2f384c533"></a>
#### Поведение библиотеки STL



[002.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/002.txt.md)



 <a id="4df9358160b9477aa08f7734032cb731"></a>
##### Правила именования функций

- если [fn_stl] результатом является только возврат 0 или 1 при действии и производится [flow], то именование следующее:

    `_is_[flow]`

  - например определяется ответ `y` или `n` в качестве утверждения, то именование следующее:

    `_is_yes`

- если [fn_stl] n-обертка (в системе уже есть n-1 оберток) над [fn_elem] и производится [w_flow] изменение поведения, то именование следующее:
     
     `_[fn_elem]_wn_[w_flow]`

  - например первая обертка над source состоящая в проверке существования запускаемого файла, то имя следующее:   

    `_source_w1_isf`


    


[003.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/003.txt.md)



 <a id="680b662dd0bb476590a91578fb4b2916"></a>
##### Подсказки в именовании файлов или директорий

- если в имени файла или директории содержится `.ax.`, то удаление файла или файлов из директории будет иметь негативные последствия - допускается изменение файла или добавление файлов в директорию - иными словами ссылки на эти сущности используются в STL 

    

[004.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/004.txt.md)



 <a id="81f7462d0ea04db3b76bdc65bef9254b"></a>
##### Подсказки в расширениях файлов - wellknown - `wnext`
- `wnext`
  - `.lst` список
  - `.prc` файл с процедурой
  - `.cnt` контекст
  - `.env` окружение
  - `.hie` пояснение по смыслу - формат .md
  - `.tml` текстовый макет
  - `.man` общие пояснения - формат .md
  - `.tst` тестовый


  - `.ham` хук в обертках над git
  - `.mul` директория содержащая `wnext` директории 

  - `.sil` структура "лес"
  - `.arb` структура "дерево"
  - `.ram` структура "ветка"
  - `.fol` файл "лист"
  - `.grot` структура "дупло" - "кроличья нора"
  - `.repo` структура "коробка"
  
  - `.exa` пример
  - `.anc` файл с сылками
  


    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/001.pref.txt.md)



 <a id="5a16e2b3563340a2af0627574dbd0117"></a>
### Функция библиотеки STL
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/001.pref.txt.md)



 <a id="ab3c73b6210d49c38c6947e566c2d3a1"></a>
#### Поведение функции STL
    

[002.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/002.txt.md)




`${ST_RC_D_PATH}` - путь к git директории проекта STL

`${ST_RC_D_DATA_PATH}` - путь к git директории с пользовательскими данными проекта STL

.hie - `${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/[name_fn].hie` текстовый файл - Объяснение смысла и конкретные пояснения для сущности [name_fn]


.deb1 - `${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/[name_fn].tst.d./[name_fn].tst.sh.deb1` - Файл при запуске запускает функцию в deb1 контексте и параметрами для выяснения различных аспектов поведения

Допускается создание .deb2 .deb3 и т.д. (добавить по аналогии: [name_fn].tst.sh.deb2 и доп секцию if для cntl параметров )

[name_fn].tst.d - `${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/[name_fn].tst.d` - Директория  определяет основной тест функции, состав этой директории:
- файл _XXX.tst.sh при запуске формирует текстовый файл res при необходимости им используется:
  - tst.d директория для хранения промежуточных файлов генерируемых или используемых [name_fn]
  - .lst список имен переменных 
  - pre текстовый файл - предопределяемый образец
- дале возвращается результат `diff res pre` с соответствующим стеком

.data `${ST_RC_D_DATA_PATH}/.d/.st.rc.data.d/[name_fn].d` - пользовательские данные для name_fn, состав этой директории:
- .prc процедуры
- .lst списки
- .tml шаблоны
    

[001.03.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.03.pref.txt.md)



 <a id="5d654b5974014ce8ac6f0ac066e0c597"></a>
## Состав библиотеки STL

 <a id="a6d02047756b4130b21f302303942d96"></a>
#### [Все функции STL (local)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.local.md)
 <a id="ab76cb52baf444679ba280e1c674fbd1"></a>
#### [Все функции STL (git)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.git.md)

[001.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/003.d/001.txt.md)



 <a id="8d1637f506d44b6a9c36c260fd29845e"></a>
## Библиотека STL0

    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/003.d/002.d/001.pref.txt.md)



 <a id="5ec110a739524d34a89b71173fa438c4"></a>
### Поведение библиотеки STL0



[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/004.d/001.pref.txt.md)



 <a id="79cd9f42c1714fd89538eb952ae4f351"></a>
## Функция библиотеки STL0
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/004.d/002.d/001.pref.txt.md)



 <a id="e15e70f38d2740bdb4e03d4bcf8d1c7e"></a>
### Поведение функции STL0
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/005.d/001.pref.txt.md)



 <a id="4254e132db164be6a28c604882680519"></a>
## LCU
    

[099.upg_fn.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/005.d/099.upg_fn.txt.md)



 <a id="acba15eace974eb78851ce827eae8571"></a>
### Что это
- LCU - обработка файловой системы основаная на соответствии директории и файла __.lcu 
  - характеристики
    - директоря определяет содержание своих поддиректорий
  - возможности обработки fs
    - поиск по тегам
    - поиск по мейн содержимому
  - требования к занесению информации
    - ограниченное whellknown количество тегов
      - добавление тега в файл отлько из уже существующих (alrtag)
      - 
 <a id="cccb96b6f3254ef28d852da1020e0b2b"></a>
### naming

- секция .lcu loc
  - RNDX locr
  - MAIN locm
  - TAGS loct
    - логика названий 
      - All all
        - locAll loc RNDX and MAIN and TAGS
      - A and
        - locrAm loc RNDX and MAIN
      - O or
        - locrOt loc RNDX or TAGS
- file.lcu == flcu
- env_dirs - pull directory as united for treat LSU == env_lcu
- dir with flcu == dlcu
 <a id="1f173bc9c55d402184cf8caacb5188c2"></a>
### add to flcu

- nrdx
- tags
- main

 <a id="c5b027fbef0643a889b0a6eb22abde39"></a>
##### search among flcu


    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/001.pref.txt.md)



 <a id="f2a4eeefda3f4641ad4c8d8964eb135d"></a>
## Unsort
    

[002.select.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/002.select.txt.md)



 <a id="14716153bea046af97f287f654c1d5ed"></a>
#### Select (меню выбора) в параметре функции

- Если параметром функции является меню, то
  - 0 означает, что при вызове user сможет в интерактивном меню select выбрать нужный пункт меню - после этого в контекст функции попадет сущность соответствующая этому пункту (путь к выбранному файлу, срока аргументов и т.п.)
  - N сразу указывает на пункт меню 

- `_d2mm` пример выбора файла из директории
    

[003.upg_fn.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/003.upg_fn.txt.md)



 <a id="3f650f22131945e1889a18f168b94b94"></a>
#### UPG stl_fn

- для upg_[name_fn]:
  - создаем [name_fn]_
  - тестируем на наследование поведения
    - делаем bcp [name_fn] с перемещением файлов
    - заменяем [name_fn]_ на [name_fn] во сех файлах и директориях [name_fn]_ (like _gig_st_rc_fn _XXX -> [name_fn])
    

[001.pref.txt.md](cntx.ins.d/801.install_stl.d/001.pref.txt.md)



 <a id="a25fa2bd505a479b894899f131fecf91"></a>
# Install STL [and STL0]
    

[002.install_cli.txt.md](cntx.ins.d/801.install_stl.d/002.install_cli.txt.md)



    ~ $ wget https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/main_install_stl.sh
    ~ $ . main_install_stl.sh

or

    ~ $ wget https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%2Fmain_install_stl.sh
    ~ $ . main_install_stl.sh

[003.pref.txt.md](cntx.ins.d/801.install_stl.d/003.pref.txt.md)



 <a id="71c3340be6824104824e53ffede0815c"></a>
## restore STL from .d.zip
    

[004.restore_dot_d_cli.txt.md](cntx.ins.d/801.install_stl.d/004.restore_dot_d_cli.txt.md)



    $ curl https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/restore_stl_from_zip.sh | sh

or

    $ curl https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%restore_stl_from_zip.sh | sh
    

[001.pref.txt.md](cntx.ins.d/901.unsort.d/001.pref.txt.md)



 <a id="84e70d9768aa4a8196af174bd712d063"></a>
# Неупорядоченные заметки

Libero capitulum (лат.)

- ${HOME}/tmp_dir_st_rc временная user директория - очищается при перезапуске оболочки

- файлы стилей для интерпретатора md2html [md_css](/.d/.unzip/.d/.cdn.d/md_css)

- lib2e вывод информации по функциям библиотеки [name_lib]E_[name_lib]
  - st - _stE
  - stl0 - stl0E

- создание пустой функции в библиотеке st _gig_st_rc_fn
- удаление файлов функции из библиотеки st _rm_st_rc_fn
  
- создание пустой функции в библиотеке gig_fn_stl_[name_lib]
- удаление файлов функции из библиотеке rm_fn_stl_[name_lib]
- создание библиотеки cr_lib_fn_stl arg



[001.pref.txt.md](cntx.ins.d/902.using_note.d/001.pref.txt.md)



 <a id="c34378d1b776475e82cc590ec4218a6f"></a>
# Замечания об использовании функций

- echo | _st_exit подавлние остановки при экстренном выходе по ^C
- _is_yes  если только вопрос о выходе то это только _st_exit , 
    использовать _is_yes только для ветвлений

- в следующих версиях использзовать `-` вместо `@` в качестве пустого аргумента
- заплнитель пустых директорий не файл 0, а _0    



