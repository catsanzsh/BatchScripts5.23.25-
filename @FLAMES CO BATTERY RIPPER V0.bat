@echo off
title Optimizing Battery Performance... 🐾
color 0A

echo ===============================
echo  🔋 Enabling Battery Saver Mode
echo ===============================
powercfg /setactive SCHEME_MAX

echo ===============================
echo  🌙 Reducing Background Apps
echo ===============================
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f

echo ===============================
echo  🌫️ Disabling Transparency Effects
echo ===============================
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f

echo ===============================
echo  🔇 Muting System Sounds
echo ===============================
reg add "HKCU\AppEvents\Schemes" /v "Apps" /t REG_SZ /d "" /f

echo ===============================
echo  💨 Disabling Animations
echo ===============================
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f

echo ===============================
echo  💤 Disabling Scheduled Maintenance Wake
echo ===============================
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v WakeUp /t REG_DWORD /d 0 /f

echo ===============================
echo  📦 Turning Off Delivery Optimization
echo ===============================
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v DODownloadMode /t REG_DWORD /d 0 /f

echo ===============================
echo  🧪 Applied Cat-San's Chill Battery Mode!
echo ===============================
pause
