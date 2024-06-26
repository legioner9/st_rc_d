# <whatthat> Что такое strclib

[up to parent doc](../../../README.md)

# Основной замысел
 Легкая обертка над утилитами bash дающая дополнительные удобные функции за счет понижения абстракций, но остающаяся системным кодом для максимального количества задач написания приложений командной строки

## Требования которые необходимо соблюдать при написании библиотеки:
- Размер библиотеки и сложность функкций должны быть такими что бы быть обозримыми за приемлемое время и понятны для начального уровня владения bash 
- При запуске оболочки 
    - Поднять все функции библиотеки в env
    - Протестировать все функции
- Возможность использовать как загрузчик библиотек
    - имеющих bash скрипт в качестве точки входа  
## Требования которым необходимо следовать при написании функций:
- Одна функция в файле
- В коде разрешается использование
    - нативного bash
    - использование названия функций strclib запрещается
        - только переменных из файла ${HOME}/.st.rc.d/.st.config.d/fn_name.sh (подстановка имен для удобного использования версионирования)
- Название функции ^[_a-z][a-zA-Z1-9]*$
- \$1 специальные значения первого аргумента
   - _e : _edit body      : _edit \${HOME}/.st.rc.d/.st.sh.d/\<name_fn>.sh
   - _t : _edit tst_dir   : _edit \${HOME}/.st.rc.d/.st.tst.d/\<name_fn>.tst.d
   - _d : exec tst_dir_fn : . \${HOME}/.st.rc.d/.st.tst.d/\<name_fn>.tst.d/\<name_fn>.tst.sh

## Требования которые необходимо соблюдать при эскалировании ошибок:
    - на каждом этапе фиксируется 
        - файл путь и строка [, название функции]
        - имя ошибки from ${HOME}/.st.rc.d/.st.ax.d/error_standart_str.man
        - опционально: message
        - действие при поднятии данного этапа (etc: return 1, flag_err=1, ...)
        - опционально: пауза-вопрос о принятии решения (etc: ^C - exit, ENTER - return to process )
## Пожелания которым необходимо следовать при написании функций
- Результат функции зависит только от ее аргументов 
- Иногда допускается, что функция использует файл со списком определенным внутри основной директории ~/.st.rc.d (etc ~/.st.rc.d/st.data.d/\<name_fn>/\<name_list>.lst) по умолчанию

## Состав файловой системы
- ${HOME}/.st.rc.d : корневая директория библиотеки
   - ${HOME}/.st.tst : файл с _st_tst функцией exec all file : (source \<name_fn>.tst) from dir ${HOME}/.st.rc.d/.st.tst.d
   -  



[up to README.md](../../../README.md)