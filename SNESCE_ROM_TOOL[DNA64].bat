@Echo Off
COLOR 97
title SNESCE ROM Tool v1.0 by DNA64 http://twitter.com/DNA64

REM Version 1.0  Released Oct 5th, 2017 

REM THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
REM REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANT-ABILITY
REM AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
REM INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
REM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
REM OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
REM PERFORMANCE OF THIS SOFTWARE.

REM Shoutout to Valter for the sfc2sfrom.py python script.

Setlocal EnableDelayedExpansion
:MENU
CLS

ECHO     SNESCE ROM Tool v1.0 by DNA64    
ECHO.
ECHO -------------------------------------
ECHO Press [1] to Build a New ROM
ECHO Press [2] for Credits and Shoutouts
ECHO -------------------------------------
ECHO.
ECHO ==========PRESS 'Q' TO QUIT==========
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO C1
IF /I '%INPUT%'=='2' GOTO C2
IF /I '%INPUT%'=='Q' GOTO Quit

CLS

ECHO ============INVALID INPUT============
ECHO.
ECHO -------------------------------------
ECHO Please press [1] to build a new ROM
ECHO or [2] for credits or 'Q' to quit.
ECHO -------------------------------------
ECHO.
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE > NUL
GOTO MENU

:C1
CLS
REM Makes sure you have a ROM in the folder.
if not exist sfc2sfrom.py GOTO VALTER

REM Generates a random 5 character alphanumerical filename.
Set _RNDLength=5
Set _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
Set _Str=%_Alphanumeric%987654321
:_LenLoop
IF NOT "%_Str:~18%"=="" SET _Str=%_Str:~9%& SET /A _Len+=9& GOTO :_LenLoop
SET _tmp=%_Str:~9,1%
SET /A _Len=_Len+_tmp
Set _count=0
SET _RndAlphaNum=
:_loop
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%%_Len%
SET _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
If !_count! lss %_RNDLength% goto _loop

REM Sets the preceeding "CLV-P-" name requirement
SET game="CLV-P-!_RndAlphaNum!"

REM Renames any .smc files to .sfc
if exist *.smc ren *.smc *.sfc

REM Makes sure you have a ROM in the folder.
if not exist *.sfc GOTO NFOUND

REM Quick and sloppy output of the name of the ROM you converted into a .txt file of the same name.
dir *.sfc > %game%.txt

REM Renames the ROM to the new unique NAME
ren *.sfc %game%.sfc

REM Converts and names the ROM for SNES Classic compatibility.
sfc2sfrom.py %game%.sfc %game%.sfrom 

REM Creates the game folder for the SNES Classic ROM and files
md "CLV-P-!_RndAlphaNum!"

REM Moves the .sfrom into the corresponding game folder.
move %game%.sfrom %game%

REM Checks for sfcfiles directory and moves files into it to help keep things clean
if not exist "sfcfiles" mkdir sfcfiles
move %game%.sfc sfcfiles
move %game%.txt sfcfiles


CLS
ECHO .sfrom moved to "CLV-P-!_RndAlphaNum!"
ECHO .sfc moved to sfcfiles
ECHO.
ECHO DONE
ECHO.
ECHO Need Help? 
ECHO DM me on GBATemp http://gbatemp.net/members/dna64.432334/
ECHO.
ECHO.
ECHO "Press any key to return to menu."
PAUSE >null
CLS
GOTO MENU

:C2
CLS
ECHO.
ECHO ===============CREDITS===============
ECHO.
ECHO Valter on GBATemp for his sfc2sfrom.py script
ECHO.
ECHO =====================================
ECHO.
ECHO =============SHOUT OUTS==============
ECHO.
ECHO # Madmonkey1907 for Hakchi
ECHO.
ECHO # ClusterM for Hakchi2
ECHO.
ECHO # /r/miniSNESmods/ Community
ECHO.
ECHO # GBATemp Community
ECHO.
ECHO =====================================
ECHO.
ECHO "Please press a key to return to the menu."
PAUSE >null
CLS
GOTO MENU

:NFOUND
CLS

ECHO ERROR - You don't seem to have any *.sfc or *.smc file in this directory.
ECHO Please add your ROM and try again.
ECHO.
ECHO Need Help? 
ECHO DM me on GBATemp http://gbatemp.net/members/dna64.432334/
ECHO.
PAUSE >null
GOTO QUIT

:VALTER
CLS

ECHO ERROR - sfc2sfrom.py missing. Please run this program from the same directory
ECHO as the python script and try again.
ECHO.
ECHO Need Help? 
ECHO DM me on GBATemp http://gbatemp.net/members/dna64.432334/
ECHO.
PAUSE >null

:Quit
CLS

del null
EXIT