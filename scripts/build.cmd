@echo off

IF NOT DEFINED IN_CHROMIUM_BUILDER (goto :EOF)
cd %CHROMIUM_DIR%\depot_tools

cd src
cmd /c "gn gen out\stable-sync-x86"
cmd /c "autoninja -C out/stable-sync-x86 mini_installer.exe"
cmd /c "gn gen out\stable-nosync-x86"
cmd /c "autoninja -C out/stable-nosync-x86 mini_installer.exe"

cmd /c "gn gen out\stable-undefined-noarch"
cmd /c "autoninja -C out/stable-undefined-noarch -t clean"
cmd /c "autoninja -C out/stable-undefined-noarch policy_templates"
cd ..