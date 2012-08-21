"设置字体大小
set guifont=Consolas:h16
"传说中的去掉边框用下边这一句 
set go=
"自动设当前编辑的文件所在的目录为当前工作目录
set autochdir
"设置配色
colorscheme molokai
"设置背景色，每种配色有两种方案，一个light、一个dark 
"set background=light 
"打开语法高亮 
syntax on 
"显示行号 
set number 
"设置缩进有三个取值cindent(c风格)、smartindent(智能模式，其实不觉得有什么智能)、autoindent(简单的与上一行保持一致) 
set cindent 
"在windows版本中vim的退格键模式默认与vi兼容，与我们的使用习惯不太符合，下边这条可以改过来 
set backspace=indent,eol,start 
"用空格键替换制表符 
:set expandtab 
"制表符占4个空格 
set tabstop=4 
"默认缩进4个空格大小 
set shiftwidth=4 
"增量式搜索 
set incsearch 
"高亮搜索 
set hlsearch 
"有时中文会显示乱码，用一下几条命令解决 
let &termencoding=&encoding 
set fileencodings=utf-8,gbk 
"很多插件都会要求的配置检测文件类型 
:filetype on 
:filetype plugin on 
:filetype indent on 
"下边这个很有用可以根据不同的文件类型执行不同的命令 
"例如：如果是c/c++类型 
":autocmd FileType c,cpp : set foldmethod=syntax 
":autocmd FileType c,cpp :set number 
":autocmd FileType c,cpp :set cindent 
"例如：如果是python类型 
":autocmd FileType python :set number 
":autocmd FileType python : set foldmethod=syntax 
":autocmd FileType python :set smartindent 

set nocompatible
""""""""""""""""""""""""""Winmanager配置"""""""""""""""""""""""""""""""""""""
let g:NERDTree_title='[NERD Tree]'

let g:winManagerWindowLayout='NERDTree|TagList'

function! NERDTree_Start()

    exec 'NERDTree'

endfunction

function! NERDTree_IsValid()

    return 1

endfunction
nmap wm :WMToggle<cr>:q<cr>

"""""""""""""""""""""""""""设置Ctags路径(因为有两个ctags)""""""""""""""""""""""
let Tlist_Ctags_Cmd = '~/ctags-5.8/ctags'

""""""""""""""""""""""""""""""pydiction(python代码补全)""""""""""""""""""""""""
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'

"""""""""""""""""""""""""""""一键编译python""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""设置TaskList快捷键""""""""""""""""""""""""""""""""
nmap tl :TaskList<cr>

"""""""""""""""""""""""""""""ctags相关的操作"""""""""""""""""""""""""""""""""""
"< Ctrl-] >跳到光标所在的函数、变量、结构等的定义处
"< Ctrl-T >跳回刚才的位置
"当定义过多时，用:tnext,:tlast来切换

