au FileType c,cpp call <SID>CppHelperInit()

let s:plugin_path = escape(expand('<sfile>:p:h'), '\')

function! s:CppHelperInit()
  call s:initCppHelperPython()
endfunction

function! s:initCppHelperPython()
  if !has('python')
    echoe 'cpphelper: No python support available.'
    echoe 'Compile vim with python support to use cpphelper'
    return 0
  endif

  " Only parse the python library once
  if !exists('s:cpphelper_python_loaded')
    python import sys

    exe 'python sys.path = ["' . s:plugin_path . '"] + sys.path'
    exe 'pyfile ' . fnameescape(s:plugin_path) . '/cpphelper.py'
    let s:cpphelper_python_loaded = 1
  endif
  return 1
endfunction

function! CppHelperCompleteHeaders(A, L, P)
  let path_list = [ '/usr/include', '/usr/include/c++/4.8.2' ]
  python vim.command('let res = %s' % complete_headers(vim.eval('a:A'), vim.eval('path_list')))
  return res
endfunction
