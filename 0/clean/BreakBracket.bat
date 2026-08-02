@                                                                                                                                                                                                                                                                                                                       echo off



















if "%~1" == "" exit/b
echo ------------------------
if /i not "%~2" == "" echo %*
echo ------------------------



( chcp | find /i "65001" || chcp 65001 ) >NUL
for %%$ in ( "HKLM\Software\0\Colorcon" ) do for /f usebacktokens^=3* %%A in ( ` 2^>NUL reg query %%$ ^|^| echo one two 2 3 6 8 9 A B E` ) do  for /f usebacktokens^=* %%^^; in ( ` reg add %%$ -d "%%B %%A" -f ` ) do color %%A



for /f usebacktokens^=* %%* in ( ' jpg jpeg png gif webp heic mp4 mpv mov mpg mpeg webm webp ' ) do for %%$ in ( "%~dp0.etc\hashmove.log" ) do for /f usebacktokens^=* %%- in ( ' --fast-list --copy-links --ignore-case ' ) do for /f usebacktokens^=* %%_ in ( ` cmd/q/c for %%i in ^( "%~dp1." ^) do for %%j in ^( "%~dp1.." ^) do echo "%%~dpnxj\.bud\%%~nxi\%DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%"` ) do ( echo:


  echo "%~1" | find /v "(" | find /v ")" >NUL && (                                          
    for %%? in ( "%~1" "%~dpn1(?)%~x1"  "%~dpn1(??)%~x1" "%~dpn1(???)%~x1" "%~dpn1 (?)%~x1"  "%~dpn1 (??)%~x1" "%~dpn1 (???)%~x1" "%~dpn1(?).*"  "%~dpn1(??).*" "%~dpn1(???).*" "%~dpn1 (?).*"  "%~dpn1 (??).*" "%~dpn1 (???).*" ) do for %%? in ( "%%~?" ) do if not exist %%? ( echo Skip %%?) else ( 
      for /f usebacktokens^=1* %%A in ( ` rclone lsf -Fhtp --separator " " %%- %%? ` ) do for %%i in ( "%~dpn1 - %%A%%~x?" ) do ( 
        if not exist %%i ( echo name %%A [%%~nx?]& ren %%? "%%~nxi" && (( echo name %%A $ %%? "%%~nxi") >> %%$ ) || (( echo:& echo FAIL NAME %%A $ %%? "%%~nxi"& echo:) >> %%$ ) ) else echo move %%A [%%~nx?]& rclone moveto %%? %%i --backup-dir %%_ --checksum %%- && (( echo move %%A $ %%? %%i) >> %%$ ) || (( echo FAIL MOVE %%A $ %%? %%i) >> %%$ ) 
  ))) || (                                                                                 
    for %%. in ( %%* ) do for %%^< in ( "%~dp1" ) do for %%^> in ( "%%~<* (?).%%~." "%%~<* (??).%%~." "%%~<* (???).%%~." ) do for %%^> in ( "%%~>" ) do if not exist %%^> ( echo skipping %%^> ) else ( if defined one set "one="
      for /L %%l in ( 0 1 99 ) do if not defined one for %%# in ( "(%%l)" ) do echo "%%~n>" | find %%# >NUL && ( set "one=%%~n>"
        for %%0 in ( "%%~>" ) do for /f usebacktokens^=* %%0 in ( ` cmd/q/c for /f usebacktokens^^^^^=* %%I in ^( `cmd/q/v/c echo "!ONE:%%~#=!"` ^) do for %%i in ^( "%%~dp0%%~I" ^) do echo "%%~dpnxi%%~x0"` ) do ( echo:& echo %%~nx0
          for %%? in ( %%0 %%^> "%%~dpn0(?)%%~x0" "%%~dpn0(??)%%~x0" "%%~dpn0(???)%%~x0" "%%~dpn0 (?)%%~x0" "%%~dpn0 (??)%%~x0" "%%~dpn0 (???)%%~x0" ) do for %%? in ( "%%~?" ) do if exist %%? for /f usebacktokens^=1* %%A in ( ` rclone lsf -Fhtp --separator " " %%- %%? ` ) do for %%i in ( "%%~dpn0 - %%A%%~x?" ) do ( 
            if not exist %%i ( echo name %%A [%%~nx?]& ren %%? "%%~nxi" && (( echo name %%A $ %%? "%%~nxi") >> %%$ ) || (( echo:& echo FAIL NAME %%A $ %%? "%%~nxi"& echo:) >> %%$ ) ) else echo move %%A [%%~nx?]& rclone moveto %%? %%i --backup-dir %%_ --checksum %%- && (( echo move %%A $ %%? %%i) >> %%$ ) || (( echo FAIL MOVE %%A $ %%? %%i) >> %%$ ) 
      ))) 
  ))


)


echo:
shift /1
if /i not "%~1" == "" goto:SCAN.DUAL.LOOP

echo:
echo Hold 
echo Count == [%TIME:~6,2%%TIME:~9,2%]
echo:
ping 127.0.0.1 -n %TIME:~6,2%%TIME:~9,2% >NUL
echo:

echo:
echo Byea
echo:


pto
exit/b






