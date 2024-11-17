
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
 - <a href=#16ae0037087347da9cad659da47d3fc8> Да здравствует Марк tshemsedinov</a>
   - <a href=#20d3b65475534d648c636ad0a71006e9> Благодарность</a>
 - <a href=#5fd549d65cec47bea46e059c5675774c> Явление миру </a>
   - <a href=#8222ada3bcbf482d83d7e7d1c096981a> Шаги по камням</a>
 - <a href=#6015b6e8d2494d6481c9b0333bc2cc3b> Фон </a>
   - <a href=#2354769e1c374504baed6fe605394196> Культурологический контекст</a>
   - <a href=#3536d76e2b6f473db0889f3b2c62bd0f> Огонь внутри</a>
 - <a href=#ad003da405464331930a090660da5171> Что я могу сделать</a>
 - <a href=#aa639150bddb4876a70b8c4196998c13> Библиотека камней - Теория</a>
   - <a href=#ee9af0683db84642b1acd98450b49bc4> Словарь</a>
   - <a href=#5cb6055270f145f9b36e7f6d87f569c3> Что это</a>
   - <a href=#06bcfc16575e442bb8eb15801e1faf81> Ограничения</a>
     - <a href=#e9256925dc78405595545323bbb2cb80> Ограничение сложности stl</a>
     - <a href=#c64e04dab41a4435b3d4405b6087bfb7> Требования к fn_elem</a>
     - <a href=#5a1c0d4ef9604b1d8a7635327b536ab6> Требования к os_sl</a>
     - <a href=#fd05e40ee7e6491b931147aded375401> Тестируемость </a>
     - <a href=#58163b9cdb5d4bd59872644e9cae82c9> Расширяемость</a>
     - <a href=#149a5dfd4ed5405981e252723643e1a4> Производительность</a>
   - <a href=#c2c468f01d544ddb8b68d996a95f637e> Типы и поведение</a>
   - <a href=#e699646202f742bc9deaac52b62f3218> Рекомендации RCM</a>
     - <a href=#70b3df846ab544a89f8170b0eccd4304> RCM_1 (изменения в оригинал)</a>
     - <a href=#83e7d415d77540c5a43a38c85ab68ce0> RCM_2 (служебные файлы)</a>
     - <a href=#2a53dc2d7b2f4867b263de8ff12d161f> RCM_3 (cокращения)</a>
     - <a href=#2b4d083d5bd14f1ca9d20ea0107f6ae8> RCM_4 (notmast_butlast)</a>
     - <a href=#dff2ce907023499292e61d3a8ba0a925> RCM_5 (mast_def_args)</a>
 - <a href=#463e01705523422fad7719abfc895ed0> Библиотека камней - Практика</a>
   - <a href=#0de81c5fe02045ce9fe60acbdc38b4b8> Понижение абстракций</a>
     - <a href=#ccd596933f004151af7d1d4c9b1bc2d9> Базовые принципы</a>
     - <a href=#1adc40b5dd4745bd8e7f250836a0e2ea> Базовые технологии</a>
 - <a href=#2e462b38548f4c469381ecf80330ec62> Что здесь есть</a>
     - <a href=#852553e39748467e98d190088a66a58b> Библиотека STL</a>
       - <a href=#967447ca0bfd495cb3e197a466d67e34> Поведение библиотеки STL</a>
         - <a href=#a2b83a4917da464886f8b8ecb9c42a91> Правила именования функций</a>
         - <a href=#564c03c600e64ad2a535b55b71f5a675> Подсказки в именовании файлов или директорий</a>
         - <a href=#ba565b8361a24f6599964c8c86e6bf59> Подсказки в расширениях файлов - wellknown - `wnext`</a>
     - <a href=#fd8a9ff8c59e4d9e9dd93c4317d9707a> Функция библиотеки STL</a>
       - <a href=#df67cbaf510740b8a28b7a62cb0c990d> Поведение функции STL</a>
   - <a href=#49fbf3aed368491ea558f6f273728265> Состав библиотеки STL</a>
       - <a href=#d95a3d1cf03e42af8f09a4b4920b5855> [Все функции STL (local)]</a>
       - <a href=#284d1b2c896b4c54ae0e3e00c49141cf> [Все функции STL (git)]</a>
   - <a href=#10067c9c0f434faeb053269fe23e309e> Библиотека STL0</a>
     - <a href=#1ae8b2118ad54ad8a396d6d8b8fd099c> Поведение библиотеки STL0</a>
   - <a href=#b1bd295bf07e478eba5e01130eb76f47> Функция библиотеки STL0</a>
     - <a href=#35c394ab81d44e1fb73a918396f4479c> Поведение функции STL0</a>
   - <a href=#d1f195199aa242739e08cd8720b983ac> LCU</a>
     - <a href=#fb19932815154f1195ba56c9f3112155> Что это</a>
     - <a href=#3f6d00c5762540e8b40143b752655026> naming</a>
     - <a href=#1f0ec4f4c5ff4df89e35ca8256e61e96> add to flcu</a>
         - <a href=#91cfeae23476417a95e8fa15dc77d40e> search among flcu</a>
   - <a href=#2f38de1adc9b487892c9d6b24efbae8d> Unsort</a>
       - <a href=#6affd7debb4143b5a16a4ede5b307af1> Select (меню выбора) в параметре функции</a>
       - <a href=#2becebf4531f428393fdaf8d852e3b98> UPG stl_fn</a>
 - <a href=#3b59bd7b908f4a05b770e36e6c9d1fea> Install STL [and STL0]</a>
   - <a href=#c5bb31bee1f04633b2acaeed6aed5d6a> restore STL from .d.zip</a>
 - <a href=#c525d682e6964e8fb15ba00ccc61a43c> Неупорядоченные заметки</a>
 - <a href=#defe8e6b09c544dfafe2aab79308e182> Замечания об использовании функций</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/cntx.ins.d /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731863918_18112024001838

DATX: 1731863918
-->


[001.pref.txt.md](cntx.ins.d/001.01.ave_marcus.d/001.pref.txt.md)



 <a id="16ae0037087347da9cad659da47d3fc8"></a>
# Да здравствует Марк tshemsedinov

Ave Marcus tshemsedinov* (лат.)

*) Cuius fides est lux (лат.)

    

[001.pref.txt.md](cntx.ins.d/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.md)



 <a id="20d3b65475534d648c636ad0a71006e9"></a>
## Благодарность

Gratia (лат.)

- vitlav
- larchanka
- a3rus
    

[001.pef.txt.md](cntx.ins.d/002.01.manifesto.d/001.pef.txt.md)



 <a id="5fd549d65cec47bea46e059c5675774c"></a>
# Явление миру 

Manifesto

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.md](cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.md)



 <a id="8222ada3bcbf482d83d7e7d1c096981a"></a>
## Шаги по камням

Gradus in saxa (лат.)
   

[001.txt.md](cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.md)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/001.pref.txt.md)



 <a id="6015b6e8d2494d6481c9b0333bc2cc3b"></a>
# Фон 

Sfondo (лат.)  

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.md)



 <a id="2354769e1c374504baed6fe605394196"></a>
## Культурологический контекст

Contextus culturalis (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.md)



 <a id="3536d76e2b6f473db0889f3b2c62bd0f"></a>
## Огонь внутри

Fuoco dentro (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.md](cntx.ins.d/003.quid_possum_facere.d/001.pref.txt.md)



 <a id="ad003da405464331930a090660da5171"></a>
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



 <a id="aa639150bddb4876a70b8c4196998c13"></a>
# Библиотека камней - Теория

Bibliotheca Lapidum - Theoria (лат.)
    


[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.md)



 <a id="ee9af0683db84642b1acd98450b49bc4"></a>
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
    

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/003.quid_est.d/001.pref.txt.md)



 <a id="5cb6055270f145f9b36e7f6d87f569c3"></a>
## Что это

Quid est (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.md)



 <a id="06bcfc16575e442bb8eb15801e1faf81"></a>
## Ограничения

Limitations (лат.)

 <a id="e9256925dc78405595545323bbb2cb80"></a>
### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
 <a id="c64e04dab41a4435b3d4405b6087bfb7"></a>
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
 <a id="5a1c0d4ef9604b1d8a7635327b536ab6"></a>
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

 <a id="fd05e40ee7e6491b931147aded375401"></a>
### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

 <a id="58163b9cdb5d4bd59872644e9cae82c9"></a>
### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

 <a id="149a5dfd4ed5405981e252723643e1a4"></a>
### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.md)



 <a id="c2c468f01d544ddb8b68d996a95f637e"></a>
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

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/001.pref.txt.md)



 <a id="e699646202f742bc9deaac52b62f3218"></a>
## Рекомендации RCM

    

[002.rcm_1.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/002.rcm_1.txt.md)



 <a id="70b3df846ab544a89f8170b0eccd4304"></a>
### RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/003.rcm_2.txt.md)



 <a id="83e7d415d77540c5a43a38c85ab68ce0"></a>
### RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/004.rcm_3.txt.md)



 <a id="2a53dc2d7b2f4867b263de8ff12d161f"></a>
### RCM_3 (cокращения)

    dr - dir
    fl - file
    et - entety - file|dir
    nm - name
    et_lk - entety ссылка в ее имени содержится способ ее обработки
    sdr - subdir
    pth - path
    rcv_dr - rcv dir
    ins_dr - ins dir
    prx - prefix
    ptx - postfix
    prx_et - prefix for entety (e.c. recommendationSTL for dr @|for fl &)
    ptx_fn - postfix фиксирует принадлежность служебных файлов сфрмированых работой fn
    lext - последнее расширение имени справа 
    cnx - context 
    res - результат вставки context
    

[005.rcm_4.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/005.rcm_4.txt.md)



 <a id="2b4d083d5bd14f1ca9d20ea0107f6ae8"></a>
### RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/006.rcm_5.txt.md)



 <a id="dff2ce907023499292e61d3a8ba0a925"></a>
### RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/001.pref.txt.md)



 <a id="463e01705523422fad7719abfc895ed0"></a>
# Библиотека камней - Практика

Bibliotheca Lapidum - Usu (лат.)

  

[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.md)



 <a id="0de81c5fe02045ce9fe60acbdc38b4b8"></a>
## Понижение абстракций

Deminutio abstractionis (лат.)


    

[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.md)



 <a id="ccd596933f004151af7d1d4c9b1bc2d9"></a>
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



 <a id="1adc40b5dd4745bd8e7f250836a0e2ea"></a>
### Базовые технологии

Basic technologiae (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/001.pref.txt.md)



 <a id="2e462b38548f4c469381ecf80330ec62"></a>
# Что здесь есть

Quid est hic (лат.)


    

[001.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/001.txt.md)



 <a id="852553e39748467e98d190088a66a58b"></a>
### Библиотека STL

    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/001.pref.txt.md)



 <a id="967447ca0bfd495cb3e197a466d67e34"></a>
#### Поведение библиотеки STL



[002.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/002.txt.md)



 <a id="a2b83a4917da464886f8b8ecb9c42a91"></a>
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



 <a id="564c03c600e64ad2a535b55b71f5a675"></a>
##### Подсказки в именовании файлов или директорий

- если в имени файла или директории содержится `.ax.`, то удаление файла или файлов из директории будет иметь негативные последствия - допускается изменение файла или добавление файлов в директорию - иными словами ссылки на эти сущности используются в STL 

    

[004.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/004.txt.md)



 <a id="ba565b8361a24f6599964c8c86e6bf59"></a>
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



 <a id="fd8a9ff8c59e4d9e9dd93c4317d9707a"></a>
### Функция библиотеки STL
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/001.pref.txt.md)



 <a id="df67cbaf510740b8a28b7a62cb0c990d"></a>
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



 <a id="49fbf3aed368491ea558f6f273728265"></a>
## Состав библиотеки STL

 <a id="d95a3d1cf03e42af8f09a4b4920b5855"></a>
#### [Все функции STL (local)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.local.md)
 <a id="284d1b2c896b4c54ae0e3e00c49141cf"></a>
#### [Все функции STL (git)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.git.md)

[001.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/003.d/001.txt.md)



 <a id="10067c9c0f434faeb053269fe23e309e"></a>
## Библиотека STL0

    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/003.d/002.d/001.pref.txt.md)



 <a id="1ae8b2118ad54ad8a396d6d8b8fd099c"></a>
### Поведение библиотеки STL0



[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/004.d/001.pref.txt.md)



 <a id="b1bd295bf07e478eba5e01130eb76f47"></a>
## Функция библиотеки STL0
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/004.d/002.d/001.pref.txt.md)



 <a id="35c394ab81d44e1fb73a918396f4479c"></a>
### Поведение функции STL0
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/005.d/001.pref.txt.md)



 <a id="d1f195199aa242739e08cd8720b983ac"></a>
## LCU
    

[099.upg_fn.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/005.d/099.upg_fn.txt.md)



 <a id="fb19932815154f1195ba56c9f3112155"></a>
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
 <a id="3f6d00c5762540e8b40143b752655026"></a>
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
 <a id="1f0ec4f4c5ff4df89e35ca8256e61e96"></a>
### add to flcu

- nrdx
- tags
- main

 <a id="91cfeae23476417a95e8fa15dc77d40e"></a>
##### search among flcu


    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/001.pref.txt.md)



 <a id="2f38de1adc9b487892c9d6b24efbae8d"></a>
## Unsort
    

[002.select.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/002.select.txt.md)



 <a id="6affd7debb4143b5a16a4ede5b307af1"></a>
#### Select (меню выбора) в параметре функции

- Если параметром функции является меню, то
  - 0 означает, что при вызове user сможет в интерактивном меню select выбрать нужный пункт меню - после этого в контекст функции попадет сущность соответствующая этому пункту (путь к выбранному файлу, срока аргументов и т.п.)
  - N сразу указывает на пункт меню 

- `_d2mm` пример выбора файла из директории
    

[003.upg_fn.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/003.upg_fn.txt.md)



 <a id="2becebf4531f428393fdaf8d852e3b98"></a>
#### UPG stl_fn

- для upg_[name_fn]:
  - создаем [name_fn]_
  - тестируем на наследование поведения
    - делаем bcp [name_fn] с перемещением файлов
    - заменяем [name_fn]_ на [name_fn] во сех файлах и директориях [name_fn]_ (like _gig_st_rc_fn _XXX -> [name_fn])
    

[001.pref.txt.md](cntx.ins.d/801.install_stl.d/001.pref.txt.md)



 <a id="3b59bd7b908f4a05b770e36e6c9d1fea"></a>
# Install STL [and STL0]
    

[002.install_cli.txt.md](cntx.ins.d/801.install_stl.d/002.install_cli.txt.md)



    ~ $ wget https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/main_install_stl.sh
    ~ $ . main_install_stl.sh

or

    ~ $ wget https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%2Fmain_install_stl.sh
    ~ $ . main_install_stl.sh

[003.pref.txt.md](cntx.ins.d/801.install_stl.d/003.pref.txt.md)



 <a id="c5bb31bee1f04633b2acaeed6aed5d6a"></a>
## restore STL from .d.zip
    

[004.restore_dot_d_cli.txt.md](cntx.ins.d/801.install_stl.d/004.restore_dot_d_cli.txt.md)



    $ curl https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/restore_stl_from_zip.sh | sh

or

    $ curl https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%restore_stl_from_zip.sh | sh
    

[001.pref.txt.md](cntx.ins.d/901.unsort.d/001.pref.txt.md)



 <a id="c525d682e6964e8fb15ba00ccc61a43c"></a>
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



 <a id="defe8e6b09c544dfafe2aab79308e182"></a>
# Замечания об использовании функций

- echo | _st_exit подавлние остановки при экстренном выходе по ^C
- _is_yes  если только вопрос о выходе то это только _st_exit , 
    использовать _is_yes только для ветвлений

- в следующих версиях использзовать `-` вместо `@` в качестве пустого аргумента
- заплнитель пустых директорий не файл 0, а _0    



