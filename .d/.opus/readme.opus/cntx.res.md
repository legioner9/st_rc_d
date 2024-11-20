
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
 - <a href=#60043fe7d50c4f3b8f116fca722e4a51> First Head</a>
 - <a href=#72adbc9d88144eab9a5fae590e87c4d5> Да здравствует Марк tshemsedinov</a>
   - <a href=#dbd45304bcf84a928c15199a4a2a7815> Благодарность</a>
 - <a href=#1990331daa644ae68c09d53a152035d5> Явление миру </a>
   - <a href=#9f5e9735363e4e5997c61255dedf87c5> Шаги по камням</a>
 - <a href=#b1030a9e96ea4e41b0d7ab831c2983b6> Фон </a>
   - <a href=#d06cff3f3c8b40b0a6b5dad7871dcf67> Культурологический контекст</a>
   - <a href=#b6e7574878d4489c83586ceef6b94a0b> Огонь внутри</a>
 - <a href=#0d7b4e40059e4dd3872351af31c83901> Что я могу сделать</a>
 - <a href=#20baa71c1ebd42a08c61f1464a21c6f4> Библиотека камней - Теория</a>
   - <a href=#11a0645ab4d247e09e8d142ae7968dce> Словарь</a>
   - <a href=#9219ad886d8f4b3a88be18e44f79bc6d> Что это</a>
   - <a href=#26c360d054db480bb73242d8f62454e2> Ограничения</a>
     - <a href=#ad2224087efb49a79e33a76e2f00eaaa> Ограничение сложности stl</a>
     - <a href=#b86ba970740d4f439b6b8a1bd4bca166> Требования к fn_elem</a>
     - <a href=#95a91cc16b23458ca4076aecf70f19ae> Требования к os_sl</a>
     - <a href=#d79552bdd58841f4a039ca32d9bcb7cc> Тестируемость </a>
     - <a href=#febe19939f254ba08db54499e9468235> Расширяемость</a>
     - <a href=#3ecb3e2872244df7991bb64c37035dd8> Производительность</a>
   - <a href=#31153f2fb18341a7b8dab6d7fa296bee> Типы и поведение</a>
   - <a href=#f2ec7b26bc3b4acc851e31c074064e90> Рекомендации RCM</a>
     - <a href=#7e5cbe4be325489bbe9bf04fa1203987> RCM_1 (изменения в оригинал)</a>
     - <a href=#f60c3d6439b64fe9b374cf5be42df700> RCM_2 (служебные файлы)</a>
     - <a href=#65015193ee3247a39850e7f40449b120> RCM_3 (cокращения)</a>
     - <a href=#c44eb67e00f34426909ff6348f09d195> RCM_4 (notmast_butlast)</a>
     - <a href=#0f982ccdd6ff456194e8b635de2eb02a> RCM_5 (mast_def_args)</a>
 - <a href=#e88379992755421a883953a5f6e6e921> Библиотека камней - Практика</a>
   - <a href=#89109c21777f4ec8a0ff9503c9d830d0> Понижение абстракций</a>
     - <a href=#2812ca7e8d5c418cb1b48b429eb49059> Базовые принципы</a>
     - <a href=#fadaa0f0ab834b348f0bb9952c1b5e3d> Базовые технологии</a>
 - <a href=#2ff795535ba84b409dafb6d9faae18ab> Что здесь есть</a>
     - <a href=#bdc726be6ab8404cbd8ed7ba1c92a5a7> Библиотека STL</a>
       - <a href=#e6bb26ddabe9401192d438765651623f> Поведение библиотеки STL</a>
         - <a href=#9d265905213d403e868f8ff1b5c49601> Правила именования функций</a>
         - <a href=#ca0027eb40d84f3c91f2d01cf739c90f> Подсказки в именовании файлов или директорий</a>
         - <a href=#255645fb1f034cc2865b1cfd69e82e53> Подсказки в расширениях файлов - wellknown - `wnext`</a>
     - <a href=#96cefee273c147afa906657ced698cc0> Функция библиотеки STL</a>
       - <a href=#9a95d96e04fb4067884675ac7a50793b> Поведение функции STL</a>
   - <a href=#706f4fde1dbb43b5801768716ad9f40e> Состав библиотеки STL</a>
       - <a href=#1c5be65f35d648978d37237c6b037235> [Все функции STL (local)]</a>
       - <a href=#b1b87c8ecc814363aa77f53b4b2821a6> [Все функции STL (git)]</a>
   - <a href=#35baa2aee51549dd8f7a2f887e095baa> Библиотека STL0</a>
     - <a href=#834aba1701834a4987650b2bb529f54e> Поведение библиотеки STL0</a>
   - <a href=#18ff374c1afa4b4ba8871b85e70e95ac> Функция библиотеки STL0</a>
     - <a href=#18d9f9e7047a459682164a149863eb05> Поведение функции STL0</a>
   - <a href=#20bf62b649b14cb780cf82788568432a> LCU</a>
     - <a href=#b61344422ecc4035bb246838fb2f1a03> Что это</a>
     - <a href=#c940f3d080ac4d90881358dfb0de5cac> naming</a>
     - <a href=#8c8cc756fa5744e2a6f03ce77f064d22> add to flcu</a>
         - <a href=#0aa7c2d5fc054203a1c963047b22e6fb> search among flcu</a>
   - <a href=#2ae1299b20944bb391eef88c68fadcfd> Unsort</a>
       - <a href=#18b5bb0ae50c47f199bbb48cbd5b089f> Select (меню выбора) в параметре функции</a>
       - <a href=#d381f0c2cfae4a16b1c5006b217c8b07> UPG stl_fn</a>
 - <a href=#a63bab7ee29a4e6cb54d250ffb43360b> Install STL [and STL0]</a>
   - <a href=#eb680b97bb154103875fd2ec44b064c9> restore STL from .d.zip</a>
 - <a href=#aa58221f7fb843b292a9feebde18f2b1> Неупорядоченные заметки</a>
 - <a href=#e007dfdf7d0a417a8f13dfb0e326ef97> Замечания об использовании функций</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/cntx.ins.d /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732082468_20112024130108

DATX: 1732082468
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="60043fe7d50c4f3b8f116fca722e4a51"></a>
# First Head


    

[001.pref.txt.md](cntx.ins.d/001.01.ave_marcus.d/001.pref.txt.md)



 <a id="72adbc9d88144eab9a5fae590e87c4d5"></a>
# Да здравствует Марк tshemsedinov

Ave Marcus tshemsedinov* (лат.)

*) Cuius fides est lux (лат.)

    

[001.pref.txt.md](cntx.ins.d/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.md)



 <a id="dbd45304bcf84a928c15199a4a2a7815"></a>
## Благодарность

Gratia (лат.)

- vitlav
- larchanka
- a3rus
    

[001.pef.txt.md](cntx.ins.d/002.01.manifesto.d/001.pef.txt.md)



 <a id="1990331daa644ae68c09d53a152035d5"></a>
# Явление миру 

Manifesto

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.md](cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.md)



 <a id="9f5e9735363e4e5997c61255dedf87c5"></a>
## Шаги по камням

Gradus in saxa (лат.)
   

[001.txt.md](cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.md)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/001.pref.txt.md)



 <a id="b1030a9e96ea4e41b0d7ab831c2983b6"></a>
# Фон 

Sfondo (лат.)  

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.md)



 <a id="d06cff3f3c8b40b0a6b5dad7871dcf67"></a>
## Культурологический контекст

Contextus culturalis (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.md)



 <a id="b6e7574878d4489c83586ceef6b94a0b"></a>
## Огонь внутри

Fuoco dentro (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.md](cntx.ins.d/003.quid_possum_facere.d/001.pref.txt.md)



 <a id="0d7b4e40059e4dd3872351af31c83901"></a>
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



 <a id="20baa71c1ebd42a08c61f1464a21c6f4"></a>
# Библиотека камней - Теория

Bibliotheca Lapidum - Theoria (лат.)
    


[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.md)



 <a id="11a0645ab4d247e09e8d142ae7968dce"></a>
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



 <a id="9219ad886d8f4b3a88be18e44f79bc6d"></a>
## Что это

Quid est (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.md)



 <a id="26c360d054db480bb73242d8f62454e2"></a>
## Ограничения

Limitations (лат.)

 <a id="ad2224087efb49a79e33a76e2f00eaaa"></a>
### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
 <a id="b86ba970740d4f439b6b8a1bd4bca166"></a>
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
 <a id="95a91cc16b23458ca4076aecf70f19ae"></a>
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

 <a id="d79552bdd58841f4a039ca32d9bcb7cc"></a>
### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

 <a id="febe19939f254ba08db54499e9468235"></a>
### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

 <a id="3ecb3e2872244df7991bb64c37035dd8"></a>
### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.md)



 <a id="31153f2fb18341a7b8dab6d7fa296bee"></a>
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




 <a id="f2ec7b26bc3b4acc851e31c074064e90"></a>
## Рекомендации RCM

    

[002.rcm_1.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/002.rcm_1.txt.md)



 <a id="7e5cbe4be325489bbe9bf04fa1203987"></a>
### RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/003.rcm_2.txt.md)



 <a id="f60c3d6439b64fe9b374cf5be42df700"></a>
### RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/004.rcm_3.txt.md)



 <a id="65015193ee3247a39850e7f40449b120"></a>
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



 <a id="c44eb67e00f34426909ff6348f09d195"></a>
### RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/006.rcm_5.txt.md)



 <a id="0f982ccdd6ff456194e8b635de2eb02a"></a>
### RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/001.pref.txt.md)



 <a id="e88379992755421a883953a5f6e6e921"></a>
# Библиотека камней - Практика

Bibliotheca Lapidum - Usu (лат.)

  

[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.md)



 <a id="89109c21777f4ec8a0ff9503c9d830d0"></a>
## Понижение абстракций

Deminutio abstractionis (лат.)


    

[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.md)



 <a id="2812ca7e8d5c418cb1b48b429eb49059"></a>
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



 <a id="fadaa0f0ab834b348f0bb9952c1b5e3d"></a>
### Базовые технологии

Basic technologiae (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/001.pref.txt.md)



 <a id="2ff795535ba84b409dafb6d9faae18ab"></a>
# Что здесь есть

Quid est hic (лат.)


    

[001.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/001.txt.md)



 <a id="bdc726be6ab8404cbd8ed7ba1c92a5a7"></a>
### Библиотека STL

    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/001.pref.txt.md)



 <a id="e6bb26ddabe9401192d438765651623f"></a>
#### Поведение библиотеки STL



[002.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/002.txt.md)



 <a id="9d265905213d403e868f8ff1b5c49601"></a>
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



 <a id="ca0027eb40d84f3c91f2d01cf739c90f"></a>
##### Подсказки в именовании файлов или директорий

- если в имени файла или директории содержится `.ax.`, то удаление файла или файлов из директории будет иметь негативные последствия - допускается изменение файла или добавление файлов в директорию - иными словами ссылки на эти сущности используются в STL 

    

[004.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/004.txt.md)



 <a id="255645fb1f034cc2865b1cfd69e82e53"></a>
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



 <a id="96cefee273c147afa906657ced698cc0"></a>
### Функция библиотеки STL
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/001.pref.txt.md)



 <a id="9a95d96e04fb4067884675ac7a50793b"></a>
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



 <a id="706f4fde1dbb43b5801768716ad9f40e"></a>
## Состав библиотеки STL

 <a id="1c5be65f35d648978d37237c6b037235"></a>
#### [Все функции STL (local)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.local.md)
 <a id="b1b87c8ecc814363aa77f53b4b2821a6"></a>
#### [Все функции STL (git)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.git.md)

[001.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/003.d/001.txt.md)



 <a id="35baa2aee51549dd8f7a2f887e095baa"></a>
## Библиотека STL0

    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/003.d/002.d/001.pref.txt.md)



 <a id="834aba1701834a4987650b2bb529f54e"></a>
### Поведение библиотеки STL0



[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/004.d/001.pref.txt.md)



 <a id="18ff374c1afa4b4ba8871b85e70e95ac"></a>
## Функция библиотеки STL0
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/004.d/002.d/001.pref.txt.md)



 <a id="18d9f9e7047a459682164a149863eb05"></a>
### Поведение функции STL0
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/005.d/001.pref.txt.md)



 <a id="20bf62b649b14cb780cf82788568432a"></a>
## LCU
    

[099.upg_fn.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/005.d/099.upg_fn.txt.md)



 <a id="b61344422ecc4035bb246838fb2f1a03"></a>
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
 <a id="c940f3d080ac4d90881358dfb0de5cac"></a>
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
 <a id="8c8cc756fa5744e2a6f03ce77f064d22"></a>
### add to flcu

- nrdx
- tags
- main

 <a id="0aa7c2d5fc054203a1c963047b22e6fb"></a>
##### search among flcu


    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/001.pref.txt.md)



 <a id="2ae1299b20944bb391eef88c68fadcfd"></a>
## Unsort
    

[002.select.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/002.select.txt.md)



 <a id="18b5bb0ae50c47f199bbb48cbd5b089f"></a>
#### Select (меню выбора) в параметре функции

- Если параметром функции является меню, то
  - 0 означает, что при вызове user сможет в интерактивном меню select выбрать нужный пункт меню - после этого в контекст функции попадет сущность соответствующая этому пункту (путь к выбранному файлу, срока аргументов и т.п.)
  - N сразу указывает на пункт меню 

- `_d2mm` пример выбора файла из директории
    

[003.upg_fn.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/003.upg_fn.txt.md)



 <a id="d381f0c2cfae4a16b1c5006b217c8b07"></a>
#### UPG stl_fn

- для upg_[name_fn]:
  - создаем [name_fn]_
  - тестируем на наследование поведения
    - делаем bcp [name_fn] с перемещением файлов
    - заменяем [name_fn]_ на [name_fn] во сех файлах и директориях [name_fn]_ (like _gig_st_rc_fn _XXX -> [name_fn])
    

[001.pref.txt.md](cntx.ins.d/801.install_stl.d/001.pref.txt.md)



 <a id="a63bab7ee29a4e6cb54d250ffb43360b"></a>
# Install STL [and STL0]
    

[002.install_cli.txt.md](cntx.ins.d/801.install_stl.d/002.install_cli.txt.md)



    ~ $ wget https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/main_install_stl.sh
    ~ $ . main_install_stl.sh

or

    ~ $ wget https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%2Fmain_install_stl.sh
    ~ $ . main_install_stl.sh

[003.pref.txt.md](cntx.ins.d/801.install_stl.d/003.pref.txt.md)



 <a id="eb680b97bb154103875fd2ec44b064c9"></a>
## restore STL from .d.zip
    

[004.restore_dot_d_cli.txt.md](cntx.ins.d/801.install_stl.d/004.restore_dot_d_cli.txt.md)



    $ curl https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/restore_stl_from_zip.sh | sh

or

    $ curl https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%restore_stl_from_zip.sh | sh
    

[001.pref.txt.md](cntx.ins.d/901.unsort.d/001.pref.txt.md)



 <a id="aa58221f7fb843b292a9feebde18f2b1"></a>
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



 <a id="e007dfdf7d0a417a8f13dfb0e326ef97"></a>
# Замечания об использовании функций

- echo | _st_exit подавлние остановки при экстренном выходе по ^C
- _is_yes  если только вопрос о выходе то это только _st_exit , 
    использовать _is_yes только для ветвлений

- в следующих версиях использзовать `-` вместо `@` в качестве пустого аргумента
- заплнитель пустых директорий не файл 0, а _0     



