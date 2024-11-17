
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
 - <a href=#ec6ea56d76334572a05747e17d09570c> First Head</a>
 - <a href=#3e2f80467c764532a6c0cb03e98fe24d> Да здравствует Марк tshemsedinov</a>
   - <a href=#97f28f7067a649eead57a4f10c6c2a76> Благодарность</a>
 - <a href=#8449b21a4a2f42b39c6210da482566e1> Явление миру </a>
   - <a href=#ba8f940b748943db9b595591ae80176a> Шаги по камням</a>
 - <a href=#1c619b7429fd4ad68e54e93076e102b2> Фон </a>
   - <a href=#4d2da369e0074aa58226956adc7f7cca> Культурологический контекст</a>
   - <a href=#26b71a29d3ea40e49ca4a647f3285cfb> Огонь внутри</a>
 - <a href=#fdb55212b1c1468dadee985fcc0b38ed> Что я могу сделать</a>
 - <a href=#6ea266ba6a5d40559cefc8f049ab61d5> Библиотека камней - Теория</a>
   - <a href=#1f4ac48df23d4e8cae24bbf2bfd15853> Словарь</a>
   - <a href=#f5fdbb446a5344b6adffd5907f1ba89b> Что это</a>
   - <a href=#37c8a8fc7a1d4f168eea758aced5ce1e> Ограничения</a>
     - <a href=#cda5411e2fb8401f898a50c3cfcd5c58> Ограничение сложности stl</a>
     - <a href=#d0253860efd54a9cbdfada20e806b94d> Требования к fn_elem</a>
     - <a href=#d2e172e85e2f4c1a860ab1820159af5d> Требования к os_sl</a>
     - <a href=#bb3dba24e2714ee09d30fe726d41d4e6> Тестируемость </a>
     - <a href=#faa090d9f78042fab6b41872e8f23b4d> Расширяемость</a>
     - <a href=#58a8d278a27d40988744b4d63e17e95c> Производительность</a>
   - <a href=#ea33aa2627d74545887e0d7c245794a1> Типы и поведение</a>
   - <a href=#57a054bcb80246ef879d4a32de6c3769> Рекомендации RCM</a>
     - <a href=#22722236fa8e4bdd8bfb4004f6bdc58b> RCM_1 (изменения в оригинал)</a>
     - <a href=#cc39109491074adbb15e32f4589f0853> RCM_2 (служебные файлы)</a>
     - <a href=#c54ea98226f848b48daa73eebcd17cc6> RCM_3 (cокращения)</a>
     - <a href=#bb0a2f3e9d344654a97125234acb08e2> RCM_4 (notmast_butlast)</a>
     - <a href=#e505ea7f24584ab9bb5accb94fcb7dea> RCM_5 (mast_def_args)</a>
 - <a href=#8d73cfc8745140e38d7e22181674ac2a> Библиотека камней - Практика</a>
   - <a href=#a2bf39aa662949e7a7ad651a52498b32> Понижение абстракций</a>
     - <a href=#b227e3902c9b4e578da3030df0b4b972> Базовые принципы</a>
     - <a href=#1f743cccd57e45039e1717fbc99e35a9> Базовые технологии</a>
 - <a href=#039b673ca448412f9a8b109def7d493a> Что здесь есть</a>
     - <a href=#1d9fef0c069b410887b1075afe865414> Библиотека STL</a>
       - <a href=#9ee9d431227d45088b9df24dece15022> Поведение библиотеки STL</a>
         - <a href=#d255468fee5343ff8c6ce88b0b0ec000> Правила именования функций</a>
         - <a href=#d7adb1cdcd364a4a9338b3c47dbda9d2> Подсказки в именовании файлов или директорий</a>
         - <a href=#b16bd53200d64bb58d4e6d8efe145c62> Подсказки в расширениях файлов - wellknown - `wnext`</a>
     - <a href=#f039920c72bc45fdbd65279067e59d36> Функция библиотеки STL</a>
       - <a href=#bbae3b1d5236480580a8283239e0468a> Поведение функции STL</a>
   - <a href=#8fcdf43dc09940319a155578c3a80605> Состав библиотеки STL</a>
       - <a href=#eedc581a056b4a7c94316511b083366b> [Все функции STL (local)]</a>
       - <a href=#1a2a862e60cc4e79a7c3d04dccf29600> [Все функции STL (git)]</a>
   - <a href=#331919c6358841cb909b701db714d31e> Библиотека STL0</a>
     - <a href=#d145768e9bcd48c6bc13ed7bdfa35a74> Поведение библиотеки STL0</a>
   - <a href=#35b6ff89543744219baa43fc97921dca> Функция библиотеки STL0</a>
     - <a href=#b2e389a8abd64bbdbe6b219a9b336f1c> Поведение функции STL0</a>
   - <a href=#dee68b1292e84f4ca276d86f14f02bcc> LCU</a>
     - <a href=#9414a2ea9a7a4696a7aee49f20933a7d> Что это</a>
     - <a href=#deab755905aa482d818104661bbb9f8c> naming</a>
     - <a href=#435fbfc2c6a044f69dca7b31570d8019> add to flcu</a>
         - <a href=#c5112a13c96f4b079169fd1f839da9ee> search among flcu</a>
   - <a href=#e0e01d795cc74fe2ae43848f0181ca01> Unsort</a>
       - <a href=#6a94a8b1ab4e4daaa048f02dc064994b> Select (меню выбора) в параметре функции</a>
       - <a href=#75b2889efdfb4cc69a95f6245135e92a> UPG stl_fn</a>
 - <a href=#ac6318d9c4c9403f9ec07fbf0506cb7d> Install STL [and STL0]</a>
   - <a href=#edd4ff60919d405b8716c3788c7b63fd> restore STL from .d.zip</a>
 - <a href=#c12dde203cf541b1a087339e71e2247d> Неупорядоченные заметки</a>
 - <a href=#d1d607147b65412fb3fa41554ed36b25> Замечания об использовании функций</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/cntx.ins.d /home/st/REPOBARE/_repo/st_rc_d/README.md 2

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731869181_18112024014621

DATX: 1731869181
-->


[001.001.first_head.txt.md](.d/.opus/readme.opus/cntx.ins.d/001.001.first_head.txt.md)



 <a id="ec6ea56d76334572a05747e17d09570c"></a>
# First Head


    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/001.01.ave_marcus.d/001.pref.txt.md)



 <a id="3e2f80467c764532a6c0cb03e98fe24d"></a>
# Да здравствует Марк tshemsedinov

Ave Marcus tshemsedinov* (лат.)

*) Cuius fides est lux (лат.)

    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.md)



 <a id="97f28f7067a649eead57a4f10c6c2a76"></a>
## Благодарность

Gratia (лат.)

- vitlav
- larchanka
- a3rus
    

[001.pef.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.01.manifesto.d/001.pef.txt.md)



 <a id="8449b21a4a2f42b39c6210da482566e1"></a>
# Явление миру 

Manifesto

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.md)



 <a id="ba8f940b748943db9b595591ae80176a"></a>
## Шаги по камням

Gradus in saxa (лат.)
   

[001.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.md)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.02.sfondo.d/001.pref.txt.md)



 <a id="1c619b7429fd4ad68e54e93076e102b2"></a>
# Фон 

Sfondo (лат.)  

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.md)



 <a id="4d2da369e0074aa58226956adc7f7cca"></a>
## Культурологический контекст

Contextus culturalis (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.md)



 <a id="26b71a29d3ea40e49ca4a647f3285cfb"></a>
## Огонь внутри

Fuoco dentro (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/003.quid_possum_facere.d/001.pref.txt.md)



 <a id="fdb55212b1c1468dadee985fcc0b38ed"></a>
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



 <a id="6ea266ba6a5d40559cefc8f049ab61d5"></a>
# Библиотека камней - Теория

Bibliotheca Lapidum - Theoria (лат.)
    


[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.md)



 <a id="1f4ac48df23d4e8cae24bbf2bfd15853"></a>
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



 <a id="f5fdbb446a5344b6adffd5907f1ba89b"></a>
## Что это

Quid est (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.md)



 <a id="37c8a8fc7a1d4f168eea758aced5ce1e"></a>
## Ограничения

Limitations (лат.)

 <a id="cda5411e2fb8401f898a50c3cfcd5c58"></a>
### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
 <a id="d0253860efd54a9cbdfada20e806b94d"></a>
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
 <a id="d2e172e85e2f4c1a860ab1820159af5d"></a>
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

 <a id="bb3dba24e2714ee09d30fe726d41d4e6"></a>
### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

 <a id="faa090d9f78042fab6b41872e8f23b4d"></a>
### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

 <a id="58a8d278a27d40988744b4d63e17e95c"></a>
### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.md)



 <a id="ea33aa2627d74545887e0d7c245794a1"></a>
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




 <a id="57a054bcb80246ef879d4a32de6c3769"></a>
## Рекомендации RCM

    

[002.rcm_1.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/002.rcm_1.txt.md)



 <a id="22722236fa8e4bdd8bfb4004f6bdc58b"></a>
### RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/003.rcm_2.txt.md)



 <a id="cc39109491074adbb15e32f4589f0853"></a>
### RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/004.rcm_3.txt.md)



 <a id="c54ea98226f848b48daa73eebcd17cc6"></a>
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



 <a id="bb0a2f3e9d344654a97125234acb08e2"></a>
### RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/006.rcm_5.txt.md)



 <a id="e505ea7f24584ab9bb5accb94fcb7dea"></a>
### RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/005.bibliotheca_lapidum_usu.d/001.pref.txt.md)



 <a id="8d73cfc8745140e38d7e22181674ac2a"></a>
# Библиотека камней - Практика

Bibliotheca Lapidum - Usu (лат.)

  

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.md)



 <a id="a2bf39aa662949e7a7ad651a52498b32"></a>
## Понижение абстракций

Deminutio abstractionis (лат.)


    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.md)



 <a id="b227e3902c9b4e578da3030df0b4b972"></a>
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



 <a id="1f743cccd57e45039e1717fbc99e35a9"></a>
### Базовые технологии

Basic technologiae (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/001.pref.txt.md)



 <a id="039b673ca448412f9a8b109def7d493a"></a>
# Что здесь есть

Quid est hic (лат.)


    

[001.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/001.txt.md)



 <a id="1d9fef0c069b410887b1075afe865414"></a>
### Библиотека STL

    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/001.pref.txt.md)



 <a id="9ee9d431227d45088b9df24dece15022"></a>
#### Поведение библиотеки STL



[002.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/002.txt.md)



 <a id="d255468fee5343ff8c6ce88b0b0ec000"></a>
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



 <a id="d7adb1cdcd364a4a9338b3c47dbda9d2"></a>
##### Подсказки в именовании файлов или директорий

- если в имени файла или директории содержится `.ax.`, то удаление файла или файлов из директории будет иметь негативные последствия - допускается изменение файла или добавление файлов в директорию - иными словами ссылки на эти сущности используются в STL 

    

[004.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/004.txt.md)



 <a id="b16bd53200d64bb58d4e6d8efe145c62"></a>
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



 <a id="f039920c72bc45fdbd65279067e59d36"></a>
### Функция библиотеки STL
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/001.pref.txt.md)



 <a id="bbae3b1d5236480580a8283239e0468a"></a>
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



 <a id="8fcdf43dc09940319a155578c3a80605"></a>
## Состав библиотеки STL

 <a id="eedc581a056b4a7c94316511b083366b"></a>
#### [Все функции STL (local)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.local.md)
 <a id="1a2a862e60cc4e79a7c3d04dccf29600"></a>
#### [Все функции STL (git)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.git.md)

[001.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/003.d/001.txt.md)



 <a id="331919c6358841cb909b701db714d31e"></a>
## Библиотека STL0

    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/003.d/002.d/001.pref.txt.md)



 <a id="d145768e9bcd48c6bc13ed7bdfa35a74"></a>
### Поведение библиотеки STL0



[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/004.d/001.pref.txt.md)



 <a id="35b6ff89543744219baa43fc97921dca"></a>
## Функция библиотеки STL0
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/004.d/002.d/001.pref.txt.md)



 <a id="b2e389a8abd64bbdbe6b219a9b336f1c"></a>
### Поведение функции STL0
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/005.d/001.pref.txt.md)



 <a id="dee68b1292e84f4ca276d86f14f02bcc"></a>
## LCU
    

[099.upg_fn.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/005.d/099.upg_fn.txt.md)



 <a id="9414a2ea9a7a4696a7aee49f20933a7d"></a>
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
 <a id="deab755905aa482d818104661bbb9f8c"></a>
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
 <a id="435fbfc2c6a044f69dca7b31570d8019"></a>
### add to flcu

- nrdx
- tags
- main

 <a id="c5112a13c96f4b079169fd1f839da9ee"></a>
##### search among flcu


    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/099.d/001.pref.txt.md)



 <a id="e0e01d795cc74fe2ae43848f0181ca01"></a>
## Unsort
    

[002.select.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/099.d/002.select.txt.md)



 <a id="6a94a8b1ab4e4daaa048f02dc064994b"></a>
#### Select (меню выбора) в параметре функции

- Если параметром функции является меню, то
  - 0 означает, что при вызове user сможет в интерактивном меню select выбрать нужный пункт меню - после этого в контекст функции попадет сущность соответствующая этому пункту (путь к выбранному файлу, срока аргументов и т.п.)
  - N сразу указывает на пункт меню 

- `_d2mm` пример выбора файла из директории
    

[003.upg_fn.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/099.d/003.upg_fn.txt.md)



 <a id="75b2889efdfb4cc69a95f6245135e92a"></a>
#### UPG stl_fn

- для upg_[name_fn]:
  - создаем [name_fn]_
  - тестируем на наследование поведения
    - делаем bcp [name_fn] с перемещением файлов
    - заменяем [name_fn]_ на [name_fn] во сех файлах и директориях [name_fn]_ (like _gig_st_rc_fn _XXX -> [name_fn])
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/801.install_stl.d/001.pref.txt.md)



 <a id="ac6318d9c4c9403f9ec07fbf0506cb7d"></a>
# Install STL [and STL0]
    

[002.install_cli.txt.md](.d/.opus/readme.opus/cntx.ins.d/801.install_stl.d/002.install_cli.txt.md)



    ~ $ wget https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/main_install_stl.sh
    ~ $ . main_install_stl.sh

or

    ~ $ wget https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%2Fmain_install_stl.sh
    ~ $ . main_install_stl.sh

[003.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/801.install_stl.d/003.pref.txt.md)



 <a id="edd4ff60919d405b8716c3788c7b63fd"></a>
## restore STL from .d.zip
    

[004.restore_dot_d_cli.txt.md](.d/.opus/readme.opus/cntx.ins.d/801.install_stl.d/004.restore_dot_d_cli.txt.md)



    $ curl https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/restore_stl_from_zip.sh | sh

or

    $ curl https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%restore_stl_from_zip.sh | sh
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/901.unsort.d/001.pref.txt.md)



 <a id="c12dde203cf541b1a087339e71e2247d"></a>
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



 <a id="d1d607147b65412fb3fa41554ed36b25"></a>
# Замечания об использовании функций

- echo | _st_exit подавлние остановки при экстренном выходе по ^C
- _is_yes  если только вопрос о выходе то это только _st_exit , 
    использовать _is_yes только для ветвлений

- в следующих версиях использзовать `-` вместо `@` в качестве пустого аргумента
- заплнитель пустых директорий не файл 0, а _0    



