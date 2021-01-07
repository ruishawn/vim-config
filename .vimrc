
"------------- 基础设置 -----------
autocmd BufWritePost $MYVIMRC source $MYVIMRC  " 设置 vimrc 修改保存后立刻生效，不用在重新打开, 建议配置完成后将这个关闭
set nocompatible  " 关闭兼容模式
set nu  " 设置行号
set cursorline  " 突出显示当前行
"set cursorcolumn  " 突出显示当前列
set showmatch  " 显示括号匹配
set backspace=2  " 使用backspace
let mapleader=";"  " 定义快捷键的前缀，即<Leader>
set incsearch  " 开启实时搜索
set ignorecase  " 搜索时大小写不敏感
syntax enable
syntax on  " 开启文件类型侦测
filetype plugin indent on  " 启用自动补全


"----------- tab 缩进 ----------
set tabstop=4  " 设置Tab长度为4空格
set shiftwidth=4  " 设置自动缩进长度为4空格
set autoindent  " 继承前一行的缩进方式，适用于多行注释


"------------- 退出插入模式指定类型的文件自动保存 -----------
" au InsertLeave *.py,*.go,*.sh,*.php write


"----------- plugin 列表 -----------
call plug#begin('~/.vim/plugged')

" 用来提供一个导航目录的侧边栏
Plug 'preservim/nerdtree'
"autocmd VimEnter * NERDTree
"autocmd BufWinEnter * silent NERDTreeMirror
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" 代码自动补全
Plug 'Valloric/YouCompleteMe'

" 可以使 nerdtree 的 tab 更加友好些
Plug 'jistr/vim-nerdtree-tabs'

" 可以在导航目录中看到 git 版本信息
Plug 'Xuyuanp/nerdtree-git-plugin'

" 查看当前代码文件中的变量和函数列表的插件，
" 可以切换和跳转到代码中对应的变量和函数的位置
" 大纲式导航, Go 需要 https://github.com/jstemmer/gotags 支持
Plug 'majutsushi/tagbar'

" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'

" Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
Plug 'vim-airline/vim-airline'

" 有道词典在线翻译
Plug 'ianva/vim-youdao-translater'

" 代码自动完成，安装完插件还需要额外配置才可以使用
Plug 'Valloric/YouCompleteMe'

" 可以在文档中显示 git 信息
Plug 'airblade/vim-gitgutter'

" 下面两个插件要配合使用，可以自动生成代码块
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" 配色方案
" Plug 'crusoexia/vim-monokai'
Plug 'morhetz/gruvbox'

" go 主要插件
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" go 中的代码追踪，输入 gd 就可以自动跳转
Plug 'dgryski/vim-godef'

" markdown 插件
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
call plug#end()


"-------------- 主题配色 ------------
" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors
colorscheme gruvbox
set background=dark
" colorscheme monokai


"------------ 各个插件的具体配置 ----------
" YouCompleteMe 配置
let g:ycm_key_list_select_completion = ['<C-n>', '<space>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" vim-go 配置
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:godef_split=2
