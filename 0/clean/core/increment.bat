@                                                                                                                                                                                                                                                                                                                       echo off


:LOOP
if "%~1" == "" exit/b
for %%i in ( "%~1" ) do if exist %%i ( 
  for /L %%l in ( 0 1 9 ) do for /L %%m in ( 0 1 9 ) do if not %%l%%m EQU 00 if exist %%i for %%m in ( "%%~dpni #%%l%%m%%~xi" ) do if not exist %%m for %%o in ( "%%~nxm" ) do if exist %%i ren %%i %%o
) 

shift /1
goto:LOOP

exit/b




:ADDHASHMOD
if "%~1" == "" exit/b
for %%i in ( "%~1" ) do if exist %%i ( 
  for /f usebacktokens^=1-3* %%A in ( ` rclone lsf -Fhtp --separator " " --copy-links --ignore-case --fast-list %%i ` ) do for /f usebacktokens^=1-3*delims^=^: %%D in ( '%%C' ) do for %%j in ( "%%~dpni - %%A - %%BM%%D_%%E_%%F%%~xi" ) do for %%k in ( "%%~nxj" ) do if exist %%i if not exist %%j ( ren %%i %%k 
  ) else for %%/ in ( "..\.bud\%%A\%DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%" ) do for %%/ in ( "%%~dpnx/" ) do rclone moveto %%i %%j --fast-list --copy-links --ignore-case --checksum --backup-dir %%/ 
)

shift /1
goto:LOOP

exit/b

:ADDMODHASH
if "%~1" == "" exit/b
for %%i in ( "%~1" ) do if exist %%i ( 
  for /f usebacktokens^=1-3* %%A in ( ` rclone lsf -Fhtp --separator " " --copy-links --ignore-case --fast-list %%i ` ) do for /f usebacktokens^=1-3*delims^=^: %%D in ( '%%C' ) do for %%j in ( "%%~dpni - %%BM%%D_%%E_%%F - %%A%%~xi" ) do for %%k in ( "%%~nxj" ) do if exist %%i if not exist %%j ( ren %%i %%k 
  ) else for %%/ in ( "..\.bud\%%A\%DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%" ) do for %%/ in ( "%%~dpnx/" ) do rclone moveto %%i %%j --fast-list --copy-links --ignore-case --checksum --backup-dir %%/ 
)

shift /1
goto:ADDMODHASH

exit/b

:ADDMODTIME
if "%~1" == "" exit/b
for %%i in ( "%~1" ) do if exist %%i ( 
  for /f usebacktokens^=1-3* %%A in ( ` rclone lsf -Fhtp --separator " " --copy-links --ignore-case --fast-list %%i ` ) do for /f usebacktokens^=1-3*delims^=^: %%D in ( '%%C' ) do for %%j in ( "%%~dpni - %%BM%%D_%%E_%%F%%~xi" ) do for %%k in ( "%%~nxj" ) do if exist %%i if not exist %%j ( ren %%i %%k 
  ) else for %%/ in ( "..\.bud\%%A\%DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%" ) do for %%/ in ( "%%~dpnx/" ) do rclone moveto %%i %%j --fast-list --copy-links --ignore-case --checksum --backup-dir %%/ 
)

shift /1
goto:ADDMODTIME

exit/b


:ADDHASH
if "%~1" == "" exit/b
for %%i in ( "%~1" ) do if exist %%i ( 
  for /f usebacktokens^=1* %%A in ( ` rclone lsf -Fhtp --separator " " --copy-links --ignore-case --fast-list %%i ` ) do for %%j in ( "%%~dpni -%%A%%~xi" ) do for %%k in ( "%%~nxj" ) do if exist %%i if not exist %%j ( ren %%i %%k 
  ) else for %%/ in ( "..\.bud\%%A\%DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%" ) do for %%/ in ( "%%~dpnx/" ) do rclone moveto %%i %%j --fast-list --copy-links --ignore-case --checksum --backup-dir %%/ 
)

shift /1
goto:ADDHASH

exit/b


:MODTIME
for %%i in ( "%~1" ) do if exist %%i for /f usebacktokens^=1-3* %%A in ( ` rclone lsf -Fhtp --separator " " --copy-links --ignore-case --fast-list %%i ` 
) do for /f usebacktokens^=1-3*delims^=^: %%D in ( '%%C' ) do echo %%BM%%D_%%E_%%F



exit/b

:hashfile
for %%i in ( "%~1" ) do if exist %%i rclone listremotes >NUL && ( 
  for /f usebacktokens^=1* %%A in ( ` rclone lsf -Fhtp --separator " " --copy-links --ignore-case --fast-list %%i ` ) do echo %%A
) else if /i %%~zi NEQ 0 for /f usebacktokens^=1* %%A in ( ` certutil -hashfile %%i MD5 ` ) do if "%%~B" == "" echo %%A

exit/b
