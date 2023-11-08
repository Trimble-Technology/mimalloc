MSBuild ..\mimalloc.Static.VS2019.sln /p:Configuration=Release  /p:Platform=x64
MSBuild ..\mimalloc.Static.VS2019.sln /p:Configuration=DebugCRT /p:Platform=x64

@echo off
set /p Build=<ver.txt
set /a Build=%Build%+1
echo %Build%>ver.txt

c:\work\nuget.exe pack -Version 0.0.%Build%-test mimalloc-trimble.nuspec
