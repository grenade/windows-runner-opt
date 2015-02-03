
REM set BUILDBOT_PATH, the path to the active Buildbot virtualenv
call "C:/mozilla-build/bbpath.bat"

%BUILDBOT_PATH%\Scripts\pip install argparse
%BUILDBOT_PATH%\Scripts\pip install runner --no-index --find-links=file:///c:/opt/runner-1.8.tar.gz --upgrade
