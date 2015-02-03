REM set BUILDBOT_PATH, the path to the active Buildbot virtualenv
call "C:/mozilla-build/bbpath.bat"
echo "Buildbot virtualenv: %BUILDBOT_PATH%"

%BUILDBOT_PATH%\Scripts\python c:/opt/runner/halt.py
