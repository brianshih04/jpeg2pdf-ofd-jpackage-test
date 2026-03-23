package com.ocr.nospring;

/**
 * 配置類 - 無 Spring Boot
 */
public class Config {
    
    private String fontPath;
    
    public Config() {
        this.fontPath = getDefaultFontPath();
    }
    
    private String getDefaultFontPath() {
        String os = System.getProperty("os.name").toLowerCase();
        
        if (os.contains("win")) {
            String[] windowsFonts = {
                "C:/Windows/Fonts/simhei.ttf",      // 黑體 (TTF, 優先)
                "C:/Windows/Fonts/arial.ttf",       // Arial (TTF)
                "C:/Windows/Fonts/ariblk.ttf",      // Arial Black (TTF)
                "C:/Windows/Fonts/arialuni.ttf",    // Arial Unicode MS (TTF)
                "C:/Windows/Fonts/times.ttf",       // Times New Roman (TTF)
                "C:/Windows/Fonts/calibri.ttf",     // Calibri (TTF)
                "C:/Windows/Fonts/meiryo.ttc",      // Meiryo (日文字體，支援中文)
                "C:/Windows/Fonts/msyh.ttc",        // 微軟雅黑 (TTC)
                "C:/Windows/Fonts/msjh.ttc",        // 正黑體 (TTC)
                "C:/Windows/Fonts/simsun.ttc"       // 宋體 (TTC)
            };
            
            for (String font : windowsFonts) {
                if (new java.io.File(font).exists()) {
                    return font;
                }
            }
        }
        
        return null;
    }
    
    public String getFontPath() {
        return fontPath;
    }
}
