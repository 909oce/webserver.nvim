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

or

StartPHPServer
```
Opens your default browser automatically. <br>

To start serving on a specific port, use:
```
StartLiveServerOnPort N
StartLiveServerOnPort 2222

StartBrowserSyncOnPort N
StartBrowserSyncOnPort 3001

StartPHPServerOnPort N
StartPHPServerOnPort 7777
```

To kill the server use this:
```
KillLiveServer

KillBrowserSync

KillPHPServer
```
