@echo off
::LPT:use notepad ++
::OMEGAteach is a text based ui for teachers based on OMEGAui.
set "build=0.1.7"
::sets the build version.
color 03
::sets color constants
title OMEGAteach %build%
::sets title
set "file=%~dp0"
::sets file director to current directory
IF EXIST chrome.exe (
	goto :cvt
)
ELSE IF NOT EXIST chrome.exe(
	goto :cvf
)
::checks if chrome exists

:cvt
set ce=start
goto :start

:cvf
set ce=install
goto :start

:start
cls
echo OMEGAteach build version %build%
echo:
echo                                    +$OOI,                             
echo                                :OO       ZOZ                              
echo                               OO,          OO
echo                              OOZ           .OO
echo                             ,OO             OO8
echo                             +OO             ZOO
echo                             .OO             OOO
echo                              OO$            OO
echo                               OO:          OO.
echo                             8  :O$       .OO  ,,
echo                             .OOOOOO     7OOOOOO
echo:
echo        .7OO$,                .      ++++++++      .7OO$,           +
echo      ,OOOOOOOO7      I8      O,     OOOOOOOO    :OOOOOOOOI        OO
echo     8OO      ~OO     OO:    IOO     OO         8O$      =O:      OOOO
echo    ?O?         OO   7OOO   .OOO~    OO        7O+               $O$.OO
echo    OO          OO   OO:OO  OO OO    OO888888  OO               .OO  OOI
echo    8O          OO  IO+ OO:7O? OO,   OO======  OO     8OOOOOO   OO    OO:
echo    .OO        IO7  OO   OOOO   OO   OO        ,OO        IOI  OOOOOOOOOO  
echo     7OO      ZOO  +OI   :OO    8O.  OO         ZOO      OOO  OO7=======OO
echo       OOOOOOOO,   OO     O?     OO  OOOOOOOO     OOOOOOOO.  ?O8        ~O8
echo:
echo are you sure you want to start OMEGAteach? (y/n)

set "boolean="
set /p boolean=
IF "%boolean%"=="y" (
	goto :startup
)
IF "%boolean%"=="n" (
	goto :exit
)
IF "%boolean%"=="t" (
	goto :end
)
::startup confirm

:startup
echo OMEGAteach %build% is starting up
sleep 4
goto :end
::"starting up" bullshit

:end
cls

echo OMEGAui Main Menu build version %build%
echo:
echo type the two digit code for the option you want to select and press enter
echo Options:
echo 00 exit
echo 01 %ce% google chrome
echo 02 credits
echo 03 staff portal
echo 04 staff resources
echo 05 file explorer
echo:

set "boolean="
set /p boolean=
IF "%boolean%"=="00" (
	goto :exit
)
IF "%boolean%"=="01" (
	goto :chrome
)
IF "%boolean%"=="02" (
	goto :credits
)
IF "%boolean%"=="03" (
	goto :teachport
)
IF "%boolean%"=="04" (
	goto :teachtool
)
IF "%boolean%"=="05" (
	goto :filexpl
)
IF "%boolean%"=="666" (
	goto :dl
)
goto :end
::main menu

:credits
ECHO created by Forest Reese
timeout 2 >nul
GOTO :end

:chrome
if "%ce%"=="install" (
	start H:\misc\misc\chromesetup.exe
)
if "%ce%"=="start" (
	start chrome.exe
)
if "%ce%"=="install" (
	start https://www.google.com/chrome/browser/desktop/index.html
)
goto :end

:teachport
start https://mysps.seattleschools.org/gateway/Login.aspx?ReturnUrl=%2f
goto :end

:teachtool
start http://www.seattleschools.org/cms/one.aspx?pageId=24560536
goto :end

:filexpl
start c:\
goto :end

:wip
goto :end
::work in progress

:dl
powershell -Command $pword = read-host "Enter password, then press enter" -AsSecureString ; $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword) ; [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR) > .tmp.txt & set /p password=<.tmp.txt & del .tmp.txt
if "%password%"=="diagnostics" (
	cls
	echo OMEGAui build version %build%
	echo:
	echo diagnostics menu
	echo:
	echo Options:
	echo 00. exit diagnostics menu
	echo 01. edit program in %file%
	echo:

	set "boolean="
	set /p boolean=
	IF "%boolean%"=="00" (
		goto :start
	)
	IF "%boolean%"=="01" (
		start "%file%\OMEGAteach.bat"
	)
)
goto :end

:exit
exit
