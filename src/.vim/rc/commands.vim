function! GitAddCommitPush(message) 
   :silent ! clear
   :silent ! git add --all
   silent execute '!git' 'commit' '-m' shellescape(a:message)
   :silent ! git push
   :execute 'redraw!'
endfunction

function! GitStatus() 
   :! git status
endfunction

command! -nargs=1 Gacp :call GitAddCommitPush(<args>)
command! Gs :call GitStatus()
