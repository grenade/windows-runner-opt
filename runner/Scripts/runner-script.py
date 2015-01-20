#!c:\opt\runner\Scripts\python2.7.exe
# EASY-INSTALL-ENTRY-SCRIPT: 'runner==1.6','console_scripts','runner'
__requires__ = 'runner==1.6'
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.exit(
        load_entry_point('runner==1.6', 'console_scripts', 'runner')()
    )
