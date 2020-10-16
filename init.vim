"常用设置 设置打开行号 
set number
let mapleader=","

"按f2进入高亮模式
set pastetoggle=<F2>
"剪贴板同步
set clipboard=unnamed

"使用jj进入normal模式
inoremap jj <Esc>`^
"使用control w直接保存
inoremap <leader>s <Esc>:w<cr>
noremap <leader>s :w<cr>
inoremap <leader>q <Esc>:q<cr>
noremap <leader>q  :q<cr>
noremap <leader>wh <C-w>h
noremap <leader>wj <C-w>j
noremap <leader>wk <C-w>k
noremap <leader>wl <C-w>l

"切换buffer
call plug#begin('~/AppData/Local/nvim/plugged')
" 连个call之间是插件列表
"这个插件添加一个漂亮的黑色主题
"Plug 'joshdick/onedark.vim'
"Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf'
"文件树显示插件
Plug 'scrooloose/nerdtree'
"增加vim的启动界面，显示最近打开的文档
Plug 'mhinz/vim-startify'
"一个状态栏美化插件
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline-themes'
"插件用于显示缩进线
Plug 'Yggdroot/indentLine'
"git相关的插件，用于显示文件的变化
call plug#end()

nmap <leader>f :NERDTreeFind<cr>
nmap <leader>t :NERDTreeToggle<cr>
nmap <leader>pp  :PlugInstall<cr>
nmap <leader>re :source ~\Appdata\Local\nvim\init.vim<cr>

"设置主题,p多主题需要通过插件安装
colorscheme gruvbox

