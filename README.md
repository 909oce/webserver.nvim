# Vim Webserver
## Preview your web development in your browser in real time.
A dead-simple live server for Vim/NeoVim <br>
Supporting [live-server](https://www.npmjs.com/package/live-server), [browser-sync](https://www.npmjs.com/package/browser-sync), and PHP.

# Usage
Open your index.html file in vim and issue the following in ex-mode. live-server will start and bind itself to `localhost:8080` and `browser-sync` will bind to `localhost:3000`.<br>
_Notice that all of the commands use pascal case_<br>
```
StartLiveServer

or

StartBrowserSync
```
Vim Live Server opens your default browser automatically. <br>

To start serving on a specific port, use:
```
StartLiveServerOnPort N
StartLiveServerOnPort 2222

StartBrowserSyncOnPort N
StartBrowserSyncOnPort 3001
```

To kill the server on the default port 3000 use this:
```
KillLiveServer

KillBrowserSync
```
Use this command to kill the server on a certain port:
```
KillLiveServerOnPort N
KillLiveServerOnPort 2222

KillBrowserSyncOnPort N
KillBrowserSyncOnPort 3001
```
_Note:
vim-live-server will kill all running instances of live-server and browser-sync on [VimLeave](https://vimhelp.org/autocmd.txt.html#VimLeave)._

# Optional keybindings
```
nmap <F2> :StartLiveServer <CR>
nmap <F3> :KillLiveServer <CR>

nmap <F2> :StartBrowserSync <CR>
nmap <F3> :KillBrowserSync <CR>
```

# Contact me
Feel free to reach out on Telegram or email for support, feedback, or contributions.

[![Telegram](https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/wolandarkside)
[![Protonmail](https://img.shields.io/badge/ProtonMail-8B89CC?style=for-the-badge&logo=protonmail&logoColor=white)](mailto:contact-woland@proton.me)
