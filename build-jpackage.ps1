# 構建 No Spring Boot 版本的 jpackage 可執行檔

$ErrorActionPreference = "Stop"

Write-Host "========================================"
Write-Host "  JPEG2PDF-OFD No Spring Boot"
Write-Host "  jpackage Builder"
Write-Host "========================================"
Write-Host ""

$projectPath = "D:\Projects\jpeg2pdf-ofd-nospring"

Set-Location $projectPath

# 1. 構建 JAR
Write-Host "[1/4] 構建 JAR..."
Write-Host ""

mvn clean package -DskipTests 2>&1 | Out-Null

if ($LASTExitCode -ne 0) {
    Write-Host "  ❌ 構建失敗"
    exit 1
}

Write-Host "  ✅ JAR 構建成功"

# 2. 準備 jpackage 輸入目錄
Write-Host ""
Write-Host "[2/4] 準備 jpackage 輸入..."

if (Test-Path "jpackage-input") {
    Remove-Item -Recurse -Force "jpackage-input"
}

New-Item -ItemType Directory -Path "jpackage-input" -Force | Out-Null

# 複製 JAR
Copy-Item "target\jpeg2pdf-ofd-nospring-3.0.0-jar-with-dependencies.jar" "jpackage-input\" -Force

Write-Host "  ✅ 輸入目錄已準備"

# 3. 使用 jpackage 打包
Write-Host ""
Write-Host "[3/4] jpackage 打包（這需要 2-3 分鐘）..."
Write-Host ""

jpackage `
  --name "JPEG2PDF-OFD-NoSpring" `
  --input jpackage-input `
  --main-jar jpeg2pdf-ofd-nospring-3.0.0-jar-with-dependencies.jar `
  --main-class com.ocr.nospring.Main `
  --type app-image `
  --dest dist-jpackage `
  --java-options "-Xmx2G" `
  --win-console `
  --app-version "3.0.0" `
  --description "JPEG OCR to Searchable PDF/OFD - No Spring Boot Edition" `
  --vendor "Brian Shih" 2>&1 | Out-Null

if ($LASTExitCode -ne 0) {
    Write-Host "  ❌ jpackage 打包失敗"
    exit 1
}

Write-Host "  ✅ jpackage 打包成功"

# 4. 添加配置文件和腳本
Write-Host ""
Write-Host "[4/4] 添加配置文件..."

# 配置文件
$config = @{
    input = @{
        folder = "C:/OCR/Watch"
        pattern = "*.jpg"
    }
    output = @{
        folder = "C:/OCR/Output"
        format = "all"
    }
    ocr = @{
        language = "chinese_cht"
    }
}

$config | ConvertTo-Json -Depth 3 | Set-Content -Path "dist-jpackage\JPEG2PDF-OFD-NoSpring\config.json" -Encoding UTF8

# 運行腳本
$runScript = @'
@echo off
chcp 65001 >nul
echo ========================================
echo   JPEG2PDF-OFD No Spring Boot v3.0.0
echo   jpackage Edition
echo ========================================
echo.
if "%1"=="" (
    echo Usage: run.bat config.json
    echo.
    pause
    exit /b 1
)

"%~dp0\JPEG2PDF-OFD-NoSpring.exe" %1

if errorlevel 1 (
    echo.
    echo Execution failed
    pause
    exit /b 1
)
'@

$runScript | Out-File -FilePath "dist-jpackage\JPEG2PDF-OFD-NoSpring\run.bat" -Encoding ASCII

# README
$readme = @'
# JPEG2PDF-OFD No Spring Boot (jpackage Edition)

## 特點

- ✅ 無需 Java 安裝
- ✅ 無 Spring Boot 框架
- ✅ 完整功能（OCR + PDF + OFD）
- ✅ 獨立資料夾（包含 runtime）

## 使用方法

```cmd
run.bat config.json
```

或直接運行：

```cmd
JPEG2PDF-OFD-NoSpring.exe config.json
```

## 配置

編輯 `config.json`：

```json
{
  "input": {
    "folder": "C:/OCR/Watch",
    "pattern": "*.jpg"
  },
  "output": {
    "folder": "C:/OCR/Output",
    "format": "all"
  },
  "ocr": {
    "language": "chinese_cht"
  }
}
```

## 支持格式

- PDF - 可搜索 PDF
- OFD - 可搜索 OFD
- TXT - 純文本

## 版本

- Version: 3.0.0
- Framework: None (Pure Java SE)
- Packaging: jpackage (includes runtime)
'@

Set-Content -Path "dist-jpackage\JPEG2PDF-OFD-NoSpring\README.md" -Encoding UTF8

Write-Host "  ✅ 配置文件已添加"

# 5. 顯示結果
Write-Host ""
Write-Host "========================================"
Write-Host "  構建完成！"
Write-Host "========================================"
Write-Host ""

# 計算大小
$folderSize = (Get-ChildItem "dist-jpackage\JPEG2PDF-OFD-NoSpring" -Recurse | Measure-Object -Property Length -Sum).Sum / 1MB
$folderSizeMB = [math]::Round($folderSize, 2)

Write-Host "位置："
Write-Host "  $projectPath\dist-jpackage\JPEG2PDF-OFD-NoSpring\"
Write-Host ""
Write-Host "資料夾大小："
Write-Host "  $folderSizeMB MB"
Write-Host ""

# 顯示文件
Write-Host "文件列表："
Get-ChildItem "dist-jpackage\JPEG2PDF-OFD-NoSpring" | Select-Object Name, Length | Format-Table -AutoSize

Write-Host ""
Write-Host "========================================"
Write-Host "  使用方法"
Write-Host "========================================"
Write-Host ""
Write-Host "cd dist-jpackage\JPEG2PDF-OFD-NoSpring"
Write-Host "run.bat config.json"
Write-Host ""
Write-Host "========================================"
Write-Host "  對比"
Write-Host "========================================"
Write-Host ""
Write-Host "| 版本 | 大小 | Java | Spring | 單文件 |"
Write-Host "|------|------|------|--------|--------|"
Write-Host "| jpackage (No Spring) | ~$folderSizeMB MB | ❌ | ❌ | ❌ |"
Write-Host "| jpackage (Spring) | 212 MB | ❌ | ✅ | ❌ |"
Write-Host "| JAR (No Spring) | 52 MB | ✅ | ❌ | ✅ |"
Write-Host ""
Write-Host "========================================"
Write-Host "  推薦"
Write-Host "========================================"
Write-Host ""
Write-Host "✅ 無 Java 環境 → jpackage 版本"
Write-Host "✅ 有 Java 環境 → JAR 版本（更小）"
Write-Host ""

pause
