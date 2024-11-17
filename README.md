
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
 - <a href=#4bb50568153c40688ea9416ea0217174> Да здравствует Марк tshemsedinov</a>
   - <a href=#4ddef49a4439482d957a5e1d61821149> Благодарность</a>
 - <a href=#608351f2eef34b10bae5343cdb09551d> Явление миру </a>
   - <a href=#983875c07b214ec98750046b322a5b1f> Шаги по камням</a>
 - <a href=#ab95b348897841e6b251a1e24fe7655d> Фон </a>
   - <a href=#e6e44963df864c4aa3f018b08014be6a> Культурологический контекст</a>
   - <a href=#0836c6cd5de64f78a29017072f2bb575> Огонь внутри</a>
 - <a href=#324339ac4265411489eea3d8603b21e3> Что я могу сделать</a>
 - <a href=#ba55a44c098041cdbf13c4a01ddf539b> Библиотека камней - Теория</a>
   - <a href=#f7671445c24a43cf8b32c356cf2ab762> Словарь</a>
   - <a href=#48fd9a6acad7474cbd4b4a0db24816ea> [Рекомендации RCM]</a>
   - <a href=#5fa33d298f0b43f49e7bf3167acb6fff> Что это</a>
   - <a href=#d107a1ffa2974c5089146dcc35e78c62> Ограничения</a>
     - <a href=#5a3ce29c457e40359d4b81d575d7326d> Ограничение сложности stl</a>
     - <a href=#1188d4fa0e2342cbab2c67c2cbfec210> Требования к fn_elem</a>
     - <a href=#eb92308e4c6345bea8468df49dc1527a> Требования к os_sl</a>
     - <a href=#647ffa5fed8e4d5da0cb7ae9e62dfbe8> Тестируемость </a>
     - <a href=#079032bca48347e5b8e2df955a247749> Расширяемость</a>
     - <a href=#f5b06f55316e4283824dc4c494716aed> Производительность</a>
   - <a href=#a68e314c06b9414680fd6a6bc1b027e7> Типы и поведение</a>
 - <a href=#889901f1624b4bd8b5e0a52687fbaa9c> Библиотека камней - Практика</a>
   - <a href=#bf260d1626514ac0bd76f0651a015c19> Понижение абстракций</a>
     - <a href=#04d164c9929e43dba9c8677fc409a4bc> Базовые принципы</a>
     - <a href=#d0c88531f6a34ca6a013a0b0192f6e7d> Базовые технологии</a>
 - <a href=#f570aba72f534aa58cda6d351ac80754> Что здесь есть</a>
     - <a href=#de33afa7864948aa8d83f6c3d506f9fa> Библиотека STL</a>
       - <a href=#56cf7bf741db4e13987b9ddb5b7dee6a> Поведение библиотеки STL</a>
         - <a href=#2bc04b0bcb494ffeb691b09e6558fe9d> Правила именования функций</a>
         - <a href=#81e576564b7648039d049ec9795214bd> Подсказки в именовании файлов или директорий</a>
         - <a href=#d567c6706eda4e42bc6e1e4fb11c9887> Подсказки в расширениях файлов - wellknown - `wnext`</a>
     - <a href=#671da35424334e81a10a5a0a42ce68f8> Функция библиотеки STL</a>
       - <a href=#1c95defdc4bf45f6820e7da59b81e5cc> Поведение функции STL</a>
   - <a href=#33577d0f3b914c37bd3ca7a16c53ff17> Состав библиотеки STL</a>
       - <a href=#9db75fa5fa6d4e47a6425b7c2e9d0835> [Все функции STL (local)]</a>
       - <a href=#c674af867b9440f1b780584a618a68f4> [Все функции STL (git)]</a>
   - <a href=#7590b7bdc8124a67a81ce904c3c34f72> Библиотека STL0</a>
     - <a href=#97d6f00569ec40cfa00ddac203ae02b4> Поведение библиотеки STL0</a>
   - <a href=#77ad6b7f5a0141ae8c8c895817874482> Функция библиотеки STL0</a>
     - <a href=#6837f630c571491db2ebdfce2533efdf> Поведение функции STL0</a>
   - <a href=#633a95fbd34546269694658335893f1f> LCU</a>
     - <a href=#79986b21aab74ba5923dc0b1d1fa0eca> Что это</a>
     - <a href=#ffe255836177496ca9c7d7b51a0d4139> naming</a>
     - <a href=#f1e9d888acf64f45945c16b604edc5e7> add to flcu</a>
         - <a href=#a7831c63af914bc2a1aed48688bb043e> search among flcu</a>
   - <a href=#61fe15257bc94b2a89a40f6fe99cc7d0> Unsort</a>
       - <a href=#367a2bb93af84ecd92cea97ff9dba389> Select (меню выбора) в параметре функции</a>
       - <a href=#b6042b84300546868ff9a4d71050c942> UPG stl_fn</a>
 - <a href=#12f4b8ea2e6a4db493d05f45690d9237> Install STL [and STL0]</a>
   - <a href=#037b4c8d81834a26a7767d9f9fa553b1> restore STL from .d.zip</a>
 - <a href=#bcae5b15384248a6b41fc108f78d1e3b> Неупорядоченные заметки</a>
 - <a href=#33b26b0e75b14e9093e042889923500d> Замечания об использовании функций</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt /home/st/REPOBARE/_repo/st_rc_d/README.md 2

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.prc

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731835765_17112024162925

DATX: 1731835765
-->


[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/001.01.ave_marcus.d/001.pref.txt.md)



 <a id="4bb50568153c40688ea9416ea0217174"></a>
# Да здравствует Марк tshemsedinov

Ave Marcus tshemsedinov* (лат.)

*) Cuius fides est lux (лат.)

    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.md)



 <a id="4ddef49a4439482d957a5e1d61821149"></a>
## Благодарность

Gratia (лат.)

- vitlav
- larchanka
- a3rus
    

[001.pef.txt.md](.d/.mul/rbld_readme.mul/.cnt/002.01.manifesto.d/001.pef.txt.md)



 <a id="608351f2eef34b10bae5343cdb09551d"></a>
# Явление миру 

Manifesto

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.md](.d/.mul/rbld_readme.mul/.cnt/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.md)



 <a id="983875c07b214ec98750046b322a5b1f"></a>
## Шаги по камням

Gradus in saxa (лат.)
   

[001.txt.md](.d/.mul/rbld_readme.mul/.cnt/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.md)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/002.02.sfondo.d/001.pref.txt.md)



 <a id="ab95b348897841e6b251a1e24fe7655d"></a>
# Фон 

Sfondo (лат.)  

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.md)



 <a id="e6e44963df864c4aa3f018b08014be6a"></a>
## Культурологический контекст

Contextus culturalis (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.md)



 <a id="0836c6cd5de64f78a29017072f2bb575"></a>
## Огонь внутри

Fuoco dentro (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/003.quid_possum_facere.d/001.pref.txt.md)



 <a id="324339ac4265411489eea3d8603b21e3"></a>
# Что я могу сделать

Quid possum facere (лат.)


[001.txt.md](.d/.mul/rbld_readme.mul/.cnt/003.quid_possum_facere.d/002.d/001.txt.md)




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
 
    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/001.pref.txt.md)



 <a id="ba55a44c098041cdbf13c4a01ddf539b"></a>
# Библиотека камней - Теория

Bibliotheca Lapidum - Theoria (лат.)
    


[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.md)



 <a id="f7671445c24a43cf8b32c356cf2ab762"></a>
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
    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/002.d/001.pref.txt.md)



 <a id="48fd9a6acad7474cbd4b4a0db24816ea"></a>
## [Рекомендации RCM](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.ins_dr/001.rcm.d/res.md)

  

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/003.quid_est.d/001.pref.txt.md)



 <a id="5fa33d298f0b43f49e7bf3167acb6fff"></a>
## Что это

Quid est (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.md)



 <a id="d107a1ffa2974c5089146dcc35e78c62"></a>
## Ограничения

Limitations (лат.)

 <a id="5a3ce29c457e40359d4b81d575d7326d"></a>
### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
 <a id="1188d4fa0e2342cbab2c67c2cbfec210"></a>
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
 <a id="eb92308e4c6345bea8468df49dc1527a"></a>
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

 <a id="647ffa5fed8e4d5da0cb7ae9e62dfbe8"></a>
### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

 <a id="079032bca48347e5b8e2df955a247749"></a>
### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

 <a id="f5b06f55316e4283824dc4c494716aed"></a>
### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.md)



 <a id="a68e314c06b9414680fd6a6bc1b027e7"></a>
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

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/005.bibliotheca_lapidum_usu.d/001.pref.txt.md)



 <a id="889901f1624b4bd8b5e0a52687fbaa9c"></a>
# Библиотека камней - Практика

Bibliotheca Lapidum - Usu (лат.)

  

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.md)



 <a id="bf260d1626514ac0bd76f0651a015c19"></a>
## Понижение абстракций

Deminutio abstractionis (лат.)


    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.md)



 <a id="04d164c9929e43dba9c8677fc409a4bc"></a>
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



[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/003.basic_technologiae.txt.d/001.pref.txt.md)



 <a id="d0c88531f6a34ca6a013a0b0192f6e7d"></a>
### Базовые технологии

Basic technologiae (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/001.pref.txt.md)



 <a id="f570aba72f534aa58cda6d351ac80754"></a>
# Что здесь есть

Quid est hic (лат.)


    

[001.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.01.d/001.txt.md)



 <a id="de33afa7864948aa8d83f6c3d506f9fa"></a>
### Библиотека STL

    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.01.d/002.d/001.pref.txt.md)



 <a id="56cf7bf741db4e13987b9ddb5b7dee6a"></a>
#### Поведение библиотеки STL



[002.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/002.txt.md)



 <a id="2bc04b0bcb494ffeb691b09e6558fe9d"></a>
##### Правила именования функций

- если [fn_stl] результатом является только возврат 0 или 1 при действии и производится [flow], то именование следующее:

    `_is_[flow]`

  - например определяется ответ `y` или `n` в качестве утверждения, то именование следующее:

    `_is_yes`

- если [fn_stl] n-обертка (в системе уже есть n-1 оберток) над [fn_elem] и производится [w_flow] изменение поведения, то именование следующее:
     
     `_[fn_elem]_wn_[w_flow]`

  - например первая обертка над source состоящая в проверке существования запускаемого файла, то имя следующее:   

    `_source_w1_isf`


    


[003.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/003.txt.md)



 <a id="81e576564b7648039d049ec9795214bd"></a>
##### Подсказки в именовании файлов или директорий

- если в имени файла или директории содержится `.ax.`, то удаление файла или файлов из директории будет иметь негативные последствия - допускается изменение файла или добавление файлов в директорию - иными словами ссылки на эти сущности используются в STL 

    

[004.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/004.txt.md)



 <a id="d567c6706eda4e42bc6e1e4fb11c9887"></a>
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
  


    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.02.d/001.pref.txt.md)



 <a id="671da35424334e81a10a5a0a42ce68f8"></a>
### Функция библиотеки STL
    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.02.d/002.d/001.pref.txt.md)



 <a id="1c95defdc4bf45f6820e7da59b81e5cc"></a>
#### Поведение функции STL
    

[002.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.02.d/002.d/002.txt.md)




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
    

[001.03.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.03.pref.txt.md)



 <a id="33577d0f3b914c37bd3ca7a16c53ff17"></a>
## Состав библиотеки STL

 <a id="9db75fa5fa6d4e47a6425b7c2e9d0835"></a>
#### [Все функции STL (local)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.local.md)
 <a id="c674af867b9440f1b780584a618a68f4"></a>
#### [Все функции STL (git)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.git.md)

[001.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/003.d/001.txt.md)



 <a id="7590b7bdc8124a67a81ce904c3c34f72"></a>
## Библиотека STL0

    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/003.d/002.d/001.pref.txt.md)



 <a id="97d6f00569ec40cfa00ddac203ae02b4"></a>
### Поведение библиотеки STL0



[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/004.d/001.pref.txt.md)



 <a id="77ad6b7f5a0141ae8c8c895817874482"></a>
## Функция библиотеки STL0
    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/004.d/002.d/001.pref.txt.md)



 <a id="6837f630c571491db2ebdfce2533efdf"></a>
### Поведение функции STL0
    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/005.d/001.pref.txt.md)



 <a id="633a95fbd34546269694658335893f1f"></a>
## LCU
    

[099.upg_fn.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/005.d/099.upg_fn.txt.md)



 <a id="79986b21aab74ba5923dc0b1d1fa0eca"></a>
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
 <a id="ffe255836177496ca9c7d7b51a0d4139"></a>
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
 <a id="f1e9d888acf64f45945c16b604edc5e7"></a>
### add to flcu

- nrdx
- tags
- main

 <a id="a7831c63af914bc2a1aed48688bb043e"></a>
##### search among flcu


    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/099.d/001.pref.txt.md)



 <a id="61fe15257bc94b2a89a40f6fe99cc7d0"></a>
## Unsort
    

[002.select.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/099.d/002.select.txt.md)



 <a id="367a2bb93af84ecd92cea97ff9dba389"></a>
#### Select (меню выбора) в параметре функции

- Если параметром функции является меню, то
  - 0 означает, что при вызове user сможет в интерактивном меню select выбрать нужный пункт меню - после этого в контекст функции попадет сущность соответствующая этому пункту (путь к выбранному файлу, срока аргументов и т.п.)
  - N сразу указывает на пункт меню 

- `_d2mm` пример выбора файла из директории
    

[003.upg_fn.txt.md](.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/099.d/003.upg_fn.txt.md)



 <a id="b6042b84300546868ff9a4d71050c942"></a>
#### UPG stl_fn

- для upg_[name_fn]:
  - создаем [name_fn]_
  - тестируем на наследование поведения
    - делаем bcp [name_fn] с перемещением файлов
    - заменяем [name_fn]_ на [name_fn] во сех файлах и директориях [name_fn]_ (like _gig_st_rc_fn _XXX -> [name_fn])
    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/801.install_stl.d/001.pref.txt.md)



 <a id="12f4b8ea2e6a4db493d05f45690d9237"></a>
# Install STL [and STL0]
    

[002.install_cli.txt.md](.d/.mul/rbld_readme.mul/.cnt/801.install_stl.d/002.install_cli.txt.md)



    ~ $ wget https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/main_install_stl.sh
    ~ $ . main_install_stl.sh

or

    ~ $ wget https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%2Fmain_install_stl.sh
    ~ $ . main_install_stl.sh

[003.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/801.install_stl.d/003.pref.txt.md)



 <a id="037b4c8d81834a26a7767d9f9fa553b1"></a>
## restore STL from .d.zip
    

[004.restore_dot_d_cli.txt.md](.d/.mul/rbld_readme.mul/.cnt/801.install_stl.d/004.restore_dot_d_cli.txt.md)



    $ curl https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/restore_stl_from_zip.sh | sh

or

    $ curl https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%restore_stl_from_zip.sh | sh
    

[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/901.unsort.d/001.pref.txt.md)



 <a id="bcae5b15384248a6b41fc108f78d1e3b"></a>
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



[001.pref.txt.md](.d/.mul/rbld_readme.mul/.cnt/902.using_note.d/001.pref.txt.md)



 <a id="33b26b0e75b14e9093e042889923500d"></a>
# Замечания об использовании функций

- echo | _st_exit подавлние остановки при экстренном выходе по ^C
- _is_yes  если только вопрос о выходе то это только _st_exit , 
    использовать _is_yes только для ветвлений

- в следующих версиях использзовать `-` вместо `@` в качестве пустого аргумента
- заплнитель пустых директорий не файл 0, а _0    



