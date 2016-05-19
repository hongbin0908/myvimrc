set shell=/bin/bash
set nocompatible              " be iMproved, required                                                                                                      
                                                                                                                                                                  
set history=256  " Number of things to remember in history.                                                                                                       
set autowrite  " Writes on make/shell commands                                                                                                                    
set autoread                                                                                                                                                      
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)                                                                                   
set clipboard+=unnamed  " Yanks go on clipboard instead.                                                                                                          
set pastetoggle=<F10> "  toggle between paste and normal: for 'safer' pasting from keyboard                                                                       
set tags=./tags;$HOME " walk directory tree upto $HOME looking for tags                                                                                           
" Modeline                                                                                                                                                        
set modeline                                                                                                                                                      
set modelines=5 " default numbers of lines to read for modeline instructions                                                                                      
" Backup                                                                                                                                                          
set nowritebackup                                                                                                                                                 
set nobackup                                                                                                                                                      
set directory=/tmp// " prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)                                                              
" Buffers                                                                                                                                                         
set hidden " The current buffer can be put to the background without writing to disk                                                                              
" Match and search                                                                                                                                                
set hlsearch    " highlight search                                                                                                                                
set ignorecase  " Do case in sensitive matching with                                                                                                              
set smartcase   " be sensitive when there's a capital letter                                                                                                      
set incsearch   "                                                                                                                                                 
" "}}}                                                                                                                                                            
                                                                                                                                                                  
" Formatting "{{{                                                                                                                                                 
set fo+=o " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.                                                              
set fo-=r " Do not automatically insert a comment leader after an enter                                                                                           
set fo-=t " Do no auto-wrap text using textwidth (does not apply to comments)                                                                                     
                                                                                                                                                                  
set nowrap                                                                                                                                                        
set textwidth=0   " Don't wrap lines by default                                                                                                                   
set wildmode=longest,list " At command line, complete longest common string, then list alternatives.                                                              
                                                                                                                                                                  
set backspace=indent,eol,start  " more powerful backspacing                                                                                                       
                                                                                                                                                                  
set tabstop=4    " Set the default tabstop                                                                                                                        
set softtabstop=4                                                                                                                                                 
set shiftwidth=4 " Set the default shift width for indents                                                                                                        
set expandtab   " Make tabs into spaces (set by tabstop)                                                                                                          
set smarttab " Smarter tab levels
set autoindent                                                                                                                                                    
set cindent                                                                                                                                                       
set cinoptions=:s,ps,ts,cs                                                                                                                                        
set cinwords=if,else,while,do,for,switch,case                                                                                                                     
                                                                                                                                                                  
syntax on               " enable syntax                                                                                                                           
filetype plugin indent on             " Automatically detect file types.                                                                                          
" "}}}                                                                                                                                                            
                                                                                                                                                                  
" Visual "{{{                                                                                                                                                     
set nonumber  " Line numbers off                                                                                                                                  
set showmatch  " Show matching brackets.                                                                                                                          
set matchtime=5  " Bracket blinking.                                                                                                                              
set novisualbell  " No blinking                                                                                                                                   
set noerrorbells  " No noise.                                                                                                                                     
set laststatus=2  " Always show status line.                                                                                                                      
set vb t_vb= " disable any beeps or flashes on error                                                                                                              
set ruler  " Show ruler                                                                                                                                           
set showcmd " Display an incomplete command in the lower right corner of the Vim window                                                                           
set shortmess=atI " Shortens messages                                                                                                                             
                                                                                                                                                                  
set foldenable " Turn on folding                                                                                                                                  
set foldmethod=marker " Fold on the marker                                                                                                                        
set foldlevel=100 " Don't autofold anything (but I can still fold manually)                                                                                       
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds                                                                                      
                                                                                                                                                                  
set mouse-=a   " Disable mouse                                                                                                                                    
set mousehide  " Hide mouse after chars typed                                                                                                                     
                                                                                                                                                                  
set splitbelow                                                                                                                                                    
set splitright                                                                                                                                                    
                                                                                                                                                                  
" "}}}                                                                                                                                                            
filetype off                  " required                                                                                                                          
                                                                                                                                                                  
                                                                                                                                                                  
let mapleader = ","                                                                                                                                               
                                                                                                                                                                  
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim                                                                                                                                 
call vundle#begin()                                                                                                                                               
" alternatively, pass a path where Vundle should install plugins                                                                                                  
"call vundle#begin('~/some/path/here')                                                                                                                            
                                                                                                                                                                  
" let Vundle manage Vundle, required                                                                                                                              
Plugin 'VundleVim/Vundle.vim'                                                                                                                                     
                                                                                                                                                                  
" Command-T                                                                                                                                                       
Bundle "git://git.wincent.com/command-t.git"                                                                                                                      
let g:CommandTMatchWindowAtTop=1 " show window at top                                                                                                             
                                                                                                                                                                  
Plugin 'L9'                                                                                                                                                       
                                                                                                                                                                  
" NerdTree use <F2>                                                                                                                                               
Bundle 'scrooloose/nerdtree'                                                                                                                                      
let NERDTreeDirArrows=0                                                                                                                                           
map <leader>n :NERDTreeToggle<CR>                                                                                                                                 
                                                                                                                                                                  
" Taglist  use <F3>                                                                                                                                               
Bundle 'taglist.vim'                                                                                                                                              
let Tlist_Auto_Update=1                                                                                                                                           
let Tlist_Auto_Open = 0                                                                                                                                           
let Tlist_Use_Right_Window=1                                                                                                                                      
let Tlist_Show_One_File=0                                                                                                                                         
let Tlist_File_Fold_Auto_Close=0                                                                                                                                  
let Tlist_Exit_OnlyWindow=1                                                                                                                                       
map <leader>t :TlistToggle<CR>                                                                                                                                    
                                                                                                                                                                  
Bundle 'mru.vim'                                                                                                                                                  
map <leader>f :MRU<CR>                                                                                                                                            

filetype plugin indent on     " required
Bundle 'Valloric/YouCompleteMe'
                                                                                                                                                                  
call vundle#end()            " required                                                                                                                           
filetype plugin indent on    " required
