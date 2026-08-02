@                                                                                                                                                                                                                                                                                                                       echo off




for %%i in ( "%~1" ) do if exist %%i for /f usebacktokens^=1-3* %%A in ( ` rclone lsf -Fhtp --separator " " --copy-links --ignore-case --fast-list %%i ` 
) do for /f usebacktokens^=1-3*delims^=^: %%D in ( '%%C' ) do echo %%BM%%D_%%E_%%F



exit/b

:hashfile
for %%i in ( "%~1" ) do if exist %%i rclone listremotes >NUL && ( 
  for /f usebacktokens^=1* %%A in ( ` rclone lsf -Fhtp --separator " " --copy-links --ignore-case --fast-list %%i ` ) do echo %%A
) else if /i %%~zi NEQ 0 for /f usebacktokens^=1* %%A in ( ` certutil -hashfile %%i MD5 ` ) do if "%%~B" == "" echo %%A

exit/b
