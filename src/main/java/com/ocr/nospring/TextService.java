package com.ocr.nospring;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.List;

/**
 * 文本服務 - 無 Spring Boot
 */
public class TextService {
    
    public void generateTxt(List<OcrService.TextBlock> textBlocks, File outputFile) throws Exception {
        
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(outputFile))) {
            for (OcrService.TextBlock block : textBlocks) {
                String text = block.text;
                if (text != null && !text.trim().isEmpty()) {
                    writer.write(text);
                    writer.newLine();
                }
            }
        }
    }
}
