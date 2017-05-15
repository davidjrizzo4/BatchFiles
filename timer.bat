@echo off
Title David Rizzo | Timer
:menu 
color 0b
:bust
cls
echo Welcome to the timer. This timer only counts seconds.
echo.
echo Type in the amount of seconds to count. The number may range from 0 to   
echo 99,999. If you need help converting minutes into seconds, type c for a
echo caculator.
echo.
set/p "time=>"
if %time%==c GOTO calc
if %time%==C GOTO calc
if %time% GTR 99999 GOTO bust
cls
echo The time has been set! Press any key to start counting. You can stop the
echo timer by pressing any key. After stoping, the timer cannot continue.
echo.
pause
cls
color 0c
timeout %time%
echo.
echo (DING!)
echo.
pause
goto menu
:calc
cls
color 0a
echo Type the math problem below. This calculator doesn't accept decimals,
echo percents, etc. Only whole numbers.
echo.
set/p "math=>"
set/a nmath=%math%
cls
echo %math%=%nmath%
pause
cls
echo Would you like to return to the timer or use the calculator again?
echo.
echo c or C= calculator
echo t or T= timer
echo.
set/p "route=>"
if %route%==c GOTO calc
if %route%==C GOTO calc
if %route%==t GOTO menu
if %route%==T GOTO menu