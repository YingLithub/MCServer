
:loop
::腳本開始
echo "請記得使用java 11"
del paperlatest.jar ::自動更新最新版開始
curl -o paperlatest.jar https://papermc.io/api/v1/paper/1.16.1/latest/download ::自動更新最新版結束
java -Xms8G -Xmx8G -Dfile.encoding=UTF-8 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:-OmitStackTraceInFastThrow -XX:+AlwaysPreTouch  -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=8 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=true -Daikars.new.flags=true -jar paperlatest.jar nogui
::無限循環執行
goto loop
