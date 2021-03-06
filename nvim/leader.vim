let mapleader=" " " change leader key to <space>
let maplocalleader=" " " change local leader key to <space>

nnoremap <leader>sv :source $HOME/.config/nvim/init.vim " <leader>sv sources init.vim

map <leader>n <Esc><C-W>gF<CR>:tabm<CR> " Open file under cursor in new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR> " Open word under cursor as ctag in new tab
map <F1> gg=G " Formats document
noremap <silent> <leader>sw :%s/\\s\\+$//e<CR> " Remove trailing whitespaces
noremap <silent> <leader>$ :%s/<C-V><CR>//e<CR> " <leader>$ fixes mixed EOLs (^M)
noremap <silent><leader>jj :m+<CR> " move current line down
noremap <silent><leader>kk :m-2<CR> " move current line up
noremap <silent><leader>cb :AsyncTask file-build<cr>
noremap <silent><leader>cr :AsyncTask file-run<cr>
noremap <silent> <leader>w <ESC>:w!<CR> " <leader>w writes the whole buffer to the current file

" Normal mode Mappings
nmap <leader>g :tabnew\|read !grep -Hnr '<C-R><C-W>'<CR> " grep recursively for word under cursor
nmap <leader>b :!echo <C-R><C-W> \| dcode <CR> " Decode word under cursor
nmap <leader>s :%!sort -u --version-sort<CR> " Sort the buffer removing duplicates
nmap <silent> <leader><cr> <ESC>:MarkdownPreviewToggle<CR>
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dj <Plug>VimspectorStepOver
nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dl <Plug>VimspectorStepInto
nnoremap <silent> <leader>W :wa!<CR> " <leader>W writes all buffers
nnoremap <silent> <leader>cd :cd %:p:h<CR> " cd to the directory of the current buffer
nnoremap <leader><Tab> <c-^> " switch between last two files
nnoremap U <C-r> " remap U to <C-r> for easier redo
nnoremap v <C-V> " make v enter blockwise visual mode, and CTRL-V enter visual mode
nnoremap <C-V> v " make v enter blockwise visual mode, and CTRL-V enter visual mode
nnoremap <C-s> <C-w>s " split current window horizontally
nnoremap <leader>t <Esc>:tabe
nnoremap <leader>v :CHADopen<cr>
nnoremap <leader>l :call setqflist([])<cr>
nnoremap <silent> <leader>wq :wq!<CR> " <leader>q quits the current window
nnoremap <silent> <leader>q :q!<CR> " <leader>q quits the current window
nnoremap <silent> yf :let @+=expand('%:p')<CR> " copies filepath to clipboard
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
" Move to previous/next buffer
nnoremap <silent> <A-,> :BufferPrevious<CR>
nnoremap <silent> <A-.> :BufferNext<CR>
" Re-order to previous/next buffer
nnoremap <silent> <C-,> :BufferMovePrevious<CR>
nnoremap <silent> <C-.> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent> <leader>1 :BufferGoto 1<CR>
nnoremap <silent> <leader>2 :BufferGoto 2<CR>
nnoremap <silent> <leader>3 :BufferGoto 3<CR>
nnoremap <silent> <leader>4 :BufferGoto 4<CR>
nnoremap <silent> <leader>5 :BufferGoto 5<CR>
nnoremap <silent> <leader>6 :BufferGoto 6<CR>
nnoremap <silent> <leader>7 :BufferGoto 7<CR>
nnoremap <silent> <leader>8 :BufferGoto 8<CR>
nnoremap <silent> <leader>9 :BufferLast<CR>
nnoremap <silent> <leader>bp :BufferPin<CR>
nnoremap <silent> <leader>bc :BufferClose<CR>
nnoremap <silent> <leader>bs :BufferPick<CR>
" nvim-lsp
nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gh :lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD :lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>
nnoremap <silent> gR :lua vim.lsp.buf.rename()<CR>
" vimspector
nnoremap <silent> <leader>di :VimspectorInstall --all --force-all<CR>
nnoremap <silent> <leader>da :call vimspector#Launch()<CR>
nnoremap <silent> <leader>dq :call vimspector#Reset()<CR>
nnoremap <silent> <leader>dc :call vimspector#Continue()<CR>
nnoremap <silent> <leader>db :call vimspector#ToggleBreakpoint()<CR>
nnoremap <silent> <leader>dT :call vimspector#ClearBreakpoints()<CR>

" Insert mode Mappings
inoremap <silent> <leader>w <ESC>:w!<CR> " <leader>w writes the whole buffer to the current file
inoremap <silent> <leader>W <ESC>:wa!<CR> " <leader>W writes all buffers
inoremap jk <ESC>`^ " exit from insert mode without cursor movement
inoremap <C-Space> <C-P> " <C-Space> triggers completion in insert mode
" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i

" Command mode Mappings
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
"save the session, save modified files, and exit
command! Xs :mks! | :xa

" Visual mode Mappings
" move visual selection down and up
vnoremap <silent><leader>j :m '>+1<CR>gv=gv
vnoremap <silent><leader>k :m '<-2<CR>gv=gv
" indent / un-indent in visual and select modes
vnoremap > >gv
vnoremap < <gv
vnoremap . :normal .<CR> " make dot work in visual mode
vnoremap v <C-V> " make v enter blockwise visual mode, and CTRL-V enter visual mode
vnoremap <C-V> v " make v enter blockwise visual mode, and CTRL-V enter visual mode
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a`<esc>`<i`<esc>