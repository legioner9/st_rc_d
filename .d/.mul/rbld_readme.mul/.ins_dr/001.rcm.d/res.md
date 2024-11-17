
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
 - <a href=#f69b2f8aebe541a8ade1b7e5f71b094a> Рекомендации RCM</a>
   - <a href=#be0add55c7cc42c3ba31d3636c18a1ff> RCM_1 (изменения в оригинал)</a>
   - <a href=#b139e4a5e51d4f1794210d11473d58c2> RCM_2 (служебные файлы)</a>
   - <a href=#cec2e463c4d94ca992d9aa6e1d0d0f0d> RCM_3 (cокращения)</a>
   - <a href=#0064c586f8dd4c3e85eb4323c4277785> RCM_4 (notmast_butlast)</a>
   - <a href=#f28f7300a507477c96ecaa22714af0fb> RCM_5 (mast_def_args)</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.ins_dr/001.rcm.d/cnx.d /home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.ins_dr/001.rcm.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.ins_dr/001.rcm.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731835751_17112024162911

DATX: 1731835751
-->


[001.pref.txt.md](cnx.d/002.d/001.pref.txt.md)



 <a id="f69b2f8aebe541a8ade1b7e5f71b094a"></a>
# Рекомендации RCM

    

[002.rcm_1.txt.md](cnx.d/002.d/002.rcm_1.txt.md)



 <a id="be0add55c7cc42c3ba31d3636c18a1ff"></a>
## RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](cnx.d/002.d/003.rcm_2.txt.md)



 <a id="b139e4a5e51d4f1794210d11473d58c2"></a>
## RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](cnx.d/002.d/004.rcm_3.txt.md)



 <a id="cec2e463c4d94ca992d9aa6e1d0d0f0d"></a>
## RCM_3 (cокращения)

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
    

[005.rcm_4.txt.md](cnx.d/002.d/005.rcm_4.txt.md)



 <a id="0064c586f8dd4c3e85eb4323c4277785"></a>
## RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](cnx.d/002.d/006.rcm_5.txt.md)



 <a id="f28f7300a507477c96ecaa22714af0fb"></a>
## RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 




