# Vim Webserver
## Preview your web development in your browser in real time.
A dead-simple live server for Vim/NeoVim <br>
Supporting [live-server](https://www.npmjs.com/package/live-server), [browser-sync](https://www.npmjs.com/package/browser-sync), and PHP.

# Usage
```
StartLiveServer

StartBrowserSync

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
