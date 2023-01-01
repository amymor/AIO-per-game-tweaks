@echo off & cd /d "%~dp0"
echo.
:"Test large Large manually by mbk1969"
echo [33m Less ticks means better execution speed. [0m 
echo [33m So if there are less ticks in large pages allocation, [0m 
echo [33m it means it is better, otherwise standard pages allocation is better. [0m 
LargePagePerfTest.exe && goto success || if %errorlevel%==1 goto to error1 else goto error255
:error1
echo [91m The Large pages is slower on your system, so it's not recommended. [0m 
echo.
echo.Press enter or close this window
pause>nul
exit
:error255
echo [91m Unknown error [0m 
echo.
echo.Press enter or close this window
pause>nul
exit
:success
echo [;92m The Large pages is faster on your system, feel free to try it [0m
echo.
echo.Press enter or close this window
pause>nul
exit