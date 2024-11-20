
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
 - <a href=#02a0feec7e3348dfbb0986f896b52143> ST_RC_D </a>
 - <a href=#e9bf93769f1948f5a7908d506f77d67c> Да здравствует Марк tshemsedinov</a>
   - <a href=#74158fdea0d14cdd8f3dfb4ba8e5c938> Благодарность</a>
 - <a href=#bcf11337af4b447f8a2d113d6ae998c7> Явление миру </a>
   - <a href=#d185b5334ca44df8964e77d6dc9a1731> Шаги по камням</a>
 - <a href=#b533530f985d42d6ac6751f217df18c4> Фон </a>
   - <a href=#4d4486b9469b4c2399508e1d9643165d> Культурологический контекст</a>
   - <a href=#4a8063ff4ece4c5a8fdff3eeb31fc289> Огонь внутри</a>
 - <a href=#4ed6ef02c4824798a902393ce6181dc6> Что я могу сделать</a>
 - <a href=#0c0fa359b4ef43a58382078ea21c7704> Библиотека камней - Теория</a>
   - <a href=#232dbdc257394834b39074d79a7af6aa> Словарь</a>
   - <a href=#07300bc35f4147f7bca9070c867c3b14> Что это</a>
   - <a href=#ddd31a49f0114a2185f17777b4938538> Ограничения</a>
     - <a href=#c1428387a633492abec2b24c20feb994> Ограничение сложности stl</a>
     - <a href=#19d0eb66fbc24d209bd69fab89653bd8> Требования к fn_elem</a>
     - <a href=#2dc385c8dc48402f9d472d33c153312f> Требования к os_sl</a>
     - <a href=#aa73234e73da48ef940d77fa9bfbefbd> Тестируемость </a>
     - <a href=#0c6ef778bf824169b828a95ae6b8918b> Расширяемость</a>
     - <a href=#fda1e2915bec405690b441acd096bd4c> Производительность</a>
   - <a href=#4890fd4c53534eca91b798498a4bd411> Типы и поведение</a>
   - <a href=#1b35d3499adf45df9e86f28296878362> Рекомендации RCM</a>
     - <a href=#4e86e50508854ebc8486e3ed7a0bffef> RCM_1 (изменения в оригинал)</a>
     - <a href=#cc24354ef34547e884e777b3f8f4c0f0> RCM_2 (служебные файлы)</a>
     - <a href=#8f2715ebac4e40a58f3f974e2f7cd441> RCM_3 (cокращения)</a>
     - <a href=#446eb48fc7fd4da49a5416d67de0fc72> RCM_4 (notmast_butlast)</a>
     - <a href=#e89c7246b88d4230ba49dd5581dac004> RCM_5 (mast_def_args)</a>
 - <a href=#76a678dee3254b0a82d6573176eadada> Библиотека камней - Практика</a>
   - <a href=#9007039937fb42b7beaaeb5de4012036> Понижение абстракций</a>
     - <a href=#044f548c7f864755abd8f4d9b4b6f6c5> Базовые принципы</a>
     - <a href=#e157e3e719b54e2e8e530329cf4f2e75> Базовые технологии</a>
 - <a href=#d3d917fc6ac54702b9caa805c5b8acdc> Что здесь есть</a>
     - <a href=#6fb9dab6ec2042f7aed127a327cea6e5> Библиотека STL</a>
       - <a href=#8a58d3cbf9944e99b9e4f382ef678093> Поведение библиотеки STL</a>
         - <a href=#32f269fca5bf4bcead21de7b93229720> Правила именования функций</a>
         - <a href=#e1813cbad42840c6aefeaefd9d5087d7> Подсказки в именовании файлов или директорий</a>
         - <a href=#889f43c206c54b089885da5234921786> Подсказки в расширениях файлов - wellknown - `wnext`</a>
     - <a href=#2c5300779d9d4037a1a9e7d24821abdd> Функция библиотеки STL</a>
       - <a href=#1d1d9c809277485f9da6806d0b036c22> Поведение функции STL</a>
   - <a href=#845544ac697b4376846fb0a71448e468> Состав библиотеки STL</a>
       - <a href=#3202d74fdacc43caa4bdbe20fc94eba0> [Все функции STL (local)]</a>
       - <a href=#4b717d97dc034823b42c8b242631813c> [Все функции STL (git)]</a>
   - <a href=#bace26a480464025ab6c0540cf91f693> Библиотека STL0</a>
     - <a href=#463e1974ddc4479394b3abc19cc9da99> Поведение библиотеки STL0</a>
   - <a href=#739e8fbe19c047fe93031ac0cd3e2216> Функция библиотеки STL0</a>
     - <a href=#b756891982d5423abe9ca92d80f7ab22> Поведение функции STL0</a>
   - <a href=#7d47c880f4984e5a92ad27fed40a207e> LCU</a>
     - <a href=#0b789a13aa494e84b3ba1aa1dbc41db7> Что это</a>
     - <a href=#4b7c3014aa3d4521bfa56ad64a1eb27a> naming</a>
     - <a href=#7bba338ad6bb4b56bb569de40274dbdb> add to flcu</a>
         - <a href=#e859611caa8a43cd98b8fe93a7d36613> search among flcu</a>
   - <a href=#e84e9d4a0ec84dedbc0a5918d324a7c5> Unsort</a>
       - <a href=#adfcf8ec5799415093bf4c7a3eb54ad7> Select (меню выбора) в параметре функции</a>
       - <a href=#c3cd9b26ccaf47a98bae8e1156e9180c> UPG stl_fn</a>
 - <a href=#3c2b365213aa4f9c84c184478c456f08> Install STL [and STL0]</a>
   - <a href=#77255b44c6be4e80a627d23b8bc85eab> restore STL from .d.zip</a>
 - <a href=#73775b1922ac4d0cb709d8f8963d512d> Неупорядоченные заметки</a>
 - <a href=#cf9241b5e8ec40c4952b2811edd9e79d> Замечания об использовании функций</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/cntx.ins.d /home/st/REPOBARE/_repo/st_rc_d/README.md 2

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732085388_20112024134948

DATX: 1732085388
-->


[001.001.first_head.txt.md](.d/.opus/readme.opus/cntx.ins.d/001.001.first_head.txt.md)



 <a id="02a0feec7e3348dfbb0986f896b52143"></a>
# ST_RC_D 


    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/001.01.ave_marcus.d/001.pref.txt.md)



 <a id="e9bf93769f1948f5a7908d506f77d67c"></a>
# Да здравствует Марк tshemsedinov

Ave Marcus tshemsedinov* (лат.)

*) Cuius fides est lux (лат.)

    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.md)



 <a id="74158fdea0d14cdd8f3dfb4ba8e5c938"></a>
## Благодарность

Gratia (лат.)

- vitlav
- larchanka
- a3rus
    

[001.pef.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.01.manifesto.d/001.pef.txt.md)



 <a id="bcf11337af4b447f8a2d113d6ae998c7"></a>
# Явление миру 

Manifesto

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.md)



 <a id="d185b5334ca44df8964e77d6dc9a1731"></a>
## Шаги по камням

Gradus in saxa (лат.)
   

[001.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.md)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.02.sfondo.d/001.pref.txt.md)



 <a id="b533530f985d42d6ac6751f217df18c4"></a>
# Фон 

Sfondo (лат.)  

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.md)



 <a id="4d4486b9469b4c2399508e1d9643165d"></a>
## Культурологический контекст

Contextus culturalis (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.md)



 <a id="4a8063ff4ece4c5a8fdff3eeb31fc289"></a>
## Огонь внутри

Fuoco dentro (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/003.quid_possum_facere.d/001.pref.txt.md)



 <a id="4ed6ef02c4824798a902393ce6181dc6"></a>
# Что я могу сделать

Quid possum facere (лат.)


[001.txt.md](.d/.opus/readme.opus/cntx.ins.d/003.quid_possum_facere.d/002.d/001.txt.md)




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
 
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/001.pref.txt.md)



 <a id="0c0fa359b4ef43a58382078ea21c7704"></a>
# Библиотека камней - Теория

Bibliotheca Lapidum - Theoria (лат.)
    


[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.md)



 <a id="232dbdc257394834b39074d79a7af6aa"></a>
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
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/003.quid_est.d/001.pref.txt.md)



 <a id="07300bc35f4147f7bca9070c867c3b14"></a>
## Что это

Quid est (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.md)



 <a id="ddd31a49f0114a2185f17777b4938538"></a>
## Ограничения

Limitations (лат.)

 <a id="c1428387a633492abec2b24c20feb994"></a>
### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
 <a id="19d0eb66fbc24d209bd69fab89653bd8"></a>
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
 <a id="2dc385c8dc48402f9d472d33c153312f"></a>
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

 <a id="aa73234e73da48ef940d77fa9bfbefbd"></a>
### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

 <a id="0c6ef778bf824169b828a95ae6b8918b"></a>
### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

 <a id="fda1e2915bec405690b441acd096bd4c"></a>
### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.md)



 <a id="4890fd4c53534eca91b798498a4bd411"></a>
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

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/001.pref.txt.md)




 <a id="1b35d3499adf45df9e86f28296878362"></a>
## Рекомендации RCM

    

[002.rcm_1.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/002.rcm_1.txt.md)



 <a id="4e86e50508854ebc8486e3ed7a0bffef"></a>
### RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/003.rcm_2.txt.md)



 <a id="cc24354ef34547e884e777b3f8f4c0f0"></a>
### RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/004.rcm_3.txt.md)



 <a id="8f2715ebac4e40a58f3f974e2f7cd441"></a>
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
    

[005.rcm_4.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/005.rcm_4.txt.md)



 <a id="446eb48fc7fd4da49a5416d67de0fc72"></a>
### RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/006.rcm_5.txt.md)



 <a id="e89c7246b88d4230ba49dd5581dac004"></a>
### RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/005.bibliotheca_lapidum_usu.d/001.pref.txt.md)



 <a id="76a678dee3254b0a82d6573176eadada"></a>
# Библиотека камней - Практика

Bibliotheca Lapidum - Usu (лат.)

  

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.md)



 <a id="9007039937fb42b7beaaeb5de4012036"></a>
## Понижение абстракций

Deminutio abstractionis (лат.)


    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.md)



 <a id="044f548c7f864755abd8f4d9b4b6f6c5"></a>
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



[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/003.basic_technologiae.txt.d/001.pref.txt.md)



 <a id="e157e3e719b54e2e8e530329cf4f2e75"></a>
### Базовые технологии

Basic technologiae (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/001.pref.txt.md)



 <a id="d3d917fc6ac54702b9caa805c5b8acdc"></a>
# Что здесь есть

Quid est hic (лат.)


    

[001.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/001.txt.md)



 <a id="6fb9dab6ec2042f7aed127a327cea6e5"></a>
### Библиотека STL

    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/001.pref.txt.md)



 <a id="8a58d3cbf9944e99b9e4f382ef678093"></a>
#### Поведение библиотеки STL



[002.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/002.txt.md)



 <a id="32f269fca5bf4bcead21de7b93229720"></a>
##### Правила именования функций

- если [fn_stl] результатом является только возврат 0 или 1 при действии и производится [flow], то именование следующее:

    `_is_[flow]`

  - например определяется ответ `y` или `n` в качестве утверждения, то именование следующее:

    `_is_yes`

- если [fn_stl] n-обертка (в системе уже есть n-1 оберток) над [fn_elem] и производится [w_flow] изменение поведения, то именование следующее:
     
     `_[fn_elem]_wn_[w_flow]`

  - например первая обертка над source состоящая в проверке существования запускаемого файла, то имя следующее:   

    `_source_w1_isf`


    


[003.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/003.txt.md)



 <a id="e1813cbad42840c6aefeaefd9d5087d7"></a>
##### Подсказки в именовании файлов или директорий

- если в имени файла или директории содержится `.ax.`, то удаление файла или файлов из директории будет иметь негативные последствия - допускается изменение файла или добавление файлов в директорию - иными словами ссылки на эти сущности используются в STL 

    

[004.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/004.txt.md)



 <a id="889f43c206c54b089885da5234921786"></a>
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
  


    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/001.pref.txt.md)



 <a id="2c5300779d9d4037a1a9e7d24821abdd"></a>
### Функция библиотеки STL
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/001.pref.txt.md)



 <a id="1d1d9c809277485f9da6806d0b036c22"></a>
#### Поведение функции STL
    

[002.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/002.txt.md)




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
    

[001.03.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.03.pref.txt.md)



 <a id="845544ac697b4376846fb0a71448e468"></a>
## Состав библиотеки STL

 <a id="3202d74fdacc43caa4bdbe20fc94eba0"></a>
#### [Все функции STL (local)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.local.md)
 <a id="4b717d97dc034823b42c8b242631813c"></a>
#### [Все функции STL (git)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.git.md)

[001.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/003.d/001.txt.md)



 <a id="bace26a480464025ab6c0540cf91f693"></a>
## Библиотека STL0

    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/003.d/002.d/001.pref.txt.md)



 <a id="463e1974ddc4479394b3abc19cc9da99"></a>
### Поведение библиотеки STL0



[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/004.d/001.pref.txt.md)



 <a id="739e8fbe19c047fe93031ac0cd3e2216"></a>
## Функция библиотеки STL0
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/004.d/002.d/001.pref.txt.md)



 <a id="b756891982d5423abe9ca92d80f7ab22"></a>
### Поведение функции STL0
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/005.d/001.pref.txt.md)



 <a id="7d47c880f4984e5a92ad27fed40a207e"></a>
## LCU
    

[099.upg_fn.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/005.d/099.upg_fn.txt.md)



 <a id="0b789a13aa494e84b3ba1aa1dbc41db7"></a>
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
 <a id="4b7c3014aa3d4521bfa56ad64a1eb27a"></a>
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
 <a id="7bba338ad6bb4b56bb569de40274dbdb"></a>
### add to flcu

- nrdx
- tags
- main

 <a id="e859611caa8a43cd98b8fe93a7d36613"></a>
##### search among flcu


    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/099.d/001.pref.txt.md)



 <a id="e84e9d4a0ec84dedbc0a5918d324a7c5"></a>
## Unsort
    

[002.select.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/099.d/002.select.txt.md)



 <a id="adfcf8ec5799415093bf4c7a3eb54ad7"></a>
#### Select (меню выбора) в параметре функции

- Если параметром функции является меню, то
  - 0 означает, что при вызове user сможет в интерактивном меню select выбрать нужный пункт меню - после этого в контекст функции попадет сущность соответствующая этому пункту (путь к выбранному файлу, срока аргументов и т.п.)
  - N сразу указывает на пункт меню 

- `_d2mm` пример выбора файла из директории
    

[003.upg_fn.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/099.d/003.upg_fn.txt.md)



 <a id="c3cd9b26ccaf47a98bae8e1156e9180c"></a>
#### UPG stl_fn

- для upg_[name_fn]:
  - создаем [name_fn]_
  - тестируем на наследование поведения
    - делаем bcp [name_fn] с перемещением файлов
    - заменяем [name_fn]_ на [name_fn] во сех файлах и директориях [name_fn]_ (like _gig_st_rc_fn _XXX -> [name_fn])
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/801.install_stl.d/001.pref.txt.md)



 <a id="3c2b365213aa4f9c84c184478c456f08"></a>
# Install STL [and STL0]
    

[002.install_cli.txt.md](.d/.opus/readme.opus/cntx.ins.d/801.install_stl.d/002.install_cli.txt.md)



    ~ $ wget https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/main_install_stl.sh
    ~ $ . main_install_stl.sh

or

    ~ $ wget https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%2Fmain_install_stl.sh
    ~ $ . main_install_stl.sh

[003.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/801.install_stl.d/003.pref.txt.md)



 <a id="77255b44c6be4e80a627d23b8bc85eab"></a>
## restore STL from .d.zip
    

[004.restore_dot_d_cli.txt.md](.d/.opus/readme.opus/cntx.ins.d/801.install_stl.d/004.restore_dot_d_cli.txt.md)



    $ curl https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/restore_stl_from_zip.sh | sh

or

    $ curl https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%restore_stl_from_zip.sh | sh
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/901.unsort.d/001.pref.txt.md)



 <a id="73775b1922ac4d0cb709d8f8963d512d"></a>
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



[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/902.using_note.d/001.pref.txt.md)



 <a id="cf9241b5e8ec40c4952b2811edd9e79d"></a>
# Замечания об использовании функций

- echo | _st_exit подавлние остановки при экстренном выходе по ^C
- _is_yes  если только вопрос о выходе то это только _st_exit , 
    использовать _is_yes только для ветвлений

- в следующих версиях использзовать `-` вместо `@` в качестве пустого аргумента
- заплнитель пустых директорий не файл 0, а _0     



