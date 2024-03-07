syntax on
set nonumber
set norelativenumber
set scrolloff=8
set ai
set encoding=utf-8
set termguicolors
set noshowmatch
set noshowmode
set incsearch
set nohlsearch
set ignorecase
set smartcase
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showcmd

let g:mapleader=" "

call plug#begin()

Plug 'easymotion/vim-easymotion'
Plug 'ZSaberLv0/vim-easymotion-chs'
Plug 'junegunn/vim-github-dashboard'
Plug 'preservim/nerdtree'
Plug 'psliwka/vim-smoothie'
Plug 'ycm-core/YouCompleteMe'
Plug 'w0rp/ale'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'ghifarit53/tokyonight-vim'
Plug 'preservim/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'
Plug 'liuchengxu/vim-which-key'
Plug 'voldikss/vim-floaterm'
Plug 'SirVer/ultisnips'
Plug 'vim-scripts/vim-auto-save'

call plug#end()

let g:auto_save = 1

autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let g:ycm_cache_omnifunc=0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1
colorscheme tokyonight

let g:rainbow_active=1

let g:indentLine_enabled=1
let g:indentLine_char = '|'
let g:indentLine_conceallevel=2

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let g:startify_custom_header = [
            \ '##              ##  ###############################',
            \ ' ##            ##         ##        ##     ##    ##',
            \ '  ##          ##          ##        ##     ##    ##',
            \ '   ##        ##           ##        ##     ##    ##',
            \ '    ##      ##            ##        ##     ##    ##',
            \ '     ##    ##             ##        ##     ##    ##',
            \ '      ##  ##              ##        ##     ##    ##',
            \ '       ##########################   ##     ##    ##',]

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

inoremap jk <ESC>

noremap <silent> <Leader>a :ALEDetail<CR>
noremap <silent> <leader> :WhichKey '<Space>'<CR>
noremap <silent> <Leader>S :Startify<CR>


noremap <silent> <Leader>F :Files<CR>
noremap <silent> <Leader>ff :LeaderfFile<CR>
noremap <silent> <Leader>fF :LeaderfFunction<CR>
noremap <silent> <Leader>fl :LeaderfLine<CR>
noremap <silent> <Leader>fb :LeaderfBuffer<CR>
noremap <silent> <Leader>fm :LeaderfMru<CR>

noremap <silent> <Leader>u :UndotreeToggle<CR>
noremap <silent> <Leader>t :NERDTreeToggle<CR>
noremap <silent> <Leader>l :TagbarToggle<CR>

noremap <silent> <Leader>T :FloatermToggle<CR>

noremap <silent> <Leader>n :set number!<CR>
noremap <silent> <Leader>N :set relativenumber!<CR>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-o> <C-w>w

noremap <silent> <C-Up> :resize -1<CR>
noremap <silent> <C-Down> :resize +1<CR>
noremap <silent> <C-Left> :vertical resize -1<CR>
noremap <silent> <C-Right> :vertical resize +1<CR>

vnoremap > >gv
vnoremap < <gv
vnoremap J :m '>+1<CR>gv=gv'
vnoremap K :m '<-2<CR>gv=gv'
