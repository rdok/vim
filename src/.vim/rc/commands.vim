function! GitAddCommitPush(message) 
   :! git add --all 
   :! git commit -m a:message
   :! git push
endfunction

command! -nargs=1 Gacp :call GitAddCommitPush(<args>)
