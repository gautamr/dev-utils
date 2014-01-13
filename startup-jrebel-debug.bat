@echo off
rem JRebel options
set JREBEL_JAR=C:/eclipse-4.3.1-j2ee/plugins/org.zeroturnaround.eclipse.embedder_5.3.1.RELEASE-201307081557/jrebel/jrebel.jar
set WORKSPACE_HOME=C:/dev-projects-nri/workspace-4.3.1-j2ee-fch
set GIT_ROOT=C:/dev-projects-nri/workspace-4.3.1-j2ee-fch
set DEBUG_OPTS=-Xdebug -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n
set JAVA_OPTS=-javaagent:%JREBEL_JAR% -Drebel.workspace.path=%WORKSPACE_HOME% -Drebel.log.file=C:/Users/gautamr/.jrebel/jrebel.log -Drebel.hotswap=false -Drebel.properties=C:/Users/gautamr/.jrebel/jrebel.properties -Dfinch.gitroot=%GIT_ROOT% -XX:MaxPermSize=1024m %DEBUG_OPTS% %JAVA_OPTS%
call "%~dp0\startup.bat" %*