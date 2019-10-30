package com.sjm.util;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.sjm.bean.DeviceDetail;

public class QrCodeUtil {

    private static final String PATH = "/home/sonkabin/下载/";
    private static final String SUFFIX = ".png";

    public static void createQrCode(DeviceDetail deviceDetail) {
        HashMap<EncodeHintType, Object> hints = new HashMap<>();
        hints.put(EncodeHintType.CHARACTER_SET, "utf-8");
        hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);// 纠错等级L,M,Q,H
        hints.put(EncodeHintType.MARGIN, 2); // 边距
        int width = 300;
        int hight = 300;
        String format = "png";
        String content = deviceDetail.toString();

        String filename = deviceDetail.getDeviceName() + "," + deviceDetail.getId();
        Path file = Paths.get(PATH + filename + SUFFIX);
        try {
            BitMatrix bitMatrix = new MultiFormatWriter().encode(content, BarcodeFormat.QR_CODE, width, hight, hints);
            MatrixToImageWriter.writeToPath(bitMatrix, format, file);
        } catch (WriterException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
