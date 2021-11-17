@Echo off
chcp 65001
cls
color 3
title now that i think of it, this is sort of gay. literally.
echo.
echo pinga                             
echo.
echo -------------------------------
echo -    CTRL + C TO STOP PINGING - or alt f4
echo -------------------------------
set /p IP=enter da ip adres = 
color 3
:top
PING -n 1 %IP% | FIND "TTL="
title pinga da homie to see if hes router is fried, da ip we be pinging is : %IP% 
IF ERRORLEVEL 1 (echo [poor homie is gone] %IP% [poor homie is gone])
set /a num= (%Random%%%9)+1
color %num%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top
