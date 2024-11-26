
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
 - <a href=#6bc76cb33a384f91b859742ef59f51cb> ST_RC_D </a>
 - <a href=#086af8ac30604ff3ad0d729f2c541278> Да здравствует Марк tshemsedinov</a>
   - <a href=#0a8b6afd6ab94981971161766a593259> Благодарность</a>
 - <a href=#fbed6e8843fc4b10a9dda7dcea168a91> Явление миру </a>
   - <a href=#b145b524a2fa43e593d8430dc546dba3> Шаги по камням</a>
 - <a href=#af6d2ffdfc414055a4c38bd565ca1c2e> Фон </a>
   - <a href=#5cf6cd2807e5453e95c995d8aab117a7> Культурологический контекст</a>
   - <a href=#e7385a5adaf0474280ade76ae43ff4cd> Огонь внутри</a>
 - <a href=#b1a89274aa7a449583b0e7aaea8525f8> Что я могу сделать</a>
 - <a href=#70740f40f19343a6b23a757db258eaef> Библиотека камней - Теория</a>
   - <a href=#643a71abed7d4e7d8f58ab848939ce5f> Словарь</a>
   - <a href=#69f89754b7d94095b8956409175f9b8e> Что это</a>
   - <a href=#7cc8852e6a2c4274b291e684d1a78df4> Ограничения</a>
     - <a href=#54b0a20cd0ae4ecc90cb9b8936227cba> Ограничение сложности stl</a>
     - <a href=#9447ae0bbfd14b75bbe50976c675ed2d> Требования к fn_elem</a>
     - <a href=#6d0b1a7da9194e1e9c7f852cb59fb671> Требования к os_sl</a>
     - <a href=#ac1ede1822604a809df7442b447036c7> Тестируемость </a>
     - <a href=#12ef1bfdfe434457ba2e4f388b7f3665> Расширяемость</a>
     - <a href=#b020cc027d4c47569f1cf8187e2ede1f> Производительность</a>
   - <a href=#86d3e464cba8469caa0c41bc7f99f835> Типы и поведение</a>
   - <a href=#14a7879cbc5e48018eccea5982c48c50> Рекомендации RCM</a>
     - <a href=#c99d6ff5a4d444d8929cee4d1c94e4f9> RCM_1 (изменения в оригинал)</a>
     - <a href=#f55686b3e76a444382dcb6155f612ad9> RCM_2 (служебные файлы)</a>
     - <a href=#33a95248627d4291849b10a9d28d3a8a> RCM_3 (cокращения)</a>
     - <a href=#b796ff063d0b45f3928ae3c6c66300ac> RCM_4 (notmast_butlast)</a>
     - <a href=#4a34ec98d9b846b9b5a5b4d3d1d6832a> RCM_5 (mast_def_args)</a>
 - <a href=#ffd18e524978495c9960f37e2acfebba> Библиотека камней - Практика</a>
   - <a href=#3d13ccbd5ec34067a315409aa11931b2> Понижение абстракций</a>
     - <a href=#2f836dfc3ad1488c932108f55ab11644> Базовые принципы</a>
     - <a href=#cf43cac353d44f41a29459078745e6f9> Базовые технологии</a>
 - <a href=#9bc6715ab15c4fc8a6a798b4b0450686> Что здесь есть</a>
     - <a href=#c0671be92294424e9fcbda73f97f70f4> Библиотека STL</a>
       - <a href=#d96a60f86b01456fbde0dad997655e17> Поведение библиотеки STL</a>
         - <a href=#7f89755b9faf4111a1d13cb996ac5519> Правила именования функций</a>
         - <a href=#a1de338187b941498255f6a2cacdf604> Подсказки в именовании файлов или директорий</a>
         - <a href=#618c391c55e54755aa6c1c28e5b64443> Подсказки в расширениях файлов - wellknown - `wnext`</a>
     - <a href=#a4cc7f2f959a416b83e5a58921648ff6> Функция библиотеки STL</a>
       - <a href=#1646c053f4174694913c064c7db7b8a5> Поведение функции STL</a>
   - <a href=#f5be98c1dbfa4556b37732b658a55ff9> Состав библиотеки STL</a>
       - <a href=#0090eea3326b4b4ab9184c37c403bfc1> [Все функции STL (local)]</a>
       - <a href=#ca1495eebf3e40e09e5faff6495d79d7> [Все функции STL (git)]</a>
   - <a href=#ae49176eb9da416ea96a467dbb499a8e> Библиотека STL0</a>
     - <a href=#ec6a3f7f95674c05a24eb860f3947225> Поведение библиотеки STL0</a>
   - <a href=#696ebda1a5d04a0da1c0c14f24542207> Функция библиотеки STL0</a>
     - <a href=#ddb188a37a7e4d4497264846bfca5daf> Поведение функции STL0</a>
   - <a href=#1418000e89c749f081f78c8e88ca5084> LCU</a>
     - <a href=#8d893a91933749ec8980c990bf0bdab4> Что это</a>
     - <a href=#ee8bbfea214c49ec823468bae9d15e2e> naming</a>
     - <a href=#eef0474965d54e2fa8c01a3c7967e513> add to flcu</a>
         - <a href=#5198ed9626074b369b7e376f1120d06d> search among flcu</a>
   - <a href=#e787cf495e324b84844eca9ef825a03b> Unsort</a>
       - <a href=#4657fe8ef94d48c49a2c55cf060da3d8> Select (меню выбора) в параметре функции</a>
       - <a href=#786606eb766543f890a2080842d309e5> UPG stl_fn</a>
 - <a href=#a6af2009ba6f4e25a632bd4fc6b07479> Install STL [and STL0]</a>
   - <a href=#7c0510aa7bcf44409a5fff48072fff95> restore STL from .d.zip</a>
 - <a href=#fa3b66be7ada468bba4e073695e710b3> Неупорядоченные заметки</a>
 - <a href=#20f68746e0e34d3885a7bd9f1b35ffd4> Замечания об использовании функций</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/_cntx.ins.d /home/st/REPOBARE/_repo/st_rc_d/README.md 2

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732606287_26112024143127

DATX: 1732606287
-->


[001.001.first_head.txt.md](.d/.opus/readme.opus/_cntx.ins.d/001.001.first_head.txt.md)



 <a id="6bc76cb33a384f91b859742ef59f51cb"></a>
# ST_RC_D 


    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/001.01.ave_marcus.d/001.pref.txt.md)



 <a id="086af8ac30604ff3ad0d729f2c541278"></a>
# Да здравствует Марк tshemsedinov

Ave Marcus tshemsedinov* (лат.)

*) Cuius fides est lux (лат.)

    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.md)



 <a id="0a8b6afd6ab94981971161766a593259"></a>
## Благодарность

Gratia (лат.)

- vitlav
- larchanka
- a3rus


[001.pef.txt.md](.d/.opus/readme.opus/_cntx.ins.d/002.01.manifesto.d/001.pef.txt.md)



 <a id="fbed6e8843fc4b10a9dda7dcea168a91"></a>
# Явление миру 

Manifesto

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.md](.d/.opus/readme.opus/_cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.md)



 <a id="b145b524a2fa43e593d8430dc546dba3"></a>
## Шаги по камням

Gradus in saxa (лат.)


[001.txt.md](.d/.opus/readme.opus/_cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.md)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/002.02.sfondo.d/001.pref.txt.md)



 <a id="af6d2ffdfc414055a4c38bd565ca1c2e"></a>
# Фон 

Sfondo (лат.)  

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.md)



 <a id="5cf6cd2807e5453e95c995d8aab117a7"></a>
## Культурологический контекст

Contextus culturalis (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.md)



 <a id="e7385a5adaf0474280ade76ae43ff4cd"></a>
## Огонь внутри

Fuoco dentro (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/003.quid_possum_facere.d/001.pref.txt.md)



 <a id="b1a89274aa7a449583b0e7aaea8525f8"></a>
# Что я могу сделать

Quid possum facere (лат.)


[001.txt.md](.d/.opus/readme.opus/_cntx.ins.d/003.quid_possum_facere.d/002.d/001.txt.md)




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
 
    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/001.pref.txt.md)



 <a id="70740f40f19343a6b23a757db258eaef"></a>
# Библиотека камней - Теория

Bibliotheca Lapidum - Theoria (лат.)
    


[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.md)



 <a id="643a71abed7d4e7d8f58ab848939ce5f"></a>
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
    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/003.quid_est.d/001.pref.txt.md)



 <a id="69f89754b7d94095b8956409175f9b8e"></a>
## Что это

Quid est (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.md)



 <a id="7cc8852e6a2c4274b291e684d1a78df4"></a>
## Ограничения

Limitations (лат.)

 <a id="54b0a20cd0ae4ecc90cb9b8936227cba"></a>
### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
 <a id="9447ae0bbfd14b75bbe50976c675ed2d"></a>
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
 <a id="6d0b1a7da9194e1e9c7f852cb59fb671"></a>
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

 <a id="ac1ede1822604a809df7442b447036c7"></a>
### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

 <a id="12ef1bfdfe434457ba2e4f388b7f3665"></a>
### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

 <a id="b020cc027d4c47569f1cf8187e2ede1f"></a>
### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.md)



 <a id="86d3e464cba8469caa0c41bc7f99f835"></a>
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

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/001.pref.txt.md)




 <a id="14a7879cbc5e48018eccea5982c48c50"></a>
## Рекомендации RCM

    

[002.rcm_1.txt.md](.d/.opus/readme.opus/_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/002.rcm_1.txt.md)



 <a id="c99d6ff5a4d444d8929cee4d1c94e4f9"></a>
### RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](.d/.opus/readme.opus/_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/003.rcm_2.txt.md)



 <a id="f55686b3e76a444382dcb6155f612ad9"></a>
### RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](.d/.opus/readme.opus/_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/004.rcm_3.txt.md)



 <a id="33a95248627d4291849b10a9d28d3a8a"></a>
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
    

[005.rcm_4.txt.md](.d/.opus/readme.opus/_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/005.rcm_4.txt.md)



 <a id="b796ff063d0b45f3928ae3c6c66300ac"></a>
### RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](.d/.opus/readme.opus/_cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/006.rcm_5.txt.md)



 <a id="4a34ec98d9b846b9b5a5b4d3d1d6832a"></a>
### RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/005.bibliotheca_lapidum_usu.d/001.pref.txt.md)



 <a id="ffd18e524978495c9960f37e2acfebba"></a>
# Библиотека камней - Практика

Bibliotheca Lapidum - Usu (лат.)

  

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.md)



 <a id="3d13ccbd5ec34067a315409aa11931b2"></a>
## Понижение абстракций

Deminutio abstractionis (лат.)


    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.md)



 <a id="2f836dfc3ad1488c932108f55ab11644"></a>
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



[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/003.basic_technologiae.txt.d/001.pref.txt.md)



 <a id="cf43cac353d44f41a29459078745e6f9"></a>
### Базовые технологии

Basic technologiae (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/001.pref.txt.md)



 <a id="9bc6715ab15c4fc8a6a798b4b0450686"></a>
# Что здесь есть

Quid est hic (лат.)


    

[001.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/001.txt.md)



 <a id="c0671be92294424e9fcbda73f97f70f4"></a>
### Библиотека STL

    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/001.pref.txt.md)



 <a id="d96a60f86b01456fbde0dad997655e17"></a>
#### Поведение библиотеки STL



[002.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/002.txt.md)



 <a id="7f89755b9faf4111a1d13cb996ac5519"></a>
##### Правила именования функций

- если [fn_stl] результатом является только возврат 0 или 1 при действии и производится [flow], то именование следующее:

    `_is_[flow]`

  - например определяется ответ `y` или `n` в качестве утверждения, то именование следующее:

    `_is_yes`

- если [fn_stl] n-обертка (в системе уже есть n-1 оберток) над [fn_elem] и производится [w_flow] изменение поведения, то именование следующее:
     
     `_[fn_elem]_wn_[w_flow]`

  - например первая обертка над source состоящая в проверке существования запускаемого файла, то имя следующее:   

    `_source_w1_isf`


    


[003.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/003.txt.md)



 <a id="a1de338187b941498255f6a2cacdf604"></a>
##### Подсказки в именовании файлов или директорий

- если в имени файла или директории содержится `.ax.`, то удаление файла или файлов из директории будет иметь негативные последствия - допускается изменение файла или добавление файлов в директорию - иными словами ссылки на эти сущности используются в STL 

    

[004.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/004.txt.md)



 <a id="618c391c55e54755aa6c1c28e5b64443"></a>
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
  


    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/001.pref.txt.md)



 <a id="a4cc7f2f959a416b83e5a58921648ff6"></a>
### Функция библиотеки STL
    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/001.pref.txt.md)



 <a id="1646c053f4174694913c064c7db7b8a5"></a>
#### Поведение функции STL
    

[002.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/002.txt.md)




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
    

[001.03.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/001.03.pref.txt.md)



 <a id="f5be98c1dbfa4556b37732b658a55ff9"></a>
## Состав библиотеки STL

 <a id="0090eea3326b4b4ab9184c37c403bfc1"></a>
#### [Все функции STL (local)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.local.md)
 <a id="ca1495eebf3e40e09e5faff6495d79d7"></a>
#### [Все функции STL (git)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.git.md)

[001.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/003.d/001.txt.md)



 <a id="ae49176eb9da416ea96a467dbb499a8e"></a>
## Библиотека STL0

    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/003.d/002.d/001.pref.txt.md)



 <a id="ec6a3f7f95674c05a24eb860f3947225"></a>
### Поведение библиотеки STL0



[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/004.d/001.pref.txt.md)



 <a id="696ebda1a5d04a0da1c0c14f24542207"></a>
## Функция библиотеки STL0
    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/004.d/002.d/001.pref.txt.md)



 <a id="ddb188a37a7e4d4497264846bfca5daf"></a>
### Поведение функции STL0
    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/005.d/001.pref.txt.md)



 <a id="1418000e89c749f081f78c8e88ca5084"></a>
## LCU
    

[099.upg_fn.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/005.d/099.upg_fn.txt.md)



 <a id="8d893a91933749ec8980c990bf0bdab4"></a>
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
 <a id="ee8bbfea214c49ec823468bae9d15e2e"></a>
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
 <a id="eef0474965d54e2fa8c01a3c7967e513"></a>
### add to flcu

- nrdx
- tags
- main

 <a id="5198ed9626074b369b7e376f1120d06d"></a>
##### search among flcu


    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/099.d/001.pref.txt.md)



 <a id="e787cf495e324b84844eca9ef825a03b"></a>
## Unsort
    

[002.select.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/099.d/002.select.txt.md)



 <a id="4657fe8ef94d48c49a2c55cf060da3d8"></a>
#### Select (меню выбора) в параметре функции

- Если параметром функции является меню, то
  - 0 означает, что при вызове user сможет в интерактивном меню select выбрать нужный пункт меню - после этого в контекст функции попадет сущность соответствующая этому пункту (путь к выбранному файлу, срока аргументов и т.п.)
  - N сразу указывает на пункт меню 

- `_d2mm` пример выбора файла из директории
    

[003.upg_fn.txt.md](.d/.opus/readme.opus/_cntx.ins.d/701.quid_est_hic.d/002.d/099.d/003.upg_fn.txt.md)



 <a id="786606eb766543f890a2080842d309e5"></a>
#### UPG stl_fn

- для upg_[name_fn]:
  - создаем [name_fn]_
  - тестируем на наследование поведения
    - делаем bcp [name_fn] с перемещением файлов
    - заменяем [name_fn]_ на [name_fn] во сех файлах и директориях [name_fn]_ (like _gig_st_rc_fn _XXX -> [name_fn])
    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/801.install_stl.d/001.pref.txt.md)



 <a id="a6af2009ba6f4e25a632bd4fc6b07479"></a>
# Install STL [and STL0]
    

[002.install_cli.txt.md](.d/.opus/readme.opus/_cntx.ins.d/801.install_stl.d/002.install_cli.txt.md)



    ~ $ wget https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/main_install_stl.sh
    ~ $ . main_install_stl.sh

or

    ~ $ wget https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%2Fmain_install_stl.sh
    ~ $ . main_install_stl.sh

[003.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/801.install_stl.d/003.pref.txt.md)



 <a id="7c0510aa7bcf44409a5fff48072fff95"></a>
## restore STL from .d.zip
    

[004.restore_dot_d_cli.txt.md](.d/.opus/readme.opus/_cntx.ins.d/801.install_stl.d/004.restore_dot_d_cli.txt.md)



    $ curl https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/restore_stl_from_zip.sh | sh

or

    $ curl https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%restore_stl_from_zip.sh | sh
    

[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/901.unsort.d/001.pref.txt.md)



 <a id="fa3b66be7ada468bba4e073695e710b3"></a>
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



[001.pref.txt.md](.d/.opus/readme.opus/_cntx.ins.d/902.using_note.d/001.pref.txt.md)



 <a id="20f68746e0e34d3885a7bd9f1b35ffd4"></a>
# Замечания об использовании функций

- echo | _st_exit подавлние остановки при экстренном выходе по ^C
- _is_yes  если только вопрос о выходе то это только _st_exit , 
    использовать _is_yes только для ветвлений

- в следующих версиях использзовать `-` вместо `@` в качестве пустого аргумента
- заплнитель пустых директорий не файл 0, а _0     



