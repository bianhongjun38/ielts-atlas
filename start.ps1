# 雅思词图 · 本地启动脚本
# 用法：右键「使用 PowerShell 运行」，或在终端执行  .\start.ps1
$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot

if (-not (Test-Path 'node_modules')) {
  Write-Host '首次运行，正在安装依赖…' -ForegroundColor Cyan
  npm ci --no-audit --no-fund
}

Write-Host ''
Write-Host '  雅思词图 · IELTS Word Atlas' -ForegroundColor Yellow
Write-Host '  开发模式  http://localhost:5188' -ForegroundColor Green
Write-Host '  按 Ctrl+C 停止' -ForegroundColor DarkGray
Write-Host ''
npm run dev
