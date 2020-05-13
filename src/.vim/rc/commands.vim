function! GitAddCommitPush(message) 
   :silent ! clear
   :silent ! git add --all
   silent execute '!git' 'commit' '-m' shellescape(a:message)
   :silent ! git push
   :execute 'redraw!'
endfunction

command! -nargs=1 Gacp :call GitAddCommitPush(<args>)
