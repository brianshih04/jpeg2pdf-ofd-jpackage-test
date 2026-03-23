# JPEG2PDF-OFD (No Spring Boot Edition)

> **JPEG OCR to Searchable PDF/OFD** - 無需 Spring Boot 的輕量級版本

---

## ✨ 特點

- ✅ **無 Spring Boot** - 純 Java SE 實現
- ✅ **完整功能** - OCR + PDF + TXT + OFD
- ✅ **多種分發** - JAR、jpackage
- ✅ **跨平台** - Windows、macOS、Linux
- ✅ **80+ 語言** - 支持繁體/簡體中文、英文、日文等
- ✅ **多頁支持** - 單頁或多頁模式

---

## 📊 版本對比

| 版本 | 大小 | 需要 Java | 單文件 | 測試狀態 | 推薦 |
|------|------|----------|--------|---------|------|
| **jpackage** | **181 MB** | **❌ 否** | **❌ 資料夾** | **✅ 成功** | **⭐⭐⭐⭐⭐** |
| **JAR** | **52 MB** | **✅ 是** | **✅ 是** | **✅ 成功** | **⭐⭐⭐⭐** |

---

## 🚀 快速開始

### 使用 jpackage 版本（推薦，無需 Java）

```powershell
cd dist-jpackage\JPEG2PDF-OFD-NoSpring
.\JPEG2PDF-OFD-NoSpring.exe config.json
```

### 使用 JAR 版本（需要 Java 17+）

```powershell
cd dist
java -Xmx2G -jar jpeg2pdf-ofd-nospring.jar config.json
```

---

## 💻 跨平台使用指南

### Windows

#### jpackage 版本（推薦，無需 Java）

```powershell
# 1. 下載並解壓縮 dist-jpackage-JPEG2PDF-OFD-NoSpring.zip

# 2. 進入目錄
cd JPEG2PDF-OFD-NoSpring

# 3. 運行
.\JPEG2PDF-OFD-NoSpring.exe config-multipage-false.json

# 多頁模式
.\JPEG2PDF-OFD-NoSpring.exe config-multipage-true.json
```

#### JAR 版本（需要 Java 17+）

```powershell
# 1. 安裝 Java 17+
# 下載：https://adoptium.net/

# 2. 驗證 Java
java -version

# 3. 運行
java -Xmx2G -jar jpeg2pdf-ofd-nospring.jar config-multipage-false.json
```

---

### macOS

#### jpackage 版本（推薦，無需 Java）

```bash
# 1. 下載並解壓縮 dist-jpackage-JPEG2PDF-OFD-NoSpring.tar.gz
tar -xzf dist-jpackage-JPEG2PDF-OFD-NoSpring.tar.gz

# 2. 進入目錄
cd JPEG2PDF-OFD-NoSpring

# 3. 添加執行權限
chmod +x JPEG2PDF-OFD-NoSpring

# 4. 運行
./JPEG2PDF-OFD-NoSpring config-multipage-false.json

# 多頁模式
./JPEG2PDF-OFD-NoSpring config-multipage-true.json
```

**注意：** 首次運行可能需要在"系統偏好設定 > 安全性與隱私"中允許執行。

#### JAR 版本（需要 Java 17+）

```bash
# 1. 安裝 Java 17+
# 使用 Homebrew
brew install openjdk@17

# 或下載：https://adoptium.net/

# 2. 驗證 Java
java -version

# 3. 運行
java -Xmx2G -jar jpeg2pdf-ofd-nospring.jar config-multipage-false.json
```

---

### Linux

#### Ubuntu / Debian

**jpackage 版本：**

```bash
# 1. 下載並解壓縮
tar -xzf JPEG2PDF-OFD-NoSpring.tar.gz

# 2. 進入目錄
cd JPEG2PDF-OFD-NoSpring

# 3. 添加執行權限
chmod +x JPEG2PDF-OFD-NoSpring

# 4. 運行
./JPEG2PDF-OFD-NoSpring config-multipage-false.json
```

**JAR 版本：**

```bash
# 1. 安裝 Java 17+
sudo apt update
sudo apt install openjdk-17-jdk

# 2. 驗證
java -version

# 3. 運行
java -Xmx2G -jar jpeg2pdf-ofd-nospring.jar config-multipage-false.json
```

---

#### CentOS / RHEL / Fedora

**jpackage 版本：**

```bash
# 1. 下載並解壓縮
tar -xzf JPEG2PDF-OFD-NoSpring.tar.gz

# 2. 進入目錄
cd JPEG2PDF-OFD-NoSpring

# 3. 添加執行權限
chmod +x JPEG2PDF-OFD-NoSpring

# 4. 運行
./JPEG2PDF-OFD-NoSpring config-multipage-false.json
```

**JAR 版本：**

```bash
# 1. 安裝 Java 17+
sudo yum install java-17-openjdk-devel
# 或
sudo dnf install java-17-openjdk-devel

# 2. 驗證
java -version

# 3. 運行
java -Xmx2G -jar jpeg2pdf-ofd-nospring.jar config-multipage-false.json
```

---

#### 統信 UOS（UnionTech OS）

**系統特點：**
- 基於 Deepin
- 國產操作系統
- 支持龍芯、鯤鵬、飛騰等國產 CPU

**jpackage 版本：**

```bash
# 1. 下載並解壓縮
tar -xzf JPEG2PDF-OFD-NoSpring.tar.gz

# 2. 進入目錄
cd JPEG2PDF-OFD-NoSpring

# 3. 添加執行權限
chmod +x JPEG2PDF-OFD-NoSpring

# 4. 運行
./JPEG2PDF-OFD-NoSpring config-multipage-false.json
```

**JAR 版本：**

```bash
# 1. 檢查 Java 版本
java -version

# 如果沒有 Java 17+，安裝：
sudo apt install openjdk-17-jdk

# 2. 運行
java -Xmx2G -jar jpeg2pdf-ofd-nospring.jar config-multipage-false.json
```

**注意：** 
- 統信 UOS 通常預裝 Java 環境
- 如需安裝，可使用 UOS 應用商店或命令行

---

#### 麒麟 Kylin（銀河麒麟 / 中標麒麟）

**系統特點：**
- 國產操作系統
- 支持多種國產 CPU（龍芯、申威、飛騰等）
- 分為桌面版和服務器版

**jpackage 版本：**

```bash
# 1. 下載並解壓縮
tar -xzf JPEG2PDF-OFD-NoSpring.tar.gz

# 2. 進入目錄
cd JPEG2PDF-OFD-NoSpring

# 3. 添加執行權限
chmod +x JPEG2PDF-OFD-NoSpring

# 4. 運行
./JPEG2PDF-OFD-NoSpring config-multipage-false.json
```

**JAR 版本：**

```bash
# 1. 檢查 Java 版本
java -version

# 如果沒有 Java 17+，安裝：
# 麒麟系統通常使用 yum 或 apt
sudo yum install java-17-openjdk-devel
# 或
sudo apt install openjdk-17-jdk

# 2. 運行
java -Xmx2G -jar jpeg2pdf-ofd-nospring.jar config-multipage-false.json
```

**注意：**
- 銀河麒麟 V10 可能使用不同的包管理器
- 建議優先使用 jpackage 版本（無需安裝 Java）

---

#### 深度 Deepin

**jpackage 版本：**

```bash
# 1. 下載並解壓縮
tar -xzf JPEG2PDF-OFD-NoSpring.tar.gz

# 2. 進入目錄
cd JPEG2PDF-OFD-NoSpring

# 3. 添加執行權限
chmod +x JPEG2PDF-OFD-NoSpring

# 4. 運行
./JPEG2PDF-OFD-NoSpring config-multipage-false.json
```

**JAR 版本：**

```bash
# 1. 安裝 Java 17+
sudo apt update
sudo apt install openjdk-17-jdk

# 2. 驗證
java -version

# 3. 運行
java -Xmx2G -jar jpeg2pdf-ofd-nospring.jar config-multipage-false.json
```

---

#### 其他國產 Linux 發行版

對於其他國產 Linux 系統（如中標軟件 NeoKylin、中興新支點等）：

**通用步驟：**

```bash
# 1. 檢查系統架構
uname -m
# x86_64 = Intel/AMD 64位
# aarch64 = ARM 64位（鯤鵬、飛騰）
# mips64 = 龍芯
# sw_64 = 申威

# 2. 下載對應架構的版本

# 3. 使用 jpackage 版本（推薦）
tar -xzf JPEG2PDF-OFD-NoSpring.tar.gz
cd JPEG2PDF-OFD-NoSpring
chmod +x JPEG2PDF-OFD-NoSpring
./JPEG2PDF-OFD-NoSpring config-multipage-false.json

# 或使用 JAR 版本（需要 Java 17+）
java -Xmx2G -jar jpeg2pdf-ofd-nospring.jar config-multipage-false.json
```

**國產 CPU 架構支持：**

| CPU 架構 | 支持狀態 | 備註 |
|---------|---------|------|
| **x86_64** | ✅ 完全支持 | Intel/AMD 處理器 |
| **aarch64** | ✅ 完全支持 | 鯤鵬、飛騰處理器 |
| **mips64** | ⚠️ 需測試 | 龍芯處理器 |
| **sw_64** | ⚠️ 需測試 | 申威處理器 |

**注意：**
- 國產 CPU 架構建議優先使用 JAR 版本
- 需要對應架構的 JDK 17+
- jpackage 版本可能需要重新構建

---

### Docker 支持（可選）

**構建 Docker 映像：**

```dockerfile
FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/jpeg2pdf-ofd-nospring-3.0.0-jar-with-dependencies.jar /app/
COPY config-multipage-false.json /app/

ENTRYPOINT ["java", "-Xmx2G", "-jar", "jpeg2pdf-ofd-nospring-3.0.0-jar-with-dependencies.jar"]
```

**使用：**

```bash
# 構建映像
docker build -t jpeg2pdf-ofd .

# 運行
docker run --rm \
  -v /path/to/input:/input \
  -v /path/to/output:/output \
  jpeg2pdf-ofd \
  -i /input \
  -o /output \
  -f all
```

---

### 性能優化建議

**內存設置：**

```bash
# 小圖片（< 2MP）
java -Xmx1G -jar jpeg2pdf-ofd-nospring.jar config.json

# 中等圖片（2-5MP）
java -Xmx2G -jar jpeg2pdf-ofd-nospring.jar config.json

# 大圖片（> 5MP）
java -Xmx4G -jar jpeg2pdf-ofd-nospring.jar config.json

# 批量處理
java -Xmx4G -jar jpeg2pdf-ofd-nospring.jar config.json
```

**多核優化：**

OCR 引擎會自動使用多核 CPU。確保：
- 系統有足夠的 CPU 核心
- 內存足夠（建議每核 512MB - 1GB）

---

## 🔧 如何構建

### 系統需求

```
- JDK 17+
- Maven 3.6+
```

---

### 1️⃣ 構建 JAR 版本

```powershell
# 克隆倉庫
git clone https://github.com/brianshih04/jpeg2pdf-ofd-nospring.git
cd jpeg2pdf-ofd-nospring

# 構建
mvn clean package

# 輸出
# target/jpeg2pdf-ofd-nospring-3.0.0-jar-with-dependencies.jar (52 MB)
```

**使用：**

```powershell
java -Xmx2G -jar target/jpeg2pdf-ofd-nospring-3.0.0-jar-with-dependencies.jar config.json
```

---

### 2️⃣ 構建 jpackage 版本（無需 Java）

**前置需求：**
- JDK 17+ (包含 jpackage)
- Maven 3.6+

**構建步驟：**

```powershell
# 運行構建腳本
.\build-jpackage.ps1

# 輸出
# dist-jpackage\JPEG2PDF-OFD-NoSpring\ (181 MB)
```

**使用：**

```powershell
cd dist-jpackage\JPEG2PDF-OFD-NoSpring
.\JPEG2PDF-OFD-NoSpring.exe config.json
```

**文件結構：**

```
dist-jpackage\JPEG2PDF-OFD-NoSpring\
├── JPEG2PDF-OFD-NoSpring.exe  (主執行檔)
├── app\                        (應用程序)
├── runtime\                    (JRE runtime)
└── config.json                 (配置文件)
```

---

## 📝 配置文件

### 單頁模式（每個圖片一個 PDF/OFD）

```json
{
  "input": {
    "folder": "C:/OCR/Watch",
    "pattern": "*.jpg"
  },
  "output": {
    "folder": "C:/OCR/Output",
    "format": "all",
    "multiPage": false
  },
  "ocr": {
    "language": "chinese_cht"
  }
}
```

### 多頁模式（所有圖片合併成一個 PDF/OFD）

```json
{
  "input": {
    "folder": "C:/OCR/Watch",
    "pattern": "*.jpg"
  },
  "output": {
    "folder": "C:/OCR/Output",
    "format": "all",
    "multiPage": true
  },
  "ocr": {
    "language": "chinese_cht"
  }
}
```

---

## 🎯 輸出模式說明

### **單頁模式** (`multiPage: false`, 默認)

```
特點：
  - 每個圖片生成一個獨立的 PDF/OFD
  - 適合獨立處理文件
  
輸出：
  image1_20260323_130000.pdf
  image1_20260323_130000.txt
  image1_20260323_130000.ofd
  
  image2_20260323_130001.pdf
  image2_20260323_130001.txt
  image2_20260323_130001.ofd
```

### **多頁模式** (`multiPage: true`)

```
特點：
  - 所有圖片合併成一個 PDF/OFD
  - 適合掃描文檔、批量報告
  
輸出：
  multipage_20260323_130000.pdf  (包含所有頁面)
  multipage_20260323_130000.txt  (包含所有頁面文字)
  multipage_20260323_130000.ofd  (包含所有頁面)
```

---

## 📋 配置參數

### **input 配置**

```json
{
  "input": {
    "file": "C:/OCR/test.jpg",      // 單個文件
    "folder": "C:/OCR/Watch",       // 資料夾
    "pattern": "*.jpg"              // 通配符（*.jpg, *.png, *.*）
  }
}
```

### **output 配置**

```json
{
  "output": {
    "folder": "C:/OCR/Output",      // 輸出目錄
    "format": "all",                // pdf, ofd, txt, all
    "multiPage": false              // true=多頁, false=單頁
  }
}
```

### **ocr 配置**

```json
{
  "ocr": {
    "language": "chinese_cht"       // OCR 語言
  }
}
```

**支持語言：**

```
chinese_cht - 繁體中文 (默認)
ch          - 簡體中文
en          - 英文
japan       - 日文
korean      - 韓文
(80+ 種語言)
```

---

## 🧪 測試結果

**測試圖片：** 856x875 pixels

**測試輸出：**

```
✅ OCR: 101 個文字方塊
✅ PDF: 428.2 KB
✅ TXT: 1.24 KB
✅ OFD: 427.92 KB
✅ 處理時間: ~2 秒
```

---

## 📦 項目結構

```
jpeg2pdf-ofd-nospring/
├── src/main/java/com/ocr/nospring/
│   ├── Main.java              # 主程序
│   ├── Config.java            # 配置類
│   ├── OcrService.java        # OCR 服務
│   ├── PdfService.java        # PDF 服務（含多頁）
│   ├── OfdService.java        # OFD 服務（含多頁）
│   └── TextService.java       # TXT 服務（含多頁）
├── dist/                       # JAR 輸出
├── dist-jpackage/              # jpackage 輸出
├── build.ps1                   # JAR 構建腳本
├── build-jpackage.ps1          # jpackage 構建腳本
├── config-single.json          # 單頁模式配置
└── config-multipage.json       # 多頁模式配置
```

---

## 🔨 技術棧

| 組件 | 版本 | 用途 |
|------|------|------|
| **Java** | 17+ | 運行環境 |
| **PDFBox** | 2.0.29 | PDF 生成 |
| **RapidOCR** | 0.0.7 | OCR 引擎 |
| **ofdrw** | 2.3.8 | OFD 生成 |
| **Jackson** | 2.15.3 | JSON 解析 |

---

## 🎯 使用場景

### **單頁模式適合：**
- ✅ 獨立處理文件
- ✅ 批量處理圖片
- ✅ 靈活的輸出管理

### **多頁模式適合：**
- ✅ 掃描文檔（多頁掃描）
- ✅ 批量報告生成
- ✅ 文檔歸檔

---

## ❓ 常見問題

### Q: 哪個版本最推薦？

**A:** 
- **無 Java 環境**: jpackage 版本（181 MB）⭐⭐⭐⭐⭐
- **有 Java 環境**: JAR 版本（52 MB）⭐⭐⭐⭐

### Q: 單頁和多頁模式有什麼區別？

**A:**
- **單頁模式**：每個圖片生成一個獨立的 PDF/OFD 文件
- **多頁模式**：所有圖片合併成一個 PDF/OFD 文件（類似掃描儀）

### Q: 如何支持更多語言？

**A:** 修改 `config.json` 中的 `ocr.language` 參數。支持 80+ 種語言。

### Q: 輸出的 PDF 可以搜索嗎？

**A:** 是的！這是本項目的核心功能。OCR 識別的文字會作為不可見文字層添加到 PDF 中，支持全文搜索。

---

## 🤝 貢獻

歡迎提交 Issue 和 Pull Request！

---

## 📄 授權

MIT License

---

## 🔗 相關連結

- **GitHub**: https://github.com/brianshih04/jpeg2pdf-ofd-nospring
- **原項目**: https://github.com/brianshih04/jpeg2pdf_ofd_cmd
- **PDFBox**: https://pdfbox.apache.org/
- **RapidOCR**: https://github.com/RapidAI/RapidOCR

---

**🎉 感謝使用 JPEG2PDF-OFD！** ✨
