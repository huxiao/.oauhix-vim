del /F /Q %AppData%\Code\User\keybindings.json 
del /F /Q %AppData%\Code\User\settings.json

mklink %AppData%\Code\User\keybindings.json %~dp0\keybindings.json 
mklink %AppData%\Code\User\settings.json %~dp0\settings.json 
