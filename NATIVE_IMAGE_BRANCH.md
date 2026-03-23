# GraalVM Native Image 分支

## 🎯 目標

創建真正的**單一 EXE 檔案**，無需 Java、無需資料夾。

---

## 📊 預期效果

| 版本 | 大小 | 需要 Java | 單文件 | 啟動時間 |
|------|------|----------|--------|---------|
| **Native Image** | **~30-50 MB** | **❌ 否** | **✅ 是** | **<1 秒** |
| jpackage | 181 MB | ❌ 否 | ❌ 資料夾 | ~1 秒 |
| JAR | 52 MB | ✅ 是 | ✅ 是 | ~1 秒 |

---

## 🔧 配置文件

### 1. reflect-config.json

```json
[
  {
    "name": "com.fasterxml.jackson.databind.ObjectMapper",
    "allDeclaredConstructors": true,
    "allPublicConstructors": true,
    "allDeclaredMethods": true,
    "allPublicMethods": true
  }
]
```

### 2. resource-config.json

```json
{
  "resources": {
    "includes": [
      {"pattern": ".*\\.json$"},
      {"pattern": "models/.*"},
      {"pattern": ".*\\.onnx$"}
    ]
  }
}
```

### 3. jni-config.json

```json
[
  {
    "name": "com.benjaminwan.ocrlibrary.OcrEngine",
    "allDeclaredConstructors": true,
    "allPublicConstructors": true
  }
]
```

---

## 🚀 構建步驟

### 1. 安裝 GraalVM

```powershell
# 下載 GraalVM CE 17
# https://github.com/graalvm/graalvm-ce-builds/releases

# 安裝 Native Image
gu install native-image
```

### 2. 編譯 Native Image

```powershell
# 切換到 native-image 分支
git checkout native-image

# 運行構建腳本
.\build-native-image.ps1
```

---

## ⚠️ 已知挑戰

### 1. RapidOCR JNI

```
⚠️ RapidOCR 使用 JNI 調用原生庫
⚠️ Native Image 需要特殊配置
⚠️ 可能需要在運行時提取 .dll 文件
```

### 2. 資源文件

```
⚠️ OCR 模型文件（~100 MB）需要包含在 EXE 中
⚠️ 或在運行時從外部加載
```

### 3. 反射

```
⚠️ Jackson 大量使用反射
⚠️ 需要完整的反射配置
```

---

## 💡 替代方案

如果 Native Image 編譯失敗，可以使用：

### 1. jpackage 版本（已測試成功）

```
位置：dist-jpackage\JPEG2PDF-OFD-NoSpring\
大小：181 MB
需求：無需 Java
狀態：✅ 已測試成功
```

### 2. JAR 版本

```
位置：dist\jpeg2pdf-ofd-nospring.jar
大小：52 MB
需求：Java 17+
狀態：✅ 已測試成功
```

---

## 📝 當前狀態

```
✅ 分支已創建：native-image
⏳ 配置文件已準備
⏳ 待構建測試
```

---

## 🎯 下一步

1. 確認 GraalVM 已安裝
2. 運行 `.\build-native-image.ps1`
3. 如果成功 → 測試 EXE
4. 如果失敗 → 使用 jpackage 版本

---

**分支：** native-image
**狀態：** 配置完成，待構建
**預計時間：** 5-10 分鐘
