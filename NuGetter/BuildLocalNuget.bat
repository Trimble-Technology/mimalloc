MSBuild ..\mimalloc.Static.VS2019\mimalloc.Static.VS2019.vcxproj /p:Configuration=Release  /p:Platform=x64
MSBuild ..\mimalloc.Static.VS2019\mimalloc.Static.VS2019.vcxproj /p:Configuration=DebugCRT /p:Platform=x64

@echo off
set /p Build=<ver.txt
set /a Build=%Build%+1
echo %Build%>ver.txt

c:\tools\nuget\nuget.exe pack -Version 0.0.%Build% mimalloc.nuspec
