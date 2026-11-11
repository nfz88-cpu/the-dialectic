@echo off
cd /d %~dp0
start "" "http://localhost:8800/index.html"
python -m http.server 8800
