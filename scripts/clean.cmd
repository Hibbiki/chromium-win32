@echo off

IF NOT DEFINED IN_CHROMIUM_BUILDER (goto :EOF)
cd %CHROMIUM_DIR%\depot_tools

cd src
cmd /c "gn clean out\stable-sync-x86"
cmd /c "gn clean out\stable-nosync-x86"
cmd /c "gn clean out\stable-undefined-noarch"
cd ..