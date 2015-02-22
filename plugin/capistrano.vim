function! s:Cap(bang, args)
  let cmd = 'cap '.a:args
  execute ':!'.cmd
endfunction

command! -bar -bang -nargs=* Cap call s:Cap(<bang>0,<q-args>)