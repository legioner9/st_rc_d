
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
 - <a href=#58b34e83b407496d800704961cbf0331> First Head</a>
 - <a href=#d520b56ae2df4431bd5e683b5b9eb62a> Да здравствует Марк tshemsedinov</a>
   - <a href=#f937a2c0cdbb4714ad58af637592ab74> Благодарность</a>
 - <a href=#23602785bc7e457e93ffe9a5a701b58b> Явление миру </a>
   - <a href=#7aeaa04b1ad0402486152e94111f4598> Шаги по камням</a>
 - <a href=#d7ad66d989e24040b628a831beb2ff7f> Фон </a>
   - <a href=#5705624941ba4762b6de2c9b0c614f4a> Культурологический контекст</a>
   - <a href=#d78bc439d25d4015a6ad0b72056cc19a> Огонь внутри</a>
 - <a href=#7a5026e3c2c7411da0a009757ae1c286> Что я могу сделать</a>
 - <a href=#6a419801e94244508eab7fe3f1c8b775> Библиотека камней - Теория</a>
   - <a href=#c9cddaf9007648fca7fa67cd1811127f> Словарь</a>
   - <a href=#fa87d1f6100f483daafceaee77c0b789> Что это</a>
   - <a href=#71f80cdd3be740ee97d0daecd8062c93> Ограничения</a>
     - <a href=#2fd48d17344c491faee75155e4508fd0> Ограничение сложности stl</a>
     - <a href=#a522e9b33a6146fbb4bbc51e1d5c56ee> Требования к fn_elem</a>
     - <a href=#ddbbac37b2be41b5938ebc153259324f> Требования к os_sl</a>
     - <a href=#1b8a2bf15f734f96b4de26e83b075372> Тестируемость </a>
     - <a href=#45c5dae90d49488495a6cd4ea5522064> Расширяемость</a>
     - <a href=#7bcd6432864c40978d218455f4564d66> Производительность</a>
   - <a href=#5c01fa244f60458a88aa713d4aa488f1> Типы и поведение</a>
   - <a href=#596a16a27348490495d799206c8716ba> Рекомендации RCM</a>
     - <a href=#a60fe9a50fc443e3ae0797e12226e6a1> RCM_1 (изменения в оригинал)</a>
     - <a href=#26b2f0884a7348f69c1ae6ebc3295d21> RCM_2 (служебные файлы)</a>
     - <a href=#a3883889b16842a1a0fa2dd738058602> RCM_3 (cокращения)</a>
     - <a href=#9025eead66e24b0fa722bdeb85351408> RCM_4 (notmast_butlast)</a>
     - <a href=#b35c31e41fef42eeb4471035b2d400e9> RCM_5 (mast_def_args)</a>
 - <a href=#b416b7b01b9c4d16a2801318caf6fe8a> Библиотека камней - Практика</a>
   - <a href=#9a1ce4d106dc4099988061620eb40d43> Понижение абстракций</a>
     - <a href=#9954ba4ae17449aca1fdbb60330cfff4> Базовые принципы</a>
     - <a href=#da37d0acc7d947d58910fb861280592b> Базовые технологии</a>
 - <a href=#1a8dfa282f4f4ec286a8736787b5a219> Что здесь есть</a>
     - <a href=#65efa2f235ec48c6ad71a026b63ad398> Библиотека STL</a>
       - <a href=#c69004d8cd5f422bba16ae8ced4a6983> Поведение библиотеки STL</a>
         - <a href=#f280159b09bd4983bb25a4d09a68550b> Правила именования функций</a>
         - <a href=#b0f6513995e443a8ac221da967af1ee6> Подсказки в именовании файлов или директорий</a>
         - <a href=#077a9d469489453c9ef8e05209f4b324> Подсказки в расширениях файлов - wellknown - `wnext`</a>
     - <a href=#0e4b8235c54c4f0789c1b0206c93d0c9> Функция библиотеки STL</a>
       - <a href=#8d4a73b8f54d417a8695462eecb4cb6b> Поведение функции STL</a>
   - <a href=#f42aa247d81f4a4893fe016b12c4887b> Состав библиотеки STL</a>
       - <a href=#5253ad28e5724913bee6ee05d33e94e4> [Все функции STL (local)]</a>
       - <a href=#a811c863887c44f59a7b7b8dda84a2a8> [Все функции STL (git)]</a>
   - <a href=#cda276265bfb4bda9b7fc42bf9feb093> Библиотека STL0</a>
     - <a href=#e119fa5bfdc34bfbb82bbaa4e2510b84> Поведение библиотеки STL0</a>
   - <a href=#1e1e154a17794e14ae4768946960c9a5> Функция библиотеки STL0</a>
     - <a href=#9d08eed282904ba6bf91f0f0e17ba05e> Поведение функции STL0</a>
   - <a href=#64bbc9e7df454d41ba0bf70e81d6ba14> LCU</a>
     - <a href=#6484cff1a06048f18b658d0ec8af44dc> Что это</a>
     - <a href=#fb3eee80efc141989da7fdb3676d1950> naming</a>
     - <a href=#31441e57530946a7a47377eb73256489> add to flcu</a>
         - <a href=#bc9790be79ec451b810c39a760765dd8> search among flcu</a>
   - <a href=#fbbd681e80034700b861b4e954186cec> Unsort</a>
       - <a href=#96de49f8b4994b05891862953f568fcc> Select (меню выбора) в параметре функции</a>
       - <a href=#a9c1b3448bc64c76b4a4b258448bb676> UPG stl_fn</a>
 - <a href=#597695a61e364dccb2a7caaad2e4978f> Install STL [and STL0]</a>
   - <a href=#c600e705481f4692b926ffead3342850> restore STL from .d.zip</a>
 - <a href=#ec7ffebcad7c4d6db3b286c82a7ed785> Неупорядоченные заметки</a>
 - <a href=#903fab1c1cf84ad69c5b766589f994e1> Замечания об использовании функций</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/cntx.ins.d /home/st/REPOBARE/_repo/st_rc_d/README.md 2

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732082477_20112024130117

DATX: 1732082477
-->


[001.001.first_head.txt.md](.d/.opus/readme.opus/cntx.ins.d/001.001.first_head.txt.md)



 <a id="58b34e83b407496d800704961cbf0331"></a>
# First Head


    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/001.01.ave_marcus.d/001.pref.txt.md)



 <a id="d520b56ae2df4431bd5e683b5b9eb62a"></a>
# Да здравствует Марк tshemsedinov

Ave Marcus tshemsedinov* (лат.)

*) Cuius fides est lux (лат.)

    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.md)



 <a id="f937a2c0cdbb4714ad58af637592ab74"></a>
## Благодарность

Gratia (лат.)

- vitlav
- larchanka
- a3rus
    

[001.pef.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.01.manifesto.d/001.pef.txt.md)



 <a id="23602785bc7e457e93ffe9a5a701b58b"></a>
# Явление миру 

Manifesto

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.md)



 <a id="7aeaa04b1ad0402486152e94111f4598"></a>
## Шаги по камням

Gradus in saxa (лат.)
   

[001.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.md)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.02.sfondo.d/001.pref.txt.md)



 <a id="d7ad66d989e24040b628a831beb2ff7f"></a>
# Фон 

Sfondo (лат.)  

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.md)



 <a id="5705624941ba4762b6de2c9b0c614f4a"></a>
## Культурологический контекст

Contextus culturalis (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.md)



 <a id="d78bc439d25d4015a6ad0b72056cc19a"></a>
## Огонь внутри

Fuoco dentro (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/003.quid_possum_facere.d/001.pref.txt.md)



 <a id="7a5026e3c2c7411da0a009757ae1c286"></a>
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



 <a id="6a419801e94244508eab7fe3f1c8b775"></a>
# Библиотека камней - Теория

Bibliotheca Lapidum - Theoria (лат.)
    


[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.md)



 <a id="c9cddaf9007648fca7fa67cd1811127f"></a>
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



 <a id="fa87d1f6100f483daafceaee77c0b789"></a>
## Что это

Quid est (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.md)



 <a id="71f80cdd3be740ee97d0daecd8062c93"></a>
## Ограничения

Limitations (лат.)

 <a id="2fd48d17344c491faee75155e4508fd0"></a>
### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
 <a id="a522e9b33a6146fbb4bbc51e1d5c56ee"></a>
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
 <a id="ddbbac37b2be41b5938ebc153259324f"></a>
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

 <a id="1b8a2bf15f734f96b4de26e83b075372"></a>
### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

 <a id="45c5dae90d49488495a6cd4ea5522064"></a>
### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

 <a id="7bcd6432864c40978d218455f4564d66"></a>
### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.md)



 <a id="5c01fa244f60458a88aa713d4aa488f1"></a>
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




 <a id="596a16a27348490495d799206c8716ba"></a>
## Рекомендации RCM

    

[002.rcm_1.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/002.rcm_1.txt.md)



 <a id="a60fe9a50fc443e3ae0797e12226e6a1"></a>
### RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/003.rcm_2.txt.md)



 <a id="26b2f0884a7348f69c1ae6ebc3295d21"></a>
### RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/004.rcm_3.txt.md)



 <a id="a3883889b16842a1a0fa2dd738058602"></a>
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



 <a id="9025eead66e24b0fa722bdeb85351408"></a>
### RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](.d/.opus/readme.opus/cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/006.rcm_5.txt.md)



 <a id="b35c31e41fef42eeb4471035b2d400e9"></a>
### RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/005.bibliotheca_lapidum_usu.d/001.pref.txt.md)



 <a id="b416b7b01b9c4d16a2801318caf6fe8a"></a>
# Библиотека камней - Практика

Bibliotheca Lapidum - Usu (лат.)

  

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.md)



 <a id="9a1ce4d106dc4099988061620eb40d43"></a>
## Понижение абстракций

Deminutio abstractionis (лат.)


    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.md)



 <a id="9954ba4ae17449aca1fdbb60330cfff4"></a>
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



 <a id="da37d0acc7d947d58910fb861280592b"></a>
### Базовые технологии

Basic technologiae (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/001.pref.txt.md)



 <a id="1a8dfa282f4f4ec286a8736787b5a219"></a>
# Что здесь есть

Quid est hic (лат.)


    

[001.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/001.txt.md)



 <a id="65efa2f235ec48c6ad71a026b63ad398"></a>
### Библиотека STL

    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/001.pref.txt.md)



 <a id="c69004d8cd5f422bba16ae8ced4a6983"></a>
#### Поведение библиотеки STL



[002.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/002.txt.md)



 <a id="f280159b09bd4983bb25a4d09a68550b"></a>
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



 <a id="b0f6513995e443a8ac221da967af1ee6"></a>
##### Подсказки в именовании файлов или директорий

- если в имени файла или директории содержится `.ax.`, то удаление файла или файлов из директории будет иметь негативные последствия - допускается изменение файла или добавление файлов в директорию - иными словами ссылки на эти сущности используются в STL 

    

[004.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/004.txt.md)



 <a id="077a9d469489453c9ef8e05209f4b324"></a>
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



 <a id="0e4b8235c54c4f0789c1b0206c93d0c9"></a>
### Функция библиотеки STL
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/001.pref.txt.md)



 <a id="8d4a73b8f54d417a8695462eecb4cb6b"></a>
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



 <a id="f42aa247d81f4a4893fe016b12c4887b"></a>
## Состав библиотеки STL

 <a id="5253ad28e5724913bee6ee05d33e94e4"></a>
#### [Все функции STL (local)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.local.md)
 <a id="a811c863887c44f59a7b7b8dda84a2a8"></a>
#### [Все функции STL (git)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.git.md)

[001.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/003.d/001.txt.md)



 <a id="cda276265bfb4bda9b7fc42bf9feb093"></a>
## Библиотека STL0

    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/003.d/002.d/001.pref.txt.md)



 <a id="e119fa5bfdc34bfbb82bbaa4e2510b84"></a>
### Поведение библиотеки STL0



[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/004.d/001.pref.txt.md)



 <a id="1e1e154a17794e14ae4768946960c9a5"></a>
## Функция библиотеки STL0
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/004.d/002.d/001.pref.txt.md)



 <a id="9d08eed282904ba6bf91f0f0e17ba05e"></a>
### Поведение функции STL0
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/005.d/001.pref.txt.md)



 <a id="64bbc9e7df454d41ba0bf70e81d6ba14"></a>
## LCU
    

[099.upg_fn.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/005.d/099.upg_fn.txt.md)



 <a id="6484cff1a06048f18b658d0ec8af44dc"></a>
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
 <a id="fb3eee80efc141989da7fdb3676d1950"></a>
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
 <a id="31441e57530946a7a47377eb73256489"></a>
### add to flcu

- nrdx
- tags
- main

 <a id="bc9790be79ec451b810c39a760765dd8"></a>
##### search among flcu


    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/099.d/001.pref.txt.md)



 <a id="fbbd681e80034700b861b4e954186cec"></a>
## Unsort
    

[002.select.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/099.d/002.select.txt.md)



 <a id="96de49f8b4994b05891862953f568fcc"></a>
#### Select (меню выбора) в параметре функции

- Если параметром функции является меню, то
  - 0 означает, что при вызове user сможет в интерактивном меню select выбрать нужный пункт меню - после этого в контекст функции попадет сущность соответствующая этому пункту (путь к выбранному файлу, срока аргументов и т.п.)
  - N сразу указывает на пункт меню 

- `_d2mm` пример выбора файла из директории
    

[003.upg_fn.txt.md](.d/.opus/readme.opus/cntx.ins.d/701.quid_est_hic.d/002.d/099.d/003.upg_fn.txt.md)



 <a id="a9c1b3448bc64c76b4a4b258448bb676"></a>
#### UPG stl_fn

- для upg_[name_fn]:
  - создаем [name_fn]_
  - тестируем на наследование поведения
    - делаем bcp [name_fn] с перемещением файлов
    - заменяем [name_fn]_ на [name_fn] во сех файлах и директориях [name_fn]_ (like _gig_st_rc_fn _XXX -> [name_fn])
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/801.install_stl.d/001.pref.txt.md)



 <a id="597695a61e364dccb2a7caaad2e4978f"></a>
# Install STL [and STL0]
    

[002.install_cli.txt.md](.d/.opus/readme.opus/cntx.ins.d/801.install_stl.d/002.install_cli.txt.md)



    ~ $ wget https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/main_install_stl.sh
    ~ $ . main_install_stl.sh

or

    ~ $ wget https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%2Fmain_install_stl.sh
    ~ $ . main_install_stl.sh

[003.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/801.install_stl.d/003.pref.txt.md)



 <a id="c600e705481f4692b926ffead3342850"></a>
## restore STL from .d.zip
    

[004.restore_dot_d_cli.txt.md](.d/.opus/readme.opus/cntx.ins.d/801.install_stl.d/004.restore_dot_d_cli.txt.md)



    $ curl https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/restore_stl_from_zip.sh | sh

or

    $ curl https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%restore_stl_from_zip.sh | sh
    

[001.pref.txt.md](.d/.opus/readme.opus/cntx.ins.d/901.unsort.d/001.pref.txt.md)



 <a id="ec7ffebcad7c4d6db3b286c82a7ed785"></a>
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



 <a id="903fab1c1cf84ad69c5b766589f994e1"></a>
# Замечания об использовании функций

- echo | _st_exit подавлние остановки при экстренном выходе по ^C
- _is_yes  если только вопрос о выходе то это только _st_exit , 
    использовать _is_yes только для ветвлений

- в следующих версиях использзовать `-` вместо `@` в качестве пустого аргумента
- заплнитель пустых директорий не файл 0, а _0     



