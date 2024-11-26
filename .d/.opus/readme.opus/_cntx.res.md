
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

h1{
    color: rgb(155, 0, 218);
    font-weight: normal;
    font-style: italic;
    font-weight:bold;

}
h2{
    color: rgb(155, 40, 238);
    font-style: italic;
    font-weight:bold;
}
h3{
    color: rgb(155, 80, 218);
    font-style: italic;
    font-weight:bold;
}
h4{
    color: rgb(155, 120, 218);
    font-style: italic;
    font-weight:bold;
}
h5{
    color: rgb(155, 160, 218);
    font-style: italic;
    font-weight:bold;
}
h6 {
    color: rgb(155, 200, 230);
    font-style: italic;
    font-weight:bold;
}
</style>

Start Contents Menu

<!-- TOC toc2f_stl0 --> 
 - <a href=#6b0b3bbb94904005b2882ecbdba15afd> ST_RC_D </a>
 - <a href=#2cdbdefdb13f480fac009bab3461bb7e> Да здравствует Марк tshemsedinov</a>
   - <a href=#a7f4ba23f7a048418b59b3b8ddfa8293> Благодарность</a>
 - <a href=#a746da8e08f64493969fd2c067358e1e> Явление миру </a>
   - <a href=#9addba81568f4afa8158fa40009c5b93> Шаги по камням</a>
 - <a href=#7169e442b5cb459e844ac580fdfa78b6> Фон </a>
   - <a href=#15a67b66fa6a457da2390206d9bfbd0f> Культурологический контекст</a>
   - <a href=#1bdf2c5a63ac44c19e1dabe5e3599e49> Огонь внутри</a>
 - <a href=#72647434f52e40f2b0e772716ac8a3e2> Что я могу сделать</a>
 - <a href=#4fd665ca08d14685bd5260d4a6377fdc> Библиотека камней - Теория</a>
   - <a href=#c372c001b6a24487863c6f4f0be1d685> Словарь</a>
   - <a href=#3bc73166368346409478f09da017f8c0> Что это</a>
   - <a href=#84c0eab4995c48848ffb986c6b2bad76> Ограничения</a>
     - <a href=#fd04ac00ff8d47edba35dbbb36aa8966> Ограничение сложности stl</a>
     - <a href=#c53c4a6f542941e39944c85b6f3f95ca> Требования к fn_elem</a>
     - <a href=#59b5ac60badf4e3ba595673ee907cba8> Требования к os_sl</a>
     - <a href=#ac431112b4834f44b9a71e08dfb63a05> Тестируемость </a>
     - <a href=#c92abf0c09f346149465eece37024ecd> Расширяемость</a>
     - <a href=#16350b9fbade44d99b53fdc6e433f222> Производительность</a>
   - <a href=#a7ca0a018a014545a5b6f4160870115a> Типы и поведение</a>
   - <a href=#5c3f707a442b471f8cdccac67ba8eb74> Рекомендации RCM</a>
     - <a href=#2427e8492fe047f1a3e7a59ffc53fb9d> RCM_1 (изменения в оригинал)</a>
     - <a href=#b978eff6f2d2460a89bfa61bc27ff136> RCM_2 (служебные файлы)</a>
     - <a href=#16d0625a7db24341bc34a1e167a11a8a> RCM_3 (cокращения)</a>
     - <a href=#336d35ef871c47ddb06b556157dd95c5> RCM_4 (notmast_butlast)</a>
     - <a href=#d959a6886d054308971d78db1e9285f6> RCM_5 (mast_def_args)</a>
 - <a href=#5d9d42db086b4b1490fe4661bf40fbf3> Библиотека камней - Практика</a>
   - <a href=#387ea7b54c6d4ede95532a00226961f2> Понижение абстракций</a>
     - <a href=#c90551876aeb4bbab86646d888c5fc5f> Базовые принципы</a>
     - <a href=#d83f589b28eb434392f49fb04b873d72> Базовые технологии</a>
 - <a href=#ff6a8f7093ab46e4a6ade12266586c2b> Что здесь есть</a>
     - <a href=#0cb7e7dc6bb04d0986d6f874b544bf5a> Библиотека STL</a>
       - <a href=#346a633ae4fe40c18dcf7e5a2c01ce96> Поведение библиотеки STL</a>
         - <a href=#cd6f543d54a345168e8d2faac5afe022> Правила именования функций</a>
         - <a href=#2f8d0bc203e94fdb8ca59f098e3f3c67> Подсказки в именовании файлов или директорий</a>
         - <a href=#9641f6b33e9b4085b76267543b0efab8> Подсказки в расширениях файлов - wellknown - `wnext`</a>
     - <a href=#14c16db3234e41baa34ee7aa67e1fb66> Функция библиотеки STL</a>
       - <a href=#0a1f37de812c4c8b997ea7c45aa6ca46> Поведение функции STL</a>
   - <a href=#77ac4135dd72438c90987411f69913cf> Состав библиотеки STL</a>
       - <a href=#90741b9831ba43b9bd8fb34beb2bde1c> [Все функции STL (local)]</a>
       - <a href=#3bb23f023b4449db8c0d2e0ea77ff310> [Все функции STL (git)]</a>
   - <a href=#764a13435dbd42589b3af22e71515f13> Библиотека STL0</a>
     - <a href=#e9520802d0ad4391815e2749b45ab7ca> Поведение библиотеки STL0</a>
   - <a href=#b396aad0866e4c43bae3e0910d272f5a> Функция библиотеки STL0</a>
     - <a href=#bb29c64bfd2b416ca2e381a764905da3> Поведение функции STL0</a>
   - <a href=#2844219d7fac44fc9fbc1090cd6fd2fb> LCU</a>
     - <a href=#50dfaf7b72a54c3ba74fbe2bb3cb7114> Что это</a>
     - <a href=#57fecd216dd544aa8ed0e4af23b9aeb6> naming</a>
     - <a href=#6e352411be014abc9abcee96665b0bcb> add to flcu</a>
         - <a href=#9cc9154de66b40f0afc67d18e8705978> search among flcu</a>
   - <a href=#2970e183aaca44438a4015206ab6e1e9> Unsort</a>
       - <a href=#c253146bb11844248e39f3c2a0373b8c> Select (меню выбора) в параметре функции</a>
       - <a href=#e4453e878c3d45529341a5c525935e70> UPG stl_fn</a>
 - <a href=#be6690ad32144c0da23ae21ae77469ac> Install STL [and STL0]</a>
   - <a href=#3ef237c60c06497f8d00933bfd735e22> restore STL from .d.zip</a>
 - <a href=#e752eac167f248f6bc7679d0c2a1d6f2> Неупорядоченные заметки</a>
 - <a href=#bf664ec8fd57477db21d9f30c96fb2b1> Замечания об использовании функций</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/_cntx.ins.d /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/_cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732606281_26112024143121

DATX: 1732606281
-->


[001.001.first_head.txt.md](_cntx.ins.d/001.001.first_head.txt.md)



 <a id="6b0b3bbb94904005b2882ecbdba15afd"></a>
# ST_RC_D 


    

[001.pref.txt.md](_cntx.ins.d/001.01.ave_marcus.d/001.pref.txt.md)



 <a id="2cdbdefdb13f480fac009bab3461bb7e"></a>
# Да здравствует Марк tshemsedinov

Ave Marcus tshemsedinov* (лат.)

*) Cuius fides est lux (лат.)

    

[001.pref.txt.md](_cntx.ins.d/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.md)



 <a id="a7f4ba23f7a048418b59b3b8ddfa8293"></a>
## Благодарность

Gratia (лат.)

- vitlav
- larchanka
- a3rus


[001.pef.txt.md](_cntx.ins.d/002.01.manifesto.d/001.pef.txt.md)



 <a id="a746da8e08f64493969fd2c067358e1e"></a>
# Явление миру 

Manifesto

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.md](_cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.md)



 <a id="9addba81568f4afa8158fa40009c5b93"></a>
## Шаги по камням

Gradus in saxa (лат.)


[001.txt.md](_cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.md)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.md](_cntx.ins.d/002.02.sfondo.d/001.pref.txt.md)



 <a id="7169e442b5cb459e844ac580fdfa78b6"></a>
# Фон 

Sfondo (лат.)  

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.md](_cntx.ins.d/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.md)



 <a id="15a67b66fa6a457da2390206d9bfbd0f"></a>
## Культурологический контекст

Contextus culturalis (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.md](_cntx.ins.d/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.md)



 <a id="1bdf2c5a63ac44c19e1dabe5e3599e49"></a>
## Огонь внутри

Fuoco dentro (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.md](_cntx.ins.d/003.quid_possum_facere.d/001.pref.txt.md)



 <a id="72647434f52e40f2b0e772716ac8a3e2"></a>
# Что я могу сделать

Quid possum facere (лат.)


[001.txt.md](_cntx.ins.d/003.quid_possum_facere.d/002.d/001.txt.md)




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
 
    

[001.pref.txt.md](_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/001.pref.txt.md)



 <a id="4fd665ca08d14685bd5260d4a6377fdc"></a>
# Библиотека камней - Теория

Bibliotheca Lapidum - Theoria (лат.)
    


[001.pref.txt.md](_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.md)



 <a id="c372c001b6a24487863c6f4f0be1d685"></a>
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
    

[001.pref.txt.md](_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/003.quid_est.d/001.pref.txt.md)



 <a id="3bc73166368346409478f09da017f8c0"></a>
## Что это

Quid est (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.md](_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.md)



 <a id="84c0eab4995c48848ffb986c6b2bad76"></a>
## Ограничения

Limitations (лат.)

 <a id="fd04ac00ff8d47edba35dbbb36aa8966"></a>
### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
 <a id="c53c4a6f542941e39944c85b6f3f95ca"></a>
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
 <a id="59b5ac60badf4e3ba595673ee907cba8"></a>
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

 <a id="ac431112b4834f44b9a71e08dfb63a05"></a>
### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

 <a id="c92abf0c09f346149465eece37024ecd"></a>
### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

 <a id="16350b9fbade44d99b53fdc6e433f222"></a>
### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.md](_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.md)



 <a id="a7ca0a018a014545a5b6f4160870115a"></a>
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

[001.pref.txt.md](_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/001.pref.txt.md)




 <a id="5c3f707a442b471f8cdccac67ba8eb74"></a>
## Рекомендации RCM

    

[002.rcm_1.txt.md](_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/002.rcm_1.txt.md)



 <a id="2427e8492fe047f1a3e7a59ffc53fb9d"></a>
### RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/003.rcm_2.txt.md)



 <a id="b978eff6f2d2460a89bfa61bc27ff136"></a>
### RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/004.rcm_3.txt.md)



 <a id="16d0625a7db24341bc34a1e167a11a8a"></a>
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
    

[005.rcm_4.txt.md](_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/005.rcm_4.txt.md)



 <a id="336d35ef871c47ddb06b556157dd95c5"></a>
### RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/006.rcm_5.txt.md)



 <a id="d959a6886d054308971d78db1e9285f6"></a>
### RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](_cntx.ins.d/005.bibliotheca_lapidum_usu.d/001.pref.txt.md)



 <a id="5d9d42db086b4b1490fe4661bf40fbf3"></a>
# Библиотека камней - Практика

Bibliotheca Lapidum - Usu (лат.)

  

[001.pref.txt.md](_cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.md)



 <a id="387ea7b54c6d4ede95532a00226961f2"></a>
## Понижение абстракций

Deminutio abstractionis (лат.)


    

[001.pref.txt.md](_cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.md)



 <a id="c90551876aeb4bbab86646d888c5fc5f"></a>
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



[001.pref.txt.md](_cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/003.basic_technologiae.txt.d/001.pref.txt.md)



 <a id="d83f589b28eb434392f49fb04b873d72"></a>
### Базовые технологии

Basic technologiae (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.md](_cntx.ins.d/701.quid_est_hic.d/001.pref.txt.md)



 <a id="ff6a8f7093ab46e4a6ade12266586c2b"></a>
# Что здесь есть

Quid est hic (лат.)


    

[001.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/001.txt.md)



 <a id="0cb7e7dc6bb04d0986d6f874b544bf5a"></a>
### Библиотека STL

    

[001.pref.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/001.pref.txt.md)



 <a id="346a633ae4fe40c18dcf7e5a2c01ce96"></a>
#### Поведение библиотеки STL



[002.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/002.txt.md)



 <a id="cd6f543d54a345168e8d2faac5afe022"></a>
##### Правила именования функций

- если [fn_stl] результатом является только возврат 0 или 1 при действии и производится [flow], то именование следующее:

    `_is_[flow]`

  - например определяется ответ `y` или `n` в качестве утверждения, то именование следующее:

    `_is_yes`

- если [fn_stl] n-обертка (в системе уже есть n-1 оберток) над [fn_elem] и производится [w_flow] изменение поведения, то именование следующее:
     
     `_[fn_elem]_wn_[w_flow]`

  - например первая обертка над source состоящая в проверке существования запускаемого файла, то имя следующее:   

    `_source_w1_isf`


    


[003.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/003.txt.md)



 <a id="2f8d0bc203e94fdb8ca59f098e3f3c67"></a>
##### Подсказки в именовании файлов или директорий

- если в имени файла или директории содержится `.ax.`, то удаление файла или файлов из директории будет иметь негативные последствия - допускается изменение файла или добавление файлов в директорию - иными словами ссылки на эти сущности используются в STL 

    

[004.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/004.txt.md)



 <a id="9641f6b33e9b4085b76267543b0efab8"></a>
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
  


    

[001.pref.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/001.pref.txt.md)



 <a id="14c16db3234e41baa34ee7aa67e1fb66"></a>
### Функция библиотеки STL
    

[001.pref.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/001.pref.txt.md)



 <a id="0a1f37de812c4c8b997ea7c45aa6ca46"></a>
#### Поведение функции STL
    

[002.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/002.txt.md)




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
    

[001.03.pref.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/001.03.pref.txt.md)



 <a id="77ac4135dd72438c90987411f69913cf"></a>
## Состав библиотеки STL

 <a id="90741b9831ba43b9bd8fb34beb2bde1c"></a>
#### [Все функции STL (local)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.local.md)
 <a id="3bb23f023b4449db8c0d2e0ea77ff310"></a>
#### [Все функции STL (git)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.git.md)

[001.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/003.d/001.txt.md)



 <a id="764a13435dbd42589b3af22e71515f13"></a>
## Библиотека STL0

    

[001.pref.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/003.d/002.d/001.pref.txt.md)



 <a id="e9520802d0ad4391815e2749b45ab7ca"></a>
### Поведение библиотеки STL0



[001.pref.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/004.d/001.pref.txt.md)



 <a id="b396aad0866e4c43bae3e0910d272f5a"></a>
## Функция библиотеки STL0
    

[001.pref.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/004.d/002.d/001.pref.txt.md)



 <a id="bb29c64bfd2b416ca2e381a764905da3"></a>
### Поведение функции STL0
    

[001.pref.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/005.d/001.pref.txt.md)



 <a id="2844219d7fac44fc9fbc1090cd6fd2fb"></a>
## LCU
    

[099.upg_fn.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/005.d/099.upg_fn.txt.md)



 <a id="50dfaf7b72a54c3ba74fbe2bb3cb7114"></a>
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
 <a id="57fecd216dd544aa8ed0e4af23b9aeb6"></a>
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
 <a id="6e352411be014abc9abcee96665b0bcb"></a>
### add to flcu

- nrdx
- tags
- main

 <a id="9cc9154de66b40f0afc67d18e8705978"></a>
##### search among flcu


    

[001.pref.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/099.d/001.pref.txt.md)



 <a id="2970e183aaca44438a4015206ab6e1e9"></a>
## Unsort
    

[002.select.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/099.d/002.select.txt.md)



 <a id="c253146bb11844248e39f3c2a0373b8c"></a>
#### Select (меню выбора) в параметре функции

- Если параметром функции является меню, то
  - 0 означает, что при вызове user сможет в интерактивном меню select выбрать нужный пункт меню - после этого в контекст функции попадет сущность соответствующая этому пункту (путь к выбранному файлу, срока аргументов и т.п.)
  - N сразу указывает на пункт меню 

- `_d2mm` пример выбора файла из директории
    

[003.upg_fn.txt.md](_cntx.ins.d/701.quid_est_hic.d/002.d/099.d/003.upg_fn.txt.md)



 <a id="e4453e878c3d45529341a5c525935e70"></a>
#### UPG stl_fn

- для upg_[name_fn]:
  - создаем [name_fn]_
  - тестируем на наследование поведения
    - делаем bcp [name_fn] с перемещением файлов
    - заменяем [name_fn]_ на [name_fn] во сех файлах и директориях [name_fn]_ (like _gig_st_rc_fn _XXX -> [name_fn])
    

[001.pref.txt.md](_cntx.ins.d/801.install_stl.d/001.pref.txt.md)



 <a id="be6690ad32144c0da23ae21ae77469ac"></a>
# Install STL [and STL0]
    

[002.install_cli.txt.md](_cntx.ins.d/801.install_stl.d/002.install_cli.txt.md)



    ~ $ wget https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/main_install_stl.sh
    ~ $ . main_install_stl.sh

or

    ~ $ wget https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%2Fmain_install_stl.sh
    ~ $ . main_install_stl.sh

[003.pref.txt.md](_cntx.ins.d/801.install_stl.d/003.pref.txt.md)



 <a id="3ef237c60c06497f8d00933bfd735e22"></a>
## restore STL from .d.zip
    

[004.restore_dot_d_cli.txt.md](_cntx.ins.d/801.install_stl.d/004.restore_dot_d_cli.txt.md)



    $ curl https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/restore_stl_from_zip.sh | sh

or

    $ curl https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%restore_stl_from_zip.sh | sh
    

[001.pref.txt.md](_cntx.ins.d/901.unsort.d/001.pref.txt.md)



 <a id="e752eac167f248f6bc7679d0c2a1d6f2"></a>
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



[001.pref.txt.md](_cntx.ins.d/902.using_note.d/001.pref.txt.md)



 <a id="bf664ec8fd57477db21d9f30c96fb2b1"></a>
# Замечания об использовании функций

- echo | _st_exit подавлние остановки при экстренном выходе по ^C
- _is_yes  если только вопрос о выходе то это только _st_exit , 
    использовать _is_yes только для ветвлений

- в следующих версиях использзовать `-` вместо `@` в качестве пустого аргумента
- заплнитель пустых директорий не файл 0, а _0     



