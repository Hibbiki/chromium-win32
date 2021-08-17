@echo off

IF NOT DEFINED IN_CHROMIUM_BUILDER (goto :EOF)
cd %CHROMIUM_DIR%\depot_tools

copy /Y src\out\stable-sync-x86\mini_installer.exe ..\out\x86\mini_installer.sync.exe
copy /Y src\out\stable-sync-x86\chrome.7z ..\out\x86\chrome.sync.7z
copy /Y src\out\stable-nosync-x86\mini_installer.exe ..\out\x86\mini_installer.nosync.exe
copy /Y src\out\stable-nosync-x86\chrome.7z ..\out\x86\chrome.nosync.7z

cmd /c "wsl (rm ../out/noarch/policy_templates.zip; cd src/out/stable-undefined-noarch/gen/chrome/app/policy; zip -qrX1 ../../../../../../../../out/noarch/policy_templates.zip .)"