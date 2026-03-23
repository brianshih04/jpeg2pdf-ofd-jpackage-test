# JPEG2PDF-OFD (No Spring Boot Edition)

## 特點

- ✅ **無 Spring Boot** - 純 Java SE 實現
- ✅ **更小** - 預計 20-30 MB (vs 83 MB)
- ✅ **更快** - <1 秒啟動 (vs 1.5 秒)
- ✅ **更輕** - ~50 MB 內存 (vs 150 MB)
- ✅ **完整功能** - OCR + PDF 生成

---

## 對比

| 版本 | 大小 | 啟動 | 內存 | Spring Boot |
|------|------|------|------|-------------|
| **No Spring** | **~30 MB** | **<1s** | **~50 MB** | **❌ 無** |
| Spring Boot | 83 MB | ~1.5s | ~150 MB | ✅ 有 |

---

## 構建

```bash
mvn clean package
```

---

## 使用

```bash
java -jar target/jpeg2pdf-ofd-nospring-3.0.0-jar-with-dependencies.jar config.json
```

---

## 配置

編輯 `config.json`:

```json
{
  "input": {
    "folder": "C:/OCR/Watch",
    "pattern": "*.jpg"
  },
  "output": {
    "folder": "C:/OCR/Output",
    "format": "pdf"
  },
  "ocr": {
    "language": "chinese_cht"
  }
}
```

---

## 支持

- **格式**: PDF, TXT
- **語言**: 80+ 種語言
- **系統**: JDK 17+

---

## 版本

- **Version**: 3.0.0
- **Framework**: None (Pure Java SE)
- **Dependencies**: PDFBox, RapidOCR, Jackson
