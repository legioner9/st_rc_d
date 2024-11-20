
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
 - <a href=#afa739a1428749e796fb0a597fb2a12f> ST_RC_D </a>
 - <a href=#b49cda73bb4a446b843b18d08c8cbee0> Да здравствует Марк tshemsedinov</a>
   - <a href=#d7ed5695a5fa4ce4bb3a6181df1ba84c> Благодарность</a>
 - <a href=#375fb0c6b18643d9a1a9dfe55675fb24> Явление миру </a>
   - <a href=#397176970857472690bca2f5a364b07a> Шаги по камням</a>
 - <a href=#e4dccc674c8b4b3ab52608d268ff2e64> Фон </a>
   - <a href=#b3d8127697b94b13b6cc85df454ebdba> Культурологический контекст</a>
   - <a href=#84157829d7174f5ab01df75903cdb613> Огонь внутри</a>
 - <a href=#7cc2638356cf41ad925a4e8b7bc84103> Что я могу сделать</a>
 - <a href=#29010072e1e14ee4a3d17caf985ae49e> Библиотека камней - Теория</a>
   - <a href=#3cbce160fedd4c9abe10589c7f012467> Словарь</a>
   - <a href=#fc388057d7f64da3a8397aef2a2f9abd> Что это</a>
   - <a href=#d3e4f7ff5078451ab25a1da93bff83a9> Ограничения</a>
     - <a href=#2d0df890753342229e3f9b95e09264f1> Ограничение сложности stl</a>
     - <a href=#d4f5fc5bbecf4e9c893b22750e310467> Требования к fn_elem</a>
     - <a href=#133f1f05179a4294b2b04b5529a1aa6d> Требования к os_sl</a>
     - <a href=#11e1504ecd424e97ad95ec360fb33318> Тестируемость </a>
     - <a href=#bfcd3f1c208446a19d89963512e09ed0> Расширяемость</a>
     - <a href=#d223a8e1122a4e828bf81ed9455a1d09> Производительность</a>
   - <a href=#88b56df9ba9b44f5b55b830d220b04be> Типы и поведение</a>
   - <a href=#4ebbecfbf775462581b21fb92114ccd5> Рекомендации RCM</a>
     - <a href=#58ed43a8ab9448a3ad48ec486baf478a> RCM_1 (изменения в оригинал)</a>
     - <a href=#43df919077c14459981ebe87c9013d92> RCM_2 (служебные файлы)</a>
     - <a href=#0d52a7369b1b4fd199452a507a07ad5a> RCM_3 (cокращения)</a>
     - <a href=#7fadca529f6f48deba400fbe76745fc8> RCM_4 (notmast_butlast)</a>
     - <a href=#aeb4140401d144f3ae30b6d116b293d3> RCM_5 (mast_def_args)</a>
 - <a href=#52ce705edaf84fcea97411b21323604a> Библиотека камней - Практика</a>
   - <a href=#6f367500e1af417d893656f2da550552> Понижение абстракций</a>
     - <a href=#b88b8bd503224093bdb68926bfaa89f0> Базовые принципы</a>
     - <a href=#822441e93f084ca9adc792e03a49915a> Базовые технологии</a>
 - <a href=#75da9f0370fc452ca5a6f52cc54ae191> Что здесь есть</a>
     - <a href=#288b5b302c9f4c938611f13f582f4cf7> Библиотека STL</a>
       - <a href=#ad78d44503914fa3831e4a083ad5fdcd> Поведение библиотеки STL</a>
         - <a href=#169730a59651460c9491fd69fcdf34f6> Правила именования функций</a>
         - <a href=#24ecb0d5c4664495a613a0d60c78db05> Подсказки в именовании файлов или директорий</a>
         - <a href=#51f1268607994ae6b2cf6f052a0d90da> Подсказки в расширениях файлов - wellknown - `wnext`</a>
     - <a href=#31f5d985517f4da48800b9ca98ccee09> Функция библиотеки STL</a>
       - <a href=#926b7f707aa54f96af57bcc0ec98e22a> Поведение функции STL</a>
   - <a href=#c9bab506a528433e8a28c346a468ed7e> Состав библиотеки STL</a>
       - <a href=#548308674e1040288d5ae932fe238319> [Все функции STL (local)]</a>
       - <a href=#431981a81b3241149403ab98d4a75a10> [Все функции STL (git)]</a>
   - <a href=#ba6b4d2dfb3c42ee8014f58bd5ec6359> Библиотека STL0</a>
     - <a href=#1e248f81a34a47a78e4829472f6aa9ea> Поведение библиотеки STL0</a>
   - <a href=#9cd45f51ba1b4c3392b23612066b052a> Функция библиотеки STL0</a>
     - <a href=#fb1071f5df33405c87b84f356ab359bb> Поведение функции STL0</a>
   - <a href=#8f92bce3cfa04f9b9db78266329f7b5e> LCU</a>
     - <a href=#ef2b7ef9db4548ffac92678ceaf25a74> Что это</a>
     - <a href=#4d689af1a53d4cc697b08d8ba15dd559> naming</a>
     - <a href=#02172e3577b84704b37eca8ebf3e4642> add to flcu</a>
         - <a href=#9f55da8ff065445394799cf87a229b89> search among flcu</a>
   - <a href=#eb8452c7bd8a4382a261df137472144a> Unsort</a>
       - <a href=#d16812f1e44a46a1946a03f1a17a29b2> Select (меню выбора) в параметре функции</a>
       - <a href=#79d8809752ec44689c4f674659c56e9f> UPG stl_fn</a>
 - <a href=#990e7482cc934fb49850545f1f4e9403> Install STL [and STL0]</a>
   - <a href=#59a3a8f270224ec8abaafa5348c576dd> restore STL from .d.zip</a>
 - <a href=#53d7bb8d1a344985a52fc04ee64fceb3> Неупорядоченные заметки</a>
 - <a href=#a92a8c9d91f4403d86e958bb238b8f6c> Замечания об использовании функций</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/cntx.ins.d /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732085377_20112024134937

DATX: 1732085377
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="afa739a1428749e796fb0a597fb2a12f"></a>
# ST_RC_D 


    

[001.pref.txt.md](cntx.ins.d/001.01.ave_marcus.d/001.pref.txt.md)



 <a id="b49cda73bb4a446b843b18d08c8cbee0"></a>
# Да здравствует Марк tshemsedinov

Ave Marcus tshemsedinov* (лат.)

*) Cuius fides est lux (лат.)

    

[001.pref.txt.md](cntx.ins.d/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.md)



 <a id="d7ed5695a5fa4ce4bb3a6181df1ba84c"></a>
## Благодарность

Gratia (лат.)

- vitlav
- larchanka
- a3rus
    

[001.pef.txt.md](cntx.ins.d/002.01.manifesto.d/001.pef.txt.md)



 <a id="375fb0c6b18643d9a1a9dfe55675fb24"></a>
# Явление миру 

Manifesto

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.md](cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.md)



 <a id="397176970857472690bca2f5a364b07a"></a>
## Шаги по камням

Gradus in saxa (лат.)
   

[001.txt.md](cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.md)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/001.pref.txt.md)



 <a id="e4dccc674c8b4b3ab52608d268ff2e64"></a>
# Фон 

Sfondo (лат.)  

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.md)



 <a id="b3d8127697b94b13b6cc85df454ebdba"></a>
## Культурологический контекст

Contextus culturalis (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.md)



 <a id="84157829d7174f5ab01df75903cdb613"></a>
## Огонь внутри

Fuoco dentro (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.md](cntx.ins.d/003.quid_possum_facere.d/001.pref.txt.md)



 <a id="7cc2638356cf41ad925a4e8b7bc84103"></a>
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



 <a id="29010072e1e14ee4a3d17caf985ae49e"></a>
# Библиотека камней - Теория

Bibliotheca Lapidum - Theoria (лат.)
    


[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.md)



 <a id="3cbce160fedd4c9abe10589c7f012467"></a>
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



 <a id="fc388057d7f64da3a8397aef2a2f9abd"></a>
## Что это

Quid est (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.md)



 <a id="d3e4f7ff5078451ab25a1da93bff83a9"></a>
## Ограничения

Limitations (лат.)

 <a id="2d0df890753342229e3f9b95e09264f1"></a>
### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
 <a id="d4f5fc5bbecf4e9c893b22750e310467"></a>
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
 <a id="133f1f05179a4294b2b04b5529a1aa6d"></a>
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

 <a id="11e1504ecd424e97ad95ec360fb33318"></a>
### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

 <a id="bfcd3f1c208446a19d89963512e09ed0"></a>
### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

 <a id="d223a8e1122a4e828bf81ed9455a1d09"></a>
### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.md)



 <a id="88b56df9ba9b44f5b55b830d220b04be"></a>
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




 <a id="4ebbecfbf775462581b21fb92114ccd5"></a>
## Рекомендации RCM

    

[002.rcm_1.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/002.rcm_1.txt.md)



 <a id="58ed43a8ab9448a3ad48ec486baf478a"></a>
### RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/003.rcm_2.txt.md)



 <a id="43df919077c14459981ebe87c9013d92"></a>
### RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/004.rcm_3.txt.md)



 <a id="0d52a7369b1b4fd199452a507a07ad5a"></a>
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



 <a id="7fadca529f6f48deba400fbe76745fc8"></a>
### RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/006.rcm_5.txt.md)



 <a id="aeb4140401d144f3ae30b6d116b293d3"></a>
### RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/001.pref.txt.md)



 <a id="52ce705edaf84fcea97411b21323604a"></a>
# Библиотека камней - Практика

Bibliotheca Lapidum - Usu (лат.)

  

[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.md)



 <a id="6f367500e1af417d893656f2da550552"></a>
## Понижение абстракций

Deminutio abstractionis (лат.)


    

[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.md)



 <a id="b88b8bd503224093bdb68926bfaa89f0"></a>
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



 <a id="822441e93f084ca9adc792e03a49915a"></a>
### Базовые технологии

Basic technologiae (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/001.pref.txt.md)



 <a id="75da9f0370fc452ca5a6f52cc54ae191"></a>
# Что здесь есть

Quid est hic (лат.)


    

[001.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/001.txt.md)



 <a id="288b5b302c9f4c938611f13f582f4cf7"></a>
### Библиотека STL

    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/001.pref.txt.md)



 <a id="ad78d44503914fa3831e4a083ad5fdcd"></a>
#### Поведение библиотеки STL



[002.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/002.txt.md)



 <a id="169730a59651460c9491fd69fcdf34f6"></a>
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



 <a id="24ecb0d5c4664495a613a0d60c78db05"></a>
##### Подсказки в именовании файлов или директорий

- если в имени файла или директории содержится `.ax.`, то удаление файла или файлов из директории будет иметь негативные последствия - допускается изменение файла или добавление файлов в директорию - иными словами ссылки на эти сущности используются в STL 

    

[004.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/004.txt.md)



 <a id="51f1268607994ae6b2cf6f052a0d90da"></a>
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



 <a id="31f5d985517f4da48800b9ca98ccee09"></a>
### Функция библиотеки STL
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/001.pref.txt.md)



 <a id="926b7f707aa54f96af57bcc0ec98e22a"></a>
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



 <a id="c9bab506a528433e8a28c346a468ed7e"></a>
## Состав библиотеки STL

 <a id="548308674e1040288d5ae932fe238319"></a>
#### [Все функции STL (local)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.local.md)
 <a id="431981a81b3241149403ab98d4a75a10"></a>
#### [Все функции STL (git)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.git.md)

[001.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/003.d/001.txt.md)



 <a id="ba6b4d2dfb3c42ee8014f58bd5ec6359"></a>
## Библиотека STL0

    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/003.d/002.d/001.pref.txt.md)



 <a id="1e248f81a34a47a78e4829472f6aa9ea"></a>
### Поведение библиотеки STL0



[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/004.d/001.pref.txt.md)



 <a id="9cd45f51ba1b4c3392b23612066b052a"></a>
## Функция библиотеки STL0
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/004.d/002.d/001.pref.txt.md)



 <a id="fb1071f5df33405c87b84f356ab359bb"></a>
### Поведение функции STL0
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/005.d/001.pref.txt.md)



 <a id="8f92bce3cfa04f9b9db78266329f7b5e"></a>
## LCU
    

[099.upg_fn.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/005.d/099.upg_fn.txt.md)



 <a id="ef2b7ef9db4548ffac92678ceaf25a74"></a>
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
 <a id="4d689af1a53d4cc697b08d8ba15dd559"></a>
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
 <a id="02172e3577b84704b37eca8ebf3e4642"></a>
### add to flcu

- nrdx
- tags
- main

 <a id="9f55da8ff065445394799cf87a229b89"></a>
##### search among flcu


    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/001.pref.txt.md)



 <a id="eb8452c7bd8a4382a261df137472144a"></a>
## Unsort
    

[002.select.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/002.select.txt.md)



 <a id="d16812f1e44a46a1946a03f1a17a29b2"></a>
#### Select (меню выбора) в параметре функции

- Если параметром функции является меню, то
  - 0 означает, что при вызове user сможет в интерактивном меню select выбрать нужный пункт меню - после этого в контекст функции попадет сущность соответствующая этому пункту (путь к выбранному файлу, срока аргументов и т.п.)
  - N сразу указывает на пункт меню 

- `_d2mm` пример выбора файла из директории
    

[003.upg_fn.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/003.upg_fn.txt.md)



 <a id="79d8809752ec44689c4f674659c56e9f"></a>
#### UPG stl_fn

- для upg_[name_fn]:
  - создаем [name_fn]_
  - тестируем на наследование поведения
    - делаем bcp [name_fn] с перемещением файлов
    - заменяем [name_fn]_ на [name_fn] во сех файлах и директориях [name_fn]_ (like _gig_st_rc_fn _XXX -> [name_fn])
    

[001.pref.txt.md](cntx.ins.d/801.install_stl.d/001.pref.txt.md)



 <a id="990e7482cc934fb49850545f1f4e9403"></a>
# Install STL [and STL0]
    

[002.install_cli.txt.md](cntx.ins.d/801.install_stl.d/002.install_cli.txt.md)



    ~ $ wget https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/main_install_stl.sh
    ~ $ . main_install_stl.sh

or

    ~ $ wget https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%2Fmain_install_stl.sh
    ~ $ . main_install_stl.sh

[003.pref.txt.md](cntx.ins.d/801.install_stl.d/003.pref.txt.md)



 <a id="59a3a8f270224ec8abaafa5348c576dd"></a>
## restore STL from .d.zip
    

[004.restore_dot_d_cli.txt.md](cntx.ins.d/801.install_stl.d/004.restore_dot_d_cli.txt.md)



    $ curl https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/restore_stl_from_zip.sh | sh

or

    $ curl https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%restore_stl_from_zip.sh | sh
    

[001.pref.txt.md](cntx.ins.d/901.unsort.d/001.pref.txt.md)



 <a id="53d7bb8d1a344985a52fc04ee64fceb3"></a>
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



 <a id="a92a8c9d91f4403d86e958bb238b8f6c"></a>
# Замечания об использовании функций

- echo | _st_exit подавлние остановки при экстренном выходе по ^C
- _is_yes  если только вопрос о выходе то это только _st_exit , 
    использовать _is_yes только для ветвлений

- в следующих версиях использзовать `-` вместо `@` в качестве пустого аргумента
- заплнитель пустых директорий не файл 0, а _0     



