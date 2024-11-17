
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
 - <a href=#efd98cae110547e6ae5a2fdfa7b5680d> First Head</a>
 - <a href=#1bc8defaa4314e62b06e410cb2991d6e> Да здравствует Марк tshemsedinov</a>
   - <a href=#73f64d947c90422b84459df0fe105ee3> Благодарность</a>
 - <a href=#090854562de44876b6802459608225e0> Явление миру </a>
   - <a href=#1affdb4b60404a779bce7b312b8fd344> Шаги по камням</a>
 - <a href=#fd88be6d7e6742d18f89f10975327a00> Фон </a>
   - <a href=#fbbfb153f2c5443cb6582a00da2548e5> Культурологический контекст</a>
   - <a href=#6d6d31627903417ba3ffd5ef286524e9> Огонь внутри</a>
 - <a href=#ab285835b9ec4d5d80ad9abf6e5cb3b6> Что я могу сделать</a>
 - <a href=#4f7119afe188407391b091b39f4404ea> Библиотека камней - Теория</a>
   - <a href=#79a10905247b41698ddbf6864b734987> Словарь</a>
   - <a href=#79b1267f93434d97894294b459d1e935> Что это</a>
   - <a href=#a09f1edd6ee249e7a81ec5ffaf9f618b> Ограничения</a>
     - <a href=#6e0341314a9a4836ade7adae2d22f458> Ограничение сложности stl</a>
     - <a href=#905ca40a9e9144e6aa9cea380597c63c> Требования к fn_elem</a>
     - <a href=#2f8197bc46a245b59ded9c6213f6ccfc> Требования к os_sl</a>
     - <a href=#dfcd3b01079c4861a85024798a42cf7c> Тестируемость </a>
     - <a href=#df3c3a40872341dfbd200e45c2fa44c6> Расширяемость</a>
     - <a href=#183217f46231472a87a2ed4c282cd128> Производительность</a>
   - <a href=#9525076571464a219ea4fbbc4be91804> Типы и поведение</a>
   - <a href=#d6d7f44e293b4c51abb683425567cbd9> Рекомендации RCM</a>
     - <a href=#e937e40906564a3e9781d2c601fb140a> RCM_1 (изменения в оригинал)</a>
     - <a href=#09e060002220471e999102f031fa1e15> RCM_2 (служебные файлы)</a>
     - <a href=#4b9d24554cdd4d75ae6468230328c5f4> RCM_3 (cокращения)</a>
     - <a href=#a3092c9f32e047b69a2604d7b33af702> RCM_4 (notmast_butlast)</a>
     - <a href=#7b0556942f1c40ac8b516d15c90783d0> RCM_5 (mast_def_args)</a>
 - <a href=#53b26190bdd247c88078239911f45a20> Библиотека камней - Практика</a>
   - <a href=#426905034bc9416586d7b631289f5d98> Понижение абстракций</a>
     - <a href=#b57e24bbb471432c9b18a0f698855ae2> Базовые принципы</a>
     - <a href=#ffc6b993543049e4af42ece3e32355d7> Базовые технологии</a>
 - <a href=#5120dd6bf2414345ab78ff54bb6fef81> Что здесь есть</a>
     - <a href=#84e3eb196a8b432f94e348ec64e35f66> Библиотека STL</a>
       - <a href=#1027fbef93a74b7db0a16a19c6fbb352> Поведение библиотеки STL</a>
         - <a href=#7c51150227924bebadf77b0364ae0d17> Правила именования функций</a>
         - <a href=#d669107b7f84423a9f3bf5d1d5618e20> Подсказки в именовании файлов или директорий</a>
         - <a href=#c8298c6ea56e43e7bf2ee4d804044807> Подсказки в расширениях файлов - wellknown - `wnext`</a>
     - <a href=#801f8a27d1aa44b2a77e95609f7b39dd> Функция библиотеки STL</a>
       - <a href=#195e2d04f0704268b5deb5cd459b0164> Поведение функции STL</a>
   - <a href=#1fc5a89668aa4d489721f7337f2f57f7> Состав библиотеки STL</a>
       - <a href=#2129f7de226941a1acf7fecc3499245a> [Все функции STL (local)]</a>
       - <a href=#f999d2ff896c4fde8da1d08b77517539> [Все функции STL (git)]</a>
   - <a href=#ff4a63ee72ef449498583c760d2eb29d> Библиотека STL0</a>
     - <a href=#dc9fbef5a03240e99c08af36baa4d22a> Поведение библиотеки STL0</a>
   - <a href=#865fdc43f8cd49fa8a9d3b23b7078cc4> Функция библиотеки STL0</a>
     - <a href=#299274dee10142fbb350f40c2317a434> Поведение функции STL0</a>
   - <a href=#6de7a44aa6c94123a5041b08f401fd99> LCU</a>
     - <a href=#8fec436c745249f9b75062720daef7c7> Что это</a>
     - <a href=#c5a4e13584804333bf186cfe6bdac688> naming</a>
     - <a href=#2f778e2623b240ad8f0663d05f439640> add to flcu</a>
         - <a href=#260d1c837b9647d8b80ea41a72c6c360> search among flcu</a>
   - <a href=#7194f03ac68f4a639f5b9741fc3a40b0> Unsort</a>
       - <a href=#03428a353f5a4733bdc76fc48d42eaa8> Select (меню выбора) в параметре функции</a>
       - <a href=#cfca1bcbf17547e69361a44a8def4063> UPG stl_fn</a>
 - <a href=#f3b3d96fb87f4186be25ed0ceb8a03f6> Install STL [and STL0]</a>
   - <a href=#55f93fd08af24ea08a5e4f821d13a7ff> restore STL from .d.zip</a>
 - <a href=#7e761671dd35451c800d7e8ad5389459> Неупорядоченные заметки</a>
 - <a href=#bf21ce6b8a4c4d17bcf8f4db46cca0dc> Замечания об использовании функций</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/cntx.ins.d /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus/cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.opus/readme.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731869172_18112024014612

DATX: 1731869172
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="efd98cae110547e6ae5a2fdfa7b5680d"></a>
# First Head


    

[001.pref.txt.md](cntx.ins.d/001.01.ave_marcus.d/001.pref.txt.md)



 <a id="1bc8defaa4314e62b06e410cb2991d6e"></a>
# Да здравствует Марк tshemsedinov

Ave Marcus tshemsedinov* (лат.)

*) Cuius fides est lux (лат.)

    

[001.pref.txt.md](cntx.ins.d/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.md)



 <a id="73f64d947c90422b84459df0fe105ee3"></a>
## Благодарность

Gratia (лат.)

- vitlav
- larchanka
- a3rus
    

[001.pef.txt.md](cntx.ins.d/002.01.manifesto.d/001.pef.txt.md)



 <a id="090854562de44876b6802459608225e0"></a>
# Явление миру 

Manifesto

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.md](cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.md)



 <a id="1affdb4b60404a779bce7b312b8fd344"></a>
## Шаги по камням

Gradus in saxa (лат.)
   

[001.txt.md](cntx.ins.d/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.md)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/001.pref.txt.md)



 <a id="fd88be6d7e6742d18f89f10975327a00"></a>
# Фон 

Sfondo (лат.)  

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.md)



 <a id="fbbfb153f2c5443cb6582a00da2548e5"></a>
## Культурологический контекст

Contextus culturalis (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.md](cntx.ins.d/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.md)



 <a id="6d6d31627903417ba3ffd5ef286524e9"></a>
## Огонь внутри

Fuoco dentro (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.md](cntx.ins.d/003.quid_possum_facere.d/001.pref.txt.md)



 <a id="ab285835b9ec4d5d80ad9abf6e5cb3b6"></a>
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



 <a id="4f7119afe188407391b091b39f4404ea"></a>
# Библиотека камней - Теория

Bibliotheca Lapidum - Theoria (лат.)
    


[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.md)



 <a id="79a10905247b41698ddbf6864b734987"></a>
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



 <a id="79b1267f93434d97894294b459d1e935"></a>
## Что это

Quid est (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.md)



 <a id="a09f1edd6ee249e7a81ec5ffaf9f618b"></a>
## Ограничения

Limitations (лат.)

 <a id="6e0341314a9a4836ade7adae2d22f458"></a>
### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
 <a id="905ca40a9e9144e6aa9cea380597c63c"></a>
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
 <a id="2f8197bc46a245b59ded9c6213f6ccfc"></a>
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

 <a id="dfcd3b01079c4861a85024798a42cf7c"></a>
### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

 <a id="df3c3a40872341dfbd200e45c2fa44c6"></a>
### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

 <a id="183217f46231472a87a2ed4c282cd128"></a>
### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.md)



 <a id="9525076571464a219ea4fbbc4be91804"></a>
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




 <a id="d6d7f44e293b4c51abb683425567cbd9"></a>
## Рекомендации RCM

    

[002.rcm_1.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/002.rcm_1.txt.md)



 <a id="e937e40906564a3e9781d2c601fb140a"></a>
### RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/003.rcm_2.txt.md)



 <a id="09e060002220471e999102f031fa1e15"></a>
### RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/004.rcm_3.txt.md)



 <a id="4b9d24554cdd4d75ae6468230328c5f4"></a>
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



 <a id="a3092c9f32e047b69a2604d7b33af702"></a>
### RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](cntx.ins.d/004.bibliotheca_lapidum_theoria.d/006.recom.d/002.d/006.rcm_5.txt.md)



 <a id="7b0556942f1c40ac8b516d15c90783d0"></a>
### RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/001.pref.txt.md)



 <a id="53b26190bdd247c88078239911f45a20"></a>
# Библиотека камней - Практика

Bibliotheca Lapidum - Usu (лат.)

  

[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.md)



 <a id="426905034bc9416586d7b631289f5d98"></a>
## Понижение абстракций

Deminutio abstractionis (лат.)


    

[001.pref.txt.md](cntx.ins.d/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.md)



 <a id="b57e24bbb471432c9b18a0f698855ae2"></a>
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



 <a id="ffc6b993543049e4af42ece3e32355d7"></a>
### Базовые технологии

Basic technologiae (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/001.pref.txt.md)



 <a id="5120dd6bf2414345ab78ff54bb6fef81"></a>
# Что здесь есть

Quid est hic (лат.)


    

[001.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/001.txt.md)



 <a id="84e3eb196a8b432f94e348ec64e35f66"></a>
### Библиотека STL

    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/001.pref.txt.md)



 <a id="1027fbef93a74b7db0a16a19c6fbb352"></a>
#### Поведение библиотеки STL



[002.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/002.txt.md)



 <a id="7c51150227924bebadf77b0364ae0d17"></a>
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



 <a id="d669107b7f84423a9f3bf5d1d5618e20"></a>
##### Подсказки в именовании файлов или директорий

- если в имени файла или директории содержится `.ax.`, то удаление файла или файлов из директории будет иметь негативные последствия - допускается изменение файла или добавление файлов в директорию - иными словами ссылки на эти сущности используются в STL 

    

[004.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/004.txt.md)



 <a id="c8298c6ea56e43e7bf2ee4d804044807"></a>
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



 <a id="801f8a27d1aa44b2a77e95609f7b39dd"></a>
### Функция библиотеки STL
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/001.02.d/002.d/001.pref.txt.md)



 <a id="195e2d04f0704268b5deb5cd459b0164"></a>
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



 <a id="1fc5a89668aa4d489721f7337f2f57f7"></a>
## Состав библиотеки STL

 <a id="2129f7de226941a1acf7fecc3499245a"></a>
#### [Все функции STL (local)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.local.md)
 <a id="f999d2ff896c4fde8da1d08b77517539"></a>
#### [Все функции STL (git)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.git.md)

[001.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/003.d/001.txt.md)



 <a id="ff4a63ee72ef449498583c760d2eb29d"></a>
## Библиотека STL0

    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/003.d/002.d/001.pref.txt.md)



 <a id="dc9fbef5a03240e99c08af36baa4d22a"></a>
### Поведение библиотеки STL0



[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/004.d/001.pref.txt.md)



 <a id="865fdc43f8cd49fa8a9d3b23b7078cc4"></a>
## Функция библиотеки STL0
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/004.d/002.d/001.pref.txt.md)



 <a id="299274dee10142fbb350f40c2317a434"></a>
### Поведение функции STL0
    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/005.d/001.pref.txt.md)



 <a id="6de7a44aa6c94123a5041b08f401fd99"></a>
## LCU
    

[099.upg_fn.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/005.d/099.upg_fn.txt.md)



 <a id="8fec436c745249f9b75062720daef7c7"></a>
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
 <a id="c5a4e13584804333bf186cfe6bdac688"></a>
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
 <a id="2f778e2623b240ad8f0663d05f439640"></a>
### add to flcu

- nrdx
- tags
- main

 <a id="260d1c837b9647d8b80ea41a72c6c360"></a>
##### search among flcu


    

[001.pref.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/001.pref.txt.md)



 <a id="7194f03ac68f4a639f5b9741fc3a40b0"></a>
## Unsort
    

[002.select.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/002.select.txt.md)



 <a id="03428a353f5a4733bdc76fc48d42eaa8"></a>
#### Select (меню выбора) в параметре функции

- Если параметром функции является меню, то
  - 0 означает, что при вызове user сможет в интерактивном меню select выбрать нужный пункт меню - после этого в контекст функции попадет сущность соответствующая этому пункту (путь к выбранному файлу, срока аргументов и т.п.)
  - N сразу указывает на пункт меню 

- `_d2mm` пример выбора файла из директории
    

[003.upg_fn.txt.md](cntx.ins.d/701.quid_est_hic.d/002.d/099.d/003.upg_fn.txt.md)



 <a id="cfca1bcbf17547e69361a44a8def4063"></a>
#### UPG stl_fn

- для upg_[name_fn]:
  - создаем [name_fn]_
  - тестируем на наследование поведения
    - делаем bcp [name_fn] с перемещением файлов
    - заменяем [name_fn]_ на [name_fn] во сех файлах и директориях [name_fn]_ (like _gig_st_rc_fn _XXX -> [name_fn])
    

[001.pref.txt.md](cntx.ins.d/801.install_stl.d/001.pref.txt.md)



 <a id="f3b3d96fb87f4186be25ed0ceb8a03f6"></a>
# Install STL [and STL0]
    

[002.install_cli.txt.md](cntx.ins.d/801.install_stl.d/002.install_cli.txt.md)



    ~ $ wget https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/main_install_stl.sh
    ~ $ . main_install_stl.sh

or

    ~ $ wget https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%2Fmain_install_stl.sh
    ~ $ . main_install_stl.sh

[003.pref.txt.md](cntx.ins.d/801.install_stl.d/003.pref.txt.md)



 <a id="55f93fd08af24ea08a5e4f821d13a7ff"></a>
## restore STL from .d.zip
    

[004.restore_dot_d_cli.txt.md](cntx.ins.d/801.install_stl.d/004.restore_dot_d_cli.txt.md)



    $ curl https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/restore_stl_from_zip.sh | sh

or

    $ curl https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%restore_stl_from_zip.sh | sh
    

[001.pref.txt.md](cntx.ins.d/901.unsort.d/001.pref.txt.md)



 <a id="7e761671dd35451c800d7e8ad5389459"></a>
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



 <a id="bf21ce6b8a4c4d17bcf8f4db46cca0dc"></a>
# Замечания об использовании функций

- echo | _st_exit подавлние остановки при экстренном выходе по ^C
- _is_yes  если только вопрос о выходе то это только _st_exit , 
    использовать _is_yes только для ветвлений

- в следующих версиях использзовать `-` вместо `@` в качестве пустого аргумента
- заплнитель пустых директорий не файл 0, а _0    



