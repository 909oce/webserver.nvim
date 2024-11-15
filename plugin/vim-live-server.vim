" vim-live-server.vim

" A live web server for Vim
" By Wolandark
" https://github.com/wolandark/vim-live-server

"Browser-Sync
function! StartBrowserSync()
    " let cmd = "browser-sync start --no-notify --server --cwd=" . getcwd() . " --files \"*.html, *.css, *.js\" &"
    let cmd = "browser-sync start --no-notify --server --files *.html, *.css, *.js &"
    call system(cmd)
    echo "BrowserSync started in the background."
endfunction

function! StartBrowserSyncOnPort(port)
    let port_num = a:port + 0  " Convert a:port to a number
    let cmd = "browser-sync start --no-notify --server --cwd=" . getcwd() . " --port=" . port_num . " --files \"*.html, *.css, *.js\" &"
    call system(cmd)
    echo "BrowserSync started in the background on port " . port_num . "."
endfunction

function! KillBrowserSync()
    let port = systemlist("pgrep -f 'browser-sync'")[0]
    if empty(port)
        echo "No BrowserSync server found on port 3000."
    else
        let cmd = "kill " . port
        call system(cmd)
        echo "BrowserSync server on port 3000 terminated."
    endif
endfunction

function! KillBrowserSyncOnPort(port)
    let cmd = "pgrep -f 'browser-sync.*--port=" . a:port . "' | xargs -r kill"
    call system(cmd)
    echo "BrowserSync server on port " . a:port . " terminated."
endfunction

function! KillAllBrowserSyncInstances()
    let cmd = "pkill -f 'browser-sync'"
    call system(cmd)
endfunction

augroup BrowserSyncKill
    autocmd!
    autocmd VimLeave * call KillAllBrowserSyncInstances()
augroup END

" Live-Server
function! StartLiveServer()
    let cmd = "live-server &"
    call system(cmd)
    echo "Live server started in the background."
endfunction

function! StartLiveServerOnPort(port)
    let port_num = a:port + 0  " Convert a:port to a number
    let cmd = "live-server --port=" . port_num . "&"
    call system(cmd)
    echo "Live Server started in the background on port " . port_num . "."
endfunction

function! KillLiveServer()
    let port = systemlist("pgrep -f 'live-server'")[0]
    if empty(port)
        echo "No Live Server found on port 8080."
    else
        let cmd = "kill " . port
        call system(cmd)
        echo "Live Server on port 8080 terminated."
    endif
endfunction

function! KillLiveServerOnPort(port)
    let cmd = "pgrep -f 'live-server.*--port=" . a:port . "' | xargs -r kill"
    call system(cmd)
    echo "Live Server on port " . a:port . " terminated."
endfunction

function! KillAllLiveServerInstances()
    let cmd = "pkill -f 'live-server'"
    call system(cmd)
endfunction

augroup LiveServerKill
    autocmd!
    autocmd VimLeave * call KillAllLiveServerInstances()
augroup END

" PHP
function! StartPHPServer()
    if expand("%:p:h") != getcwd()
        execute "lcd " . expand("%:p:h")
    endif
    let cwd = getcwd()
    let cmd = "cd " . cwd . " && php -S 127.0.0.1:8080 & $BROWSER 127.0.01:8080"
    call system(cmd)
    echo "PHP server started in the background."
endfunction

function! StartPHPServerOnPort(port)
    if expand("%:p:h") != getcwd()
        execute "lcd " . expand("%:p:h")
    endif
    let cwd = getcwd()
    let port_num = a:port + 0
    let cmd = "cd " . cwd . " && php -S 127.0.0.1:" . port_num . " & $BROWSER 127.0.0.1" . port_num . " &"
    call system(cmd)
    echo "PHP server started in the background on port " . port_num . "."
endfunction

function! KillPHPServer()
    let cmd = "pkill -f 'php'"
    call system(cmd)
endfunction

augroup PHPServerKill
    autocmd!
    autocmd VimLeave * call KillPHPServer()
augroup END

" Call Commands
command! StartBrowserSync call StartBrowserSync()
command! StartLiveServer call StartLiveServer()
command! -nargs=1 StartBrowserSyncOnPort call StartBrowserSyncOnPort(<f-args>)
command! -nargs=1 StartLiveServerOnPort call StartLiveServerOnPort(<f-args>)
command! KillBrowserSync call KillBrowserSync()
command! KillLiveServer call KillLiveServer()
command! -nargs=1 KillBrowserSyncOnPort call KillBrowserSyncOnPort(<f-args>)
command! -nargs=1 KillLiveServerOnPort call KillLiveServerOnPort(<f-args>)
command! StartPHPServer call StartPHPServer()
command! -nargs=1 StartPHPServerOnPort call StartPHPServerOnPort()
command! KillPHPServer call KillPHPServer()
