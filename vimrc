set nocompatible
filetype plugin on
filetype indent on
execute pathogen#infect()

set completeopt=menu,longest
set cursorline
set autoindent
set cindent
set hidden
set history=400
set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80
set nofoldenable
set incsearch
set number
set guicursor+=a:blinkon0

"no more slow ^[O
set ttimeoutlen=100

"alternative escape
set timeoutlen=300
inoremap kj <Esc>

set spelllang=en
set spellfile=~/.vim/spell/en.utf-8.add

syntax on
"colorscheme jellybeans
colorscheme lucius
LuciusWhiteHighContrast

let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsSnippetsDir = "~/.vim/my_snippets"
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsDontReverseSearchPath = "1"
let g:UltiSnipsSnippetDirectories = ["my_snippets"]
let g:UltiSnipsDoHash = 1

let g:clang_use_library = 1
let g:clang_library_path = "/usr/lib/llvm-3.5/lib/"
let g:clang_complete_macros = 1
let g:clang_auto_select = 1
let g:clang_trailing_placeholder = 1
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'
let g:clang_complete_copen = 1

let g:clang_format#detect_style_file = 1
let g:clang_format#command = "clang-format-3.5"
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)

"let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_auto_trigger = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_cache_omnifunc = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_insertion = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_semantic_triggers = {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
"let g:ycm_filetype_whitelist = { 'c': 1, 'cpp': 1, 'cmake': 1 }
let g:ycm_filetype_whitelist = { 'c': 1, 'cpp': 1, 'python': 1, 'cmake': 1 }

nnoremap <leader>d :YcmCompleter GoTo<CR>
nnoremap <leader>r :YcmCompleter QueryReferences<CR>


let g:pymode = 1
let g:pymode_options = 1
let g:pymode_motion = 1
let g:pymode_lint = 1
let g:pymode_folding = 0
let g:pymode_lint_on_write = 0
let g:pymode_lint_checkers = ['pylint', 'pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_sort = ['E', 'C', 'I']
let g:pymode_trim_whitespaces = 1
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_python = 'python'
let g:pymode_lint_todo_symbol = 'WW'
let g:pymode_lint_comment_symbol = 'CC'
let g:pymode_lint_visual_symbol = 'RR'
let g:pymode_lint_error_symbol = '✗'
let g:pymode_lint_info_symbol = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'
let g:pymode_rope = 1
