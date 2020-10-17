" e常用设置 设置打开行号 
set number
let mapleader=","
set guifont=JetBrains\ Mono:h14
"按f2进入高亮模式
set pastetoggle=<F2>
"剪贴板同步
set clipboard=unnamed
let shirtwidth=2

"使用jj进入normal模式
inoremap jj <Esc>`^
"使用control w直接保存
inoremap <leader>s <Esc>:w<cr>
noremap <leader>s :w<cr>
inoremap <leader>q <Esc>:q<cr>
noremap <leader>q  :q<cr>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"切换buffer
call plug#begin('~/AppData/Local/nvim/plugged')
" 连个call之间是插件列表
"这个插件添加一个漂亮的黑色主题
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 代码自动补全插件
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 
"Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'
"文件树显示插件
Plug 'scrooloose/nerdtree'
"增加vim的启动界面，显示最近打开的文档
Plug 'mhinz/vim-startify'
"一个状态栏美化插件
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
"Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline-themes'
"插件用于显示缩进线
Plug 'Yggdroot/indentLine'
"git相关的插件，用于显示文件的变化
Plug 'brooth/far.vim'
" 经常用到的命令是
" :Far foo bar **/*.py
" :Fardo
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" 用于自动注释的插件，gc{motion}
" Plug 'kien/ctrlp.vim'
" 用于模糊搜索的插件
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1
" 自动补全插件,有一些前置依赖
call plug#end()

noremap <leader>g :NERDTreeFind<cr>
noremap <leader>t :NERDTreeToggle<cr>
noremap <leader>pp  :PlugInstall<cr>
noremap <leader>re :source ~\Appdata\Local\nvim\init.vim<cr>
noremap <leader>ref :source ~\Appdata\Local\nvim\init.vim<cr>:PlugInstall<cr>
"设置主题,p多主题需要通过插件安装
colorscheme gruvbox
" eoremap <leader>b :Buffer<cr>
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" noremap <leader>f :Files ./<cr>
" Empty value to disable preview window altogether
let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

