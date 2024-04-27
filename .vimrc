" .ideavimrc is a configuration file for IdeaVim plugin. It uses
"   the same commands as the original .vimrc configuration.
" You can find a list of commands here: https://jb.gg/h38q75
" Find more examples here: https://jb.gg/share-ideavimrc
"" -- Suggested options --
" Show a few lines of context around the cursor. Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
" goland无效
" set scrolloff=5

" 基础配置

" 使用空格作为leader键
let mapleader =" "
" Do incremental searching.
set incsearch
" yy复制到系统剪贴板及vim寄存器,<leader>从系统剪贴板复制进vim
set clipboard+=unnamed
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,chinese,utf-16,big5,latin1
set termencoding=utf-8

" vim plugin
" --- Enable IdeaVim plugins https://jb.gg/ideavim-plugins
" Highlight copied text
Plug 'machakann/vim-highlightedyank'
" Commentary plugin
Plug 'tpope/vim-commentary'
" Easy Motion <leader><leader>+s文内跳转
Plug 'easymotion/vim-easymotion'

" insert mode
" leader+n进入normal模式
inoremap jj <ESC>

" visual mode
" mm替换掉行尾
vnoremap mm $
" mn替换掉行首
vnoremap mn ^
" <leader>j进入normal模式
vnoremap <leader>j <ESC>

" normal mode
" mm替换掉行尾
nnoremap mm $
" mn替换掉行首
nnoremap mn ^
" leader+c进入命令模式
nnoremap cmd :
" leader+wq替换推出并保存命令
nnoremap <leader>wq :wq<CR>
" leader+q替换退出命令
nnoremap <leader>q :q<CR>
" leader+p替换系统剪贴板粘贴，废弃，使用set clipboard
" nnoremap <leader>p "*p
"行首编辑
nnoremap <leader>i I
"行尾编辑
nnoremap <leader>a A
" 删除之后的字符
nnoremap <leader>dn d$
" 删除之前的字符
nnoremap <leader>db d^
" 光标行开始，全选之上的文本
nnoremap <leader>b Vgg
" 光标行开始，全选之下的文本
nnoremap <leader>n VG
" 全选文本
nnoremap <C-A> ggVG
" 跳转到页尾巴
nnoremap <leader>g G
" 全局替换替换文本
nnoremap <leader>rr :%s/
" h split文件
nnoremap <leader>hs :split
" v split文件
nnoremap <leader>vs :vsplit
" register
nnoremap <leader>reg "
nnoremap <leader>sr :reg<CR>

command! WipeReg for i in range(a,z) | silent! call setreg(nr2char(i), []) | endfor
nnoremap <expr> <leader>cr  WipeReg()
