@                                                                                                                                                                                                                                                                                                                       echo off

if "%~1" == "" explorer .

:LOOP
if "%~1" == "" exit/b 


for /f usebacktokens^=* %%I in ( ` 2^>NUL where "%~1" ` ) do explorer /select,"%%~I"


shift /1
goto:LOOP

