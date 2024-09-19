@echo off
title AC-Tools Main Menu - by Andrecon
chcp 65001 >nul
cd files
mode con:cols=145 lines=34
:start
goto menu

:menu
echo.
echo.
echo          [38;2;255;255;255m [48;2;12;16;33m╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║                                                                                                                   ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║                          █████╗  ██████╗      ████████╗ ██████╗  ██████╗ ██╗     ███████╗                         ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║                         ██╔══██╗██╔════╝      ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝                         ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║                         ███████║██║     █████╗   ██║   ██║   ██║██║   ██║██║     ███████╗                         ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║                         ██╔══██║██║     ╚════╝   ██║   ██║   ██║██║   ██║██║     ╚════██║                         ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║                         ██║  ██║╚██████╗         ██║   ╚██████╔╝╚██████╔╝███████╗███████║                         ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║                         ╚═╝  ╚═╝ ╚═════╝         ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝                         ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║                                                                                                                   ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║                                                                                                                   ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║                                                                                                                   ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║   Welcome to AC-Tools! Here you can find cool, and *maybe* useless tools to play with!                            ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║   ------------------------------------------------------------------------------------                            ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║   Type the letter, number or command to do a surtain action                                                       ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║                                                                                                                   ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║                                                                                                                   ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║   (h) Help Centre                                                                                                 ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║   (1) Password Generator                                                                                          ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║   (2) Text To Speech                                                                                              ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║   (3) Digital Clock*                                                                                              ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║   (4) File-Mover*                                                                                                 ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║   (5) File-Mover Advanced*                                                                                        ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m║                                                                                                                   ║[0m
echo          [38;2;255;255;255m [48;2;12;16;33m╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝[0m
echo.
set /p ans=".         >> "
if %ans%==/kill exit
if %ans%=="/kill @s" exit
if %ans%==kill exit

if %ans%==1 (
start passgen.bat
cls
goto start
)

if %ans%==2 (
start tts.vbs
cls
goto start
)

if %ans%==3 (
start clock.bat
cls
goto start
)

if %ans%==4 (
start filemover.bat
cls
goto start
)

if %ans%==5 (
start filemover2.bat
cls
goto start
)

if %ans%==h (
start helpcentre.bat
cls
goto start
)

if %ans%==*3 (goto *3)

if %ans%==*4 (goto *4-5)

if %ans%==*5 (goto *4-5)

if %ans%==[] (
cls
goto start
)

pause

:*3
title Command 3 features
cls
echo The Digital Clock has the Always on Top Feature
pause
cls
goto start

:*4-5
title Commands 4 and 5 features
cls
echo File-Mover can only use paths
echo File-Mover Advanced can select files without the need of a path. The path is selected with the first step
pause
cls
goto start