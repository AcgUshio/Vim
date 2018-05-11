set nocompatible              " be iMproved, required 
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'iCyMind/NeoSolarized'
"Plugin 'ryanoasis/vim-devicons'
Plugin 'mhartington/oceanic-next'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'molokai'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)


" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lin
"let g:solarized_termcolors=256
"set relativenumber

syntax enable
set nu
set t_Co=256
"colorscheme molokai

colorscheme NeoSolarized
set background=dark


"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
"let g:airline_theme='oceanicnext'
"colorscheme OceanicNext


map <F2> :NERDTreeToggle<CR>

map <C-k> :tabn<CR>
map <C-j> :tabp<CR>
map <C-a> ggVG
map <F5> :wall <CR>

set encoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gk2312

set nu                                    "显示行号
filetype on                              "检测文件的类型     
set history=1000                  "记录历史的行数
syntax on                                "语法高亮度显示
set autoindent                       "vim使用自动对齐，也就是把当前行的对齐格式应用到下一行(自动缩进）
set cindent                             "（cindent是特别针对 C语言语法自动缩进）
set smartindent                    "依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用   
set tabstop=4                        "设置tab键为4个空格，
set shiftwidth =4                   "设置当行之间交错时使用4个空格     
"set ai!                                      " 设置自动缩进 
set showmatch                     "设置匹配模式，类似当输入一个左括号时会匹配相应的右括号      
set guioptions-=T                 "去除vim的GUI版本中得toolbar   
set vb t_vb=                            "当vim进行编辑时，如果命令错误，会发出警报，该设置去掉警报       
set ruler                                  "在编辑过程中，在右下角显示光标位置的状态行     
set nohls                                "默认情况下，寻找匹配是高亮度显示，该设置关闭高亮显示     
set incsearch                        "在程序中查询一单词，自动匹配单词的位置；如查询desk单词，当输到/d时，会自动找到第一个d开头的单词，当输入到/de时，会自动找到第一个以ds开头的单词，以此类推，进行查找；当找到要匹配的单词时，别忘记回车 
set backspace=2           " 设置退格键可用
set autoindent

let mapleader=" "  
let g:NERDSpaceDelims=1

autocmd BufWritePost $MYVIMRC source $MYVIMRC   " 让配置变更立即生效  

set timeout timeoutlen=3000 ttimeoutlen=100  "大写O会卡一下
set guifont=PowerlineSymbols
