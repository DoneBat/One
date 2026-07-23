@                                                                                                                                                                                                                                                                                                                       echo off


goto:1

$1 == Source file
$2 == Subreddit
$3 == URL + PostTitle
$4 == URL
$5 == PostTitle
$6 == URL{CLEAN + NAKED[[ NoQuote ]]}
$7 == ' Anything cleaned to here ' 
$8 == ' Filename '
$9 == ''
$I == $URL[Download since earlier is to gallery]









:1

( chcp | find /i "65001" || chcp 65001 ) >NUL
for %%$ in ( "HKLM\Software\0\Colorcon" ) do for /f usebacktokens^=3* %%A in ( ` 2^>NUL reg query %%$ ^|^| echo one two 2 3 6 8 9 A B E` ) do  for /f usebacktokens^=* %%^^; in ( ` reg add %%$ -d "%%B %%A" -f ` ) do color %%A





for /f usebacktokens^=* %%T in ( ` cmd/q/c if %TIME:~,2% GEQ 10 ^( echo %DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%T%TIME:~,2%_%TIME:~3,2%_%TIME:~6,2%^) else echo %DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%T0%TIME:~1,1%_%TIME:~3,2%_%TIME:~6,2%` 
) do for %%/ in ( "%~dp0..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\0\0 A\Output\Download\fusion\Reddit\Subreddit\%DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%" ) do for %%/ in ( "%%~dpnx/" 
) do for %%\ in ( "%~dp0.etc\json.log" ) do for /f usebacktokens^=* %%1 in ( ` cmd/q/c if "%~1" ^^^=^^^= "" ^( for %%i in ^( "*.json" ^) do for %%i in ^( "%%~i" ^) do type %%\ ^^^| find /i %%i ^^^>NUL ^^^|^^^| ^( echo %%i^^^| find /v /i "cookie" ^^^| find /v /i "alias" ^^^| find /v /i "contextsearch" ^^^&^^^& echo %%~i^^^>^^^> %%\ ^)          ^) else for %%i in ^( "%~1" "%~2" "%~3" "%~4" "%~5" "%~6" "%~7" "%~8" "%~9" ^) do if exist %%i echo %%i` 
) do for /f usebacktokens^=* %%2 in ( ` jq " first(.data.children[].data.subreddit) " ^< %%1 ` ) do for %%\ in ( "%%~dp/%%~2" ) do ( 

     if not exist %%\ md %%\



) & ( 
  for /f usebacktokens^=* %%3 in ( ` jq " .data.children[].data | .url_overridden_by_dest + \" \" + .title " ^< %%1 ` ) do ( 
    for /f usebacktokens^=1* %%4 in ( '%%~3' ) do for /f usebacktokens^=1*delims^=^# %%6 in ( '%%4' ) do ( 
      for /f usebacktokens^=1*delims^=^? %%6 in ( '%%6') do echo:& echo %%6& for /f usebacktokens^=* %%6 in ( '"%%6"' ) do  ( 



        for %%^< in ( "Video" ) do for %%^< in ( "%%~\\%%~<" ) do for %%^> in ( "%%~<\.etc\%%~nx/" ) do for %%i in ( "%%~>\%%~nx6" ) do for %%j in ( "%%~<\%%~5" ) do for %%@ in ( "%~dp0.etc\yt.dlp" ) do for /f usebacktokens^=* %%I in ( '%%6' ) do for /f usebacktokens^=* %%- in ( ' --download-archive %%@ --break-on-existing --hls-use-mpegts --no-overwrites --mtime --merge-output-format "mp4" --remux-video "mp4" --embed-thumbnail --embed-metadata --embed-chapters --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36" --lazy-playlist ' ) do ( 
          echo %%6 | >NUL findstr /i "v\.redd\.it redgifs\.com" && (                                ( for %%? in ( %%i "%%~dp@" ) do if not exist %%? md %%? ) & if not exist %%@ echo off >> %%@ 

            type %%@ | find /i "%%~nx6" >NUL || ( 
              start "%%T : %%~nxj" /newwindow /min /wait /D %%i yt-dlp %%I %%- 
                for %%k in ( "%%~i\*" ) do for %%k in ( "%%~k" ) do for %%m in ( "%%~j - %%~nxk" ) do ( 
                  echo %%~nk
                  echo %%~nxm
                  if not exist %%m if exist %%k rclone copyto %%k %%m --backup-dir "%%~<\.etc\.bud" --progress --fast-list --copy-links --ignore-case 
                  if not exist %%m if exist %%k copy %%k %%m
                )
            ) 
         ) 
       ) 



        for %%^< in ( "Photo" ) do for %%^< in ( "%%~\\%%~<" ) do for /f usebacktokens^=* %%- in ( ' --contimeout "13s" --retries 1 --progress --stats-one-line --fast-list --copy-links --no-traverse --ignore-case --drive-server-side-across-configs --drive-acknowledge-abuse --drive-skip-shortcuts --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36" --no-clobber ' ) do ( 


          echo %%6 | >NUL findstr /i "i\.redd\.it l3n\.co imgur\.com" && ( 
            for %%i in ( "%%~<\%%~5 - %%~nx6" ) do for /f usebacktokens^=* %%I in ( '%%6' ) do if not exist %%i ( 
              echo %%~nxi
              rclone copyurl %%I %%i %%-  
          )) 

          for %%^> in ( "Gallery" ) do for %%^> in ( "%%~<\%%~>" ) do echo %%6 | >NUL findstr /i "www\.reddit\.com" && ( 
            for /f usebacktokens^=* %%8 in ( ' " .data.children[].data | select(.name==\"t3_%%~nx6\").gallery_data.items[]?.media_id " ' ) do for /f usebacktokens^=* %%8 in ( ` jq %%8 ^< %%1 ` ) do for /f usebacktokens^=* %%9 in ( `cmd/q/c for %%i in ^( "/%%~8." "preview.redd.it/%%~8" ^) do for /f usebacktokens^^^^^=1* %%G in ( ` jq ^^^^^^^< %%1 ^^^^^^^| find /i %%i ` ^) do for /f usebacktokens^^^^^=1*delims^^^^^=^^^^^? %%G in ^( '%%~H' ^) do echo "https://i.redd.it/%%~nxG"^^^& exit/b ` ) do ( 

              for /f usebacktokens^=* %%I in ( '%%9' ) do for %%i in ( "%%~>\%%~5 - %%~nx6 - %%~nx9" ) do if not exist %%i ( 
                echo %%~nxi
                rclone copyurl %%I %%i %%- 
              ) 
          )) 


        ) 



  )))
)

exit/b


