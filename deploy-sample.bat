@echo off
set dist=C:\dev-projects-nri\workspace-4.3.1-j2ee-fch\finch\sample-app\sample-dist\target
set app=sample-web

rem remove finch files from tomcat
echo Deleting %app%.war
if exist ..\webapps\%app%.war (del /f /q ..\webapps\%app%.war)
if exist ..\webapps\%app% (rd /s /q ..\webapps\%app%)
if exist ..\logs (rd /s /q ..\logs)
if exist ..\temp (rd /s /q ..\temp)
if exist ..\work\Catalina\localhost\%app% (rd  /s /q ..\work\Catalina\localhost\%app%)

rem copy finch tomcat war file from finch distribution
copy %dist%\%app%.war ..\webapps\