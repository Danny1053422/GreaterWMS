@echo off
REM === 設定專案根目錄 ===
cd /d C:\Users\Blazar\Documents\Coding\GreaterWMS\GreaterWMS

REM === 啟用虛擬環境 ===
call venv311\Scripts\activate

REM === 啟動 Daphne 伺服器，讓內網可存取 ===
echo Starting Daphne on 0.0.0.0:8008...
daphne -b 0.0.0.0 -p 8008 greaterwms.asgi:application