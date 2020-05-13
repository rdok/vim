function! GitAddCommitPush(message) 
   :! clear
   :! git add --all
   execute '!git' 'commit' '-m' shellescape(a:message)
   " execute '!git' 'push'
endfunction

command! -nargs=1 Gacp :call GitAddCommitPush(<args>)
