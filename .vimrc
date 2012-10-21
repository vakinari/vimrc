
" ******************* 
"   akinari's vimrc
" ******************* 

set nocompatible

""solve encoding problem""{{{
" set tenc=utf-8 enc=utf-8 fenc=utf-8 fencs=euc-kr,euc-jp,chinese,gb18030,ucs-bom,utf-8,latin1
" if has('win32') || has('win64') || has('win95')
"     source $VIMRUNTIME/delmenu.vim
"     source $VIMRUNTIME/menu.vim
"     language message zh_CN.utf-8
" endif
" if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
"     set ambiwidth=double
" endif
" set nobomb
""}}}

"" ****** PLUGINS ****** {{{

"" ****** pathogen ****** {{{
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on
"" }}}
"" ****** NERDTree ****** {{{
" quit nerdtree when it's the last buf on windows
au bufenter * if(winnr("$")==1 && exists("b:NERDTreeType") && b:NERDTreeType=="primary")|q|endif
let g:NERDTreeChDirMode=2
"" }}}
"" ****** syntastic ****** {{{
let g:syntastic_javascript_checker='jslint'
let g:syntastic_css_checker='csslint'
let g:syntastic_csslint_options = "--warnings=none"
let g:syntastic_json_checker='jsonlint'

let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=10
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['css', 'perl', 'javascript'],
                           \ 'passive_filetypes': ['python'] }
"" }}}
"" ****** pymode ****** {{{
set cot+=menuone,longest
set ph=10
let g:pymode_run_key='R'
let g:pymode_lint_minheight=5
let g:pymode_lint_maxheight=8
let g:pymode_lint_jump=1
let g:pymode_motion=0
" let g:pymode_rope_guess_project=0
" let g:pymode_rope_map_space=0
au CursorMovedI * if pumvisible()==0|pclose|endif
"" }}}
"" ****** Powerline ****** {{{
" let g:Powerline_symbols = 'compatible'
let g:Powerline_symbols = 'fancy'
set laststatus=2
set guifont=Menlo\ for\ Powerline:h12
"" ****** Powerline ****** }}}

"" }}}

"" ****** BASIC ****** {{{
"
" view {{{
set t_Co=256
colorscheme molokai
" set bk
" lines=50 co=120 tw=120
set is ignorecase

set nu hls cul so=5 ts=4 sw=4
set list lcs=tab:►.,eol:$ lbr sbr=↳ bs=indent,eol,start
set wmnu wildmode=list:longest,full
set noswf sb sr go=

" }}}
" FOLDING OPTIONS {{{
set fdm=marker nofen fdc=3 fdn=5 foldlevel=1
" }}}

"" }}}

"" ****** MAPPINGS ****** {{{

" rebind <leader> key
let mapleader = ","

map <leader>e :q<cr>
map <leader>w :w<cr>
map <leader>n :tabnew<cr>
map <leader>t :NERDTree<cr>
map <leader>a ggVG

map Y y$
map <c-j> <c-w>j
map <c-l> <c-w>l
map <c-h> <c-w>h
map <c-k> <c-w>k

nmap <f2> :TagbarToggle<cr>

noremap <silent><leader>/ :nohls<cr>

nnoremap j gj
nnoremap k gk
nnoremap <space> za

vnoremap < <gv
vnoremap > >gv

inoremap jk <esc>^

"" }}}

