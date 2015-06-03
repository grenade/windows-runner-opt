SET MOZBUILDDIR=C:\mozilla-build
SET MOZILLABUILD=%MOZBUILDDIR%
echo "MozillaBuild directory: %MOZBUILDDIR%"

REM set BUILDBOT_PATH, the path to the active Buildbot virtualenv
call "C:/mozilla-build/bbpath.bat"
echo "Buildbot virtualenv: %BUILDBOT_PATH%"

REM Use the "new" moztools-static
set MOZ_TOOLS=%MOZBUILDDIR%\moztools-x64

REM append moztools to PATH
SET PATH=%PATH%;%MOZ_TOOLS%\bin

cd "%USERPROFILE%"

%BUILDBOT_PATH%\Scripts\runner -n 5 -H -c c:\opt\runner\runner.cfg c:\opt\runner\tasks.d > c:\tmp\runner.log
