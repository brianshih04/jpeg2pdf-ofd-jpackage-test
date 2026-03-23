# 構建 No Spring Boot 版本

$ErrorActionPreference = "Stop"

Write-Host "========================================"
Write-Host "  JPEG2PDF-OFD No Spring Boot Builder"
Write-Host "========================================"
Write-Host ""

$projectPath = "D:\Projects\jpeg2pdf-ofd-nospring"

# 1. 編譯
Write-Host "[1/3] 編譯 No Spring Boot 版本..."
Write-Host ""

Set-Location $projectPath

mvn clean package -DskipTests 2>&1 | Out-Null

if ($LASTExitCode -ne 0) {
    Write-Host "  ❌ 編譯失敗"
    Write-Host ""
    Write-Host "查看錯誤："
    mvn clean compile 2>&1 | Select-String "ERROR", "error" -Context 1,1
    exit 1
}

Write-Host "  ✅ 編譯成功"

# 2. 創建分發
Write-Host ""
Write-Host "[2/3] 創建分發..."

Copy-Item "target\jpeg2pdf-ofd-nospring-3.0.0-jar-with-dependencies.jar" "dist\jpeg2pdf-ofd-nospring.jar" -Force
Copy-Item "config.json" "dist\config.json" -Force

Write-Host "  ✅ 分發已創建"

# 3. 創建運行腳本
Write-Host ""
Write-Host "[3/3] 創建運行腳本..."

$runScript = @'
@echo off
chcp 65001 >nul
echo ========================================
echo   JPEG2PDF-OFD No Spring Boot v3.0.0
echo   Pure Java SE Edition
echo ========================================
echo.
if "%1"=="" (
    echo Usage: run.bat config.json
    echo.
    pause
    exit /b 1
)

java -Xmx2G -jar jpeg2pdf-ofd-nospring.jar %1

if errorlevel 1 (
    echo.
    echo Execution failed
    pause
    exit /b 1
)
'@

$runScript | Out-File -FilePath "dist\run.bat" -Encoding ASCII

Write-Host "  ✅ 運行腳本已創建"

# 4. 顯示結果
Write-Host ""
Write-Host "========================================"
Write-Host "  構建完成！"
Write-Host "========================================"
Write-Host ""

# 計算大小
$jar = Get-Item "dist\jpeg2pdf-ofd-nospring.jar"
$jarSize = [math]::Round($jar.Length / 1MB, 2)

Write-Host "位置："
Write-Host "  $projectPath\dist\"
Write-Host ""
Write-Host "JAR 大小："
Write-Host "  jpeg2pdf-ofd-nospring.jar: $jarSize MB"
Write-Host ""
Write-Host "========================================"
Write-Host "  使用方法"
Write-Host "========================================"
Write-Host ""
Write-Host "cd dist"
Write-Host "run.bat config.json"
Write-Host ""
Write-Host "或："
Write-Host ""
Write-Host "java -Xmx2G -jar jpeg2pdf-ofd-nospring.jar config.json"
Write-Host ""
Write-Host "========================================"
Write-Host "  優勢"
Write-Host "========================================"
Write-Host ""
Write-Host "✅ 無 Spring Boot（更小、更快）"
Write-Host "✅ 無框架依賴（更簡單）"
Write-Host "✅ 純 Java SE（更可靠）"
Write-Host ""

pause
