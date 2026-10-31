# 雅思词图 · 预览生产构建
# 先 npm run build，再运行本脚本
$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot

if (-not (Test-Path 'dist')) {
  Write-Host '还没有 dist，先构建…' -ForegroundColor Cyan
  npm run build
}

Write-Host ''
Write-Host '  雅思词图（生产构建）  http://127.0.0.1:5189' -ForegroundColor Green
Write-Host '  按 Ctrl+C 停止' -ForegroundColor DarkGray
Write-Host ''
Set-Location dist
python -m http.server 5189 --bind 127.0.0.1
