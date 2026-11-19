@echo off
rem LVLORA — Windows: ilovani alohida oyna (ilova rejimi)da ochadi. Internet shart emas.
setlocal
set "U=file:///%~dp0index.html"
set "U=%U:\=/%"
set "E1=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
set "E2=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
set "C1=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
set "C2=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
set "C3=%LocalAppData%\Google\Chrome\Application\chrome.exe"
for %%B in ("%E1%" "%E2%" "%C1%" "%C2%" "%C3%") do (
  if exist %%B (
    start "" %%B --app="%U%" --window-size=480,900
    exit /b
  )
)
start "" "%~dp0index.html"
