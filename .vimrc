" autoload the local .vimrc file you need to have
" https://github.com/MarcWeber/vim-addon-local-vimrc
" plugin installed

" clean and reload the markdown syntax in the current buffer
nnoremap <silent> <Leader>r :unlet! b:current_syntax <BAR> syn clear <BAR> source syntax/markdown.vim<CR>

" tells you just what syntax highlighting groups the item under the cursor actually is
nnoremap <silent> <Leader>h :echo 
      \ "hi<" . synIDattr(synID(line("."),col("."),1),"name") . "> " .
      \ "trans<" . synIDattr(synID(line("."),col("."),0),"name") . "> " .
      \ "lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>