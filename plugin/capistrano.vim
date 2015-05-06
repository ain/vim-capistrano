if (exists('g:loaded_capistrano') && g:loaded_capistrano) || v:version < 700 || &cp
  finish
endif
let g:loaded_capistrano = 1

au BufRead,BufNewFile Capfile set filetype=ruby
au BufRead,BufNewFile *.cap setfiletype ruby

function! s:Cap(bang, args)
  let cmd = 'cap ' . a:args
  execute ':!' . cmd
endfunction

command! -bar -bang -nargs=* Cap call s:Cap(<bang>0,<q-args>)