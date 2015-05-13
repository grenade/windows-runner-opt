@echo off

SET MOZBUILDDIR=C:\mozilla-build
SET MOZILLABUILD=%MOZBUILDDIR%
echo "MozillaBuild directory: %MOZBUILDDIR%"

REM set BUILDBOT_PATH, the path to the active Buildbot virtualenv
call "C:/mozilla-build/bbpath.bat"
echo "Buildbot virtualenv: %BUILDBOT_PATH%"

set log="c:\tmp\clobber.log"

:start
echo "%date% %time% - About to run clobberer.py"

REM running this via 'bash' is critical - bash adds a bunch of items to PATH
REM which the build steps expect to find.  We pass the --twistd-cmd pointing
REM to the appropriate twistd executable for the active Buildbot version
"%MOZILLABUILD%\msys\bin\bash" --login -c "cd /c/builds/moz2_slave;'%BUILDBOT_PATH%\Scripts\python' /c/opt/clobberer.py -s scripts -s buildprops.json --url 'https://api.pub.build.mozilla.org/clobberer/lastclobber/all' -v"
