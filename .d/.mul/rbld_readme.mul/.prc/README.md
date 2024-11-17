
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
 - <a href=#eb49ec2907ec4de28df0b2c7dcfcdd72> Да здравствует Марк tshemsedinov</a>
   - <a href=#dc33c4aeb2b4469eb811097d2a354874> Благодарность</a>
 - <a href=#3044c9c5a6464edab1d26a2386805c4f> Явление миру </a>
   - <a href=#3038b8e11841442eb7ba6605d05880f1> Шаги по камням</a>
 - <a href=#9a4a52654777472c9c9301c72abe7689> Фон </a>
   - <a href=#637d4dfa8609437b9ca5f720d74500e5> Культурологический контекст</a>
   - <a href=#4242f86ba4494d12ab292031e3cac148> Огонь внутри</a>
 - <a href=#5aebf7d523a648159ce8d4017a7a3e59> Что я могу сделать</a>
 - <a href=#63a827a3057248d2836c99a83412b140> Библиотека камней - Теория</a>
   - <a href=#931a025515fe4b9d9935624654a2023b> Словарь</a>
   - <a href=#55164d906b664ecc923aa781b38dbd6b> [Рекомендации RCM]</a>
   - <a href=#cfd0313fb9d843b68418910dc72ee4ba> Что это</a>
   - <a href=#843f192ee455436b9fb4ef80c6b13b84> Ограничения</a>
     - <a href=#b88eed3e66e447e0aa4315f1d6b11d7e> Ограничение сложности stl</a>
     - <a href=#542d28cde83f477c8715baecacf8449b> Требования к fn_elem</a>
     - <a href=#ea14e4f9db674999b75571e34d1e47a7> Требования к os_sl</a>
     - <a href=#f3f69b5e88f94514a0324c7f1574d524> Тестируемость </a>
     - <a href=#6ad264f989074d228c851339965d7857> Расширяемость</a>
     - <a href=#fd192f44878b486faa6ac7c207dd7169> Производительность</a>
   - <a href=#8ea0bd85f3aa4de39f189fe766754083> Типы и поведение</a>
 - <a href=#fa880f8984124c918162d626348ff37d> Библиотека камней - Практика</a>
   - <a href=#0308f7bd02d149cc8aac01236506c171> Понижение абстракций</a>
     - <a href=#9cfc56a9019d4bbb8507da2b9e6e8019> Базовые принципы</a>
     - <a href=#673da7d063c04eb194943d251b4e6a47> Базовые технологии</a>
 - <a href=#3e002ceec9974e4e8039e0135e7cdee0> Что здесь есть</a>
     - <a href=#a8be15749c04494088b41e479951ef7f> Библиотека STL</a>
       - <a href=#9e15d6853db34015af16ce2e9c28a2d7> Поведение библиотеки STL</a>
         - <a href=#3b4ec80046dc401db3664b0b86fdb292> Правила именования функций</a>
         - <a href=#39064dae11244775b0e818a1b15c1c9c> Подсказки в именовании файлов или директорий</a>
         - <a href=#21025195abd14c479a6ee1bbab9a10ba> Подсказки в расширениях файлов - wellknown - `wnext`</a>
     - <a href=#bff237ecb58646c280de5dcc4306e2e7> Функция библиотеки STL</a>
       - <a href=#33441ce15d5945728a1cd8cd0d3fa59b> Поведение функции STL</a>
   - <a href=#832486051aca4d6f83836f158020235b> Состав библиотеки STL</a>
       - <a href=#3101d232c91847f4aed0f9ee251d6011> [Все функции STL (local)]</a>
       - <a href=#611a4bb379c74202bcb5f3ad1baa5575> [Все функции STL (git)]</a>
   - <a href=#457462b6772b4f0c97296f4b123dabd1> Библиотека STL0</a>
     - <a href=#c417ad7a097248f9a3c2d4f6feb8358b> Поведение библиотеки STL0</a>
   - <a href=#47275958fac14fc685589416bf931e8c> Функция библиотеки STL0</a>
     - <a href=#17dc7a2158994d90a1369bc92796c5eb> Поведение функции STL0</a>
   - <a href=#2146c260b9954934ab0d1b22cb93dc79> LCU</a>
     - <a href=#425a1a60004b4da38630663c64ff6f94> Что это</a>
     - <a href=#3659c5ac7c6c4f6d979d7299adde30f7> naming</a>
     - <a href=#b428f9cc61bd41b09ca4a416f4d49b99> add to flcu</a>
         - <a href=#b885e734964a415fb4112d06f7530ec2> search among flcu</a>
   - <a href=#b4d50958cc56434aae06388b74a98da8> Unsort</a>
       - <a href=#7328553093284210a3f1b3c8b1dac303> Select (меню выбора) в параметре функции</a>
       - <a href=#5fd8520b56c5496e91d635f3148fbf4a> UPG stl_fn</a>
 - <a href=#8be46868938c4398a23528b515d154f1> Install STL [and STL0]</a>
   - <a href=#cace60182f014d9ca9e35b2a4af8ba28> restore STL from .d.zip</a>
 - <a href=#408cc0ef863a486a8020e35aec80032a> Неупорядоченные заметки</a>
 - <a href=#cc19edc2d2a0476686bf6c0a7b1d3aef> Замечания об использовании функций</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt /home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.prc/README.md 2

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.prc

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731835756_17112024162916

DATX: 1731835756
-->


[001.pref.txt.md](../.cnt/001.01.ave_marcus.d/001.pref.txt.md)



 <a id="eb49ec2907ec4de28df0b2c7dcfcdd72"></a>
# Да здравствует Марк tshemsedinov

Ave Marcus tshemsedinov* (лат.)

*) Cuius fides est lux (лат.)

    

[001.pref.txt.md](../.cnt/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.md)



 <a id="dc33c4aeb2b4469eb811097d2a354874"></a>
## Благодарность

Gratia (лат.)

- vitlav
- larchanka
- a3rus
    

[001.pef.txt.md](../.cnt/002.01.manifesto.d/001.pef.txt.md)



 <a id="3044c9c5a6464edab1d26a2386805c4f"></a>
# Явление миру 

Manifesto

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.md](../.cnt/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.md)



 <a id="3038b8e11841442eb7ba6605d05880f1"></a>
## Шаги по камням

Gradus in saxa (лат.)
   

[001.txt.md](../.cnt/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.md)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.md](../.cnt/002.02.sfondo.d/001.pref.txt.md)



 <a id="9a4a52654777472c9c9301c72abe7689"></a>
# Фон 

Sfondo (лат.)  

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.md](../.cnt/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.md)



 <a id="637d4dfa8609437b9ca5f720d74500e5"></a>
## Культурологический контекст

Contextus culturalis (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.md](../.cnt/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.md)



 <a id="4242f86ba4494d12ab292031e3cac148"></a>
## Огонь внутри

Fuoco dentro (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.md](../.cnt/003.quid_possum_facere.d/001.pref.txt.md)



 <a id="5aebf7d523a648159ce8d4017a7a3e59"></a>
# Что я могу сделать

Quid possum facere (лат.)


[001.txt.md](../.cnt/003.quid_possum_facere.d/002.d/001.txt.md)




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
 
    

[001.pref.txt.md](../.cnt/004.bibliotheca_lapidum_theoria.d/001.pref.txt.md)



 <a id="63a827a3057248d2836c99a83412b140"></a>
# Библиотека камней - Теория

Bibliotheca Lapidum - Theoria (лат.)
    


[001.pref.txt.md](../.cnt/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.md)



 <a id="931a025515fe4b9d9935624654a2023b"></a>
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
    

[001.pref.txt.md](../.cnt/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/002.d/001.pref.txt.md)



 <a id="55164d906b664ecc923aa781b38dbd6b"></a>
## [Рекомендации RCM](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.ins_dr/001.rcm.d/res.md)

  

[001.pref.txt.md](../.cnt/004.bibliotheca_lapidum_theoria.d/003.quid_est.d/001.pref.txt.md)



 <a id="cfd0313fb9d843b68418910dc72ee4ba"></a>
## Что это

Quid est (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.md](../.cnt/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.md)



 <a id="843f192ee455436b9fb4ef80c6b13b84"></a>
## Ограничения

Limitations (лат.)

 <a id="b88eed3e66e447e0aa4315f1d6b11d7e"></a>
### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
 <a id="542d28cde83f477c8715baecacf8449b"></a>
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
 <a id="ea14e4f9db674999b75571e34d1e47a7"></a>
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

 <a id="f3f69b5e88f94514a0324c7f1574d524"></a>
### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

 <a id="6ad264f989074d228c851339965d7857"></a>
### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

 <a id="fd192f44878b486faa6ac7c207dd7169"></a>
### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.md](../.cnt/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.md)



 <a id="8ea0bd85f3aa4de39f189fe766754083"></a>
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

[001.pref.txt.md](../.cnt/005.bibliotheca_lapidum_usu.d/001.pref.txt.md)



 <a id="fa880f8984124c918162d626348ff37d"></a>
# Библиотека камней - Практика

Bibliotheca Lapidum - Usu (лат.)

  

[001.pref.txt.md](../.cnt/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.md)



 <a id="0308f7bd02d149cc8aac01236506c171"></a>
## Понижение абстракций

Deminutio abstractionis (лат.)


    

[001.pref.txt.md](../.cnt/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.md)



 <a id="9cfc56a9019d4bbb8507da2b9e6e8019"></a>
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



[001.pref.txt.md](../.cnt/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/003.basic_technologiae.txt.d/001.pref.txt.md)



 <a id="673da7d063c04eb194943d251b4e6a47"></a>
### Базовые технологии

Basic technologiae (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.md](../.cnt/701.quid_est_hic.d/001.pref.txt.md)



 <a id="3e002ceec9974e4e8039e0135e7cdee0"></a>
# Что здесь есть

Quid est hic (лат.)


    

[001.txt.md](../.cnt/701.quid_est_hic.d/002.d/001.01.d/001.txt.md)



 <a id="a8be15749c04494088b41e479951ef7f"></a>
### Библиотека STL

    

[001.pref.txt.md](../.cnt/701.quid_est_hic.d/002.d/001.01.d/002.d/001.pref.txt.md)



 <a id="9e15d6853db34015af16ce2e9c28a2d7"></a>
#### Поведение библиотеки STL



[002.txt.md](../.cnt/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/002.txt.md)



 <a id="3b4ec80046dc401db3664b0b86fdb292"></a>
##### Правила именования функций

- если [fn_stl] результатом является только возврат 0 или 1 при действии и производится [flow], то именование следующее:

    `_is_[flow]`

  - например определяется ответ `y` или `n` в качестве утверждения, то именование следующее:

    `_is_yes`

- если [fn_stl] n-обертка (в системе уже есть n-1 оберток) над [fn_elem] и производится [w_flow] изменение поведения, то именование следующее:
     
     `_[fn_elem]_wn_[w_flow]`

  - например первая обертка над source состоящая в проверке существования запускаемого файла, то имя следующее:   

    `_source_w1_isf`


    


[003.txt.md](../.cnt/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/003.txt.md)



 <a id="39064dae11244775b0e818a1b15c1c9c"></a>
##### Подсказки в именовании файлов или директорий

- если в имени файла или директории содержится `.ax.`, то удаление файла или файлов из директории будет иметь негативные последствия - допускается изменение файла или добавление файлов в директорию - иными словами ссылки на эти сущности используются в STL 

    

[004.txt.md](../.cnt/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/004.txt.md)



 <a id="21025195abd14c479a6ee1bbab9a10ba"></a>
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
  


    

[001.pref.txt.md](../.cnt/701.quid_est_hic.d/002.d/001.02.d/001.pref.txt.md)



 <a id="bff237ecb58646c280de5dcc4306e2e7"></a>
### Функция библиотеки STL
    

[001.pref.txt.md](../.cnt/701.quid_est_hic.d/002.d/001.02.d/002.d/001.pref.txt.md)



 <a id="33441ce15d5945728a1cd8cd0d3fa59b"></a>
#### Поведение функции STL
    

[002.txt.md](../.cnt/701.quid_est_hic.d/002.d/001.02.d/002.d/002.txt.md)




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
    

[001.03.pref.txt.md](../.cnt/701.quid_est_hic.d/002.d/001.03.pref.txt.md)



 <a id="832486051aca4d6f83836f158020235b"></a>
## Состав библиотеки STL

 <a id="3101d232c91847f4aed0f9ee251d6011"></a>
#### [Все функции STL (local)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.local.md)
 <a id="611a4bb379c74202bcb5f3ad1baa5575"></a>
#### [Все функции STL (git)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.git.md)

[001.txt.md](../.cnt/701.quid_est_hic.d/002.d/003.d/001.txt.md)



 <a id="457462b6772b4f0c97296f4b123dabd1"></a>
## Библиотека STL0

    

[001.pref.txt.md](../.cnt/701.quid_est_hic.d/002.d/003.d/002.d/001.pref.txt.md)



 <a id="c417ad7a097248f9a3c2d4f6feb8358b"></a>
### Поведение библиотеки STL0



[001.pref.txt.md](../.cnt/701.quid_est_hic.d/002.d/004.d/001.pref.txt.md)



 <a id="47275958fac14fc685589416bf931e8c"></a>
## Функция библиотеки STL0
    

[001.pref.txt.md](../.cnt/701.quid_est_hic.d/002.d/004.d/002.d/001.pref.txt.md)



 <a id="17dc7a2158994d90a1369bc92796c5eb"></a>
### Поведение функции STL0
    

[001.pref.txt.md](../.cnt/701.quid_est_hic.d/002.d/005.d/001.pref.txt.md)



 <a id="2146c260b9954934ab0d1b22cb93dc79"></a>
## LCU
    

[099.upg_fn.txt.md](../.cnt/701.quid_est_hic.d/002.d/005.d/099.upg_fn.txt.md)



 <a id="425a1a60004b4da38630663c64ff6f94"></a>
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
 <a id="3659c5ac7c6c4f6d979d7299adde30f7"></a>
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
 <a id="b428f9cc61bd41b09ca4a416f4d49b99"></a>
### add to flcu

- nrdx
- tags
- main

 <a id="b885e734964a415fb4112d06f7530ec2"></a>
##### search among flcu


    

[001.pref.txt.md](../.cnt/701.quid_est_hic.d/002.d/099.d/001.pref.txt.md)



 <a id="b4d50958cc56434aae06388b74a98da8"></a>
## Unsort
    

[002.select.txt.md](../.cnt/701.quid_est_hic.d/002.d/099.d/002.select.txt.md)



 <a id="7328553093284210a3f1b3c8b1dac303"></a>
#### Select (меню выбора) в параметре функции

- Если параметром функции является меню, то
  - 0 означает, что при вызове user сможет в интерактивном меню select выбрать нужный пункт меню - после этого в контекст функции попадет сущность соответствующая этому пункту (путь к выбранному файлу, срока аргументов и т.п.)
  - N сразу указывает на пункт меню 

- `_d2mm` пример выбора файла из директории
    

[003.upg_fn.txt.md](../.cnt/701.quid_est_hic.d/002.d/099.d/003.upg_fn.txt.md)



 <a id="5fd8520b56c5496e91d635f3148fbf4a"></a>
#### UPG stl_fn

- для upg_[name_fn]:
  - создаем [name_fn]_
  - тестируем на наследование поведения
    - делаем bcp [name_fn] с перемещением файлов
    - заменяем [name_fn]_ на [name_fn] во сех файлах и директориях [name_fn]_ (like _gig_st_rc_fn _XXX -> [name_fn])
    

[001.pref.txt.md](../.cnt/801.install_stl.d/001.pref.txt.md)



 <a id="8be46868938c4398a23528b515d154f1"></a>
# Install STL [and STL0]
    

[002.install_cli.txt.md](../.cnt/801.install_stl.d/002.install_cli.txt.md)



    ~ $ wget https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/main_install_stl.sh
    ~ $ . main_install_stl.sh

or

    ~ $ wget https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%2Fmain_install_stl.sh
    ~ $ . main_install_stl.sh

[003.pref.txt.md](../.cnt/801.install_stl.d/003.pref.txt.md)



 <a id="cace60182f014d9ca9e35b2a4af8ba28"></a>
## restore STL from .d.zip
    

[004.restore_dot_d_cli.txt.md](../.cnt/801.install_stl.d/004.restore_dot_d_cli.txt.md)



    $ curl https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/restore_stl_from_zip.sh | sh

or

    $ curl https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%restore_stl_from_zip.sh | sh
    

[001.pref.txt.md](../.cnt/901.unsort.d/001.pref.txt.md)



 <a id="408cc0ef863a486a8020e35aec80032a"></a>
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



[001.pref.txt.md](../.cnt/902.using_note.d/001.pref.txt.md)



 <a id="cc19edc2d2a0476686bf6c0a7b1d3aef"></a>
# Замечания об использовании функций

- echo | _st_exit подавлние остановки при экстренном выходе по ^C
- _is_yes  если только вопрос о выходе то это только _st_exit , 
    использовать _is_yes только для ветвлений

- в следующих версиях использзовать `-` вместо `@` в качестве пустого аргумента
- заплнитель пустых директорий не файл 0, а _0    



