package com.android.wiimu.utils;

import com.batch.android.q0.b;
import java.util.regex.Pattern;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ByteIntConverter {
    public static String bytesToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder("");
        if (bArr == null) {
            return null;
        }
        if (bArr.length <= 0) {
            return "";
        }
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    private static byte charToByte(char c2) {
        return (byte) "0123456789abcdef".indexOf(c2);
    }

    public static int convertByteArray2Int(byte[] bArr, int i2) {
        return (bArr[i2] & 255) + ((bArr[i2 + 1] << 8) & 65280) + ((bArr[i2 + 2] << 16) & 16711680) + ((bArr[i2 + 3] << 24) & b.v);
    }

    public static String convertHex2GBK(String str) {
        if (str.replaceAll("[a-f0-9A-F]", "").length() == 0) {
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 * 2;
                try {
                    bArr[i2] = (byte) (Integer.parseInt(str.substring(i3, i3 + 2), 16) & 255);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            try {
                String str2 = new String(bArr, "utf-8");
                if (str2.length() != 0) {
                    if (!isMessyCode(str2)) {
                        return str2;
                    }
                    String str3 = new String(bArr, "GBK");
                    if (str3.length() != 0) {
                        return str3;
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        return str;
    }

    public static void convertInt2ByteArray(byte[] bArr, int i2, int i3) {
        bArr[i2] = (byte) (i3 & 255);
        bArr[i2 + 1] = (byte) ((65280 & i3) >> 8);
        bArr[i2 + 2] = (byte) ((16711680 & i3) >> 16);
        bArr[i2 + 3] = (byte) ((i3 & b.v) >> 24);
    }

    public static byte[] hexStringToBytes(String str) {
        if (str == null || str.equals("")) {
            return null;
        }
        int length = str.length() / 2;
        char[] charArray = str.toCharArray();
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) (charToByte(charArray[i3 + 1]) | (charToByte(charArray[i3]) << 4));
        }
        return bArr;
    }

    public static long hexToLong(String str) {
        long j2;
        try {
            j2 = Long.parseLong(str.replaceAll("^0[x|X]", "").replaceAll("\"", ""), 16);
        } catch (Exception unused) {
            j2 = Long.parseLong("7ffffffe", 16);
        }
        return Long.parseLong("7FFFFFFF", 16) & j2;
    }

    public static boolean isChinese(char c2) {
        Character.UnicodeBlock unicodeBlockOf = Character.UnicodeBlock.of(c2);
        return unicodeBlockOf == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeBlockOf == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeBlockOf == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeBlockOf == Character.UnicodeBlock.GENERAL_PUNCTUATION || unicodeBlockOf == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || unicodeBlockOf == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS;
    }

    public static boolean isMessyCode(String str) {
        char[] charArray = Pattern.compile("\\s*|\t*|\r*|\n*").matcher(str).replaceAll("").replaceAll("\\p{P}", "").trim().toCharArray();
        float length = charArray.length;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        for (char c2 : charArray) {
            if (!Character.isLetterOrDigit(c2) && !isChinese(c2)) {
                f2 += 1.0f;
                System.out.print(c2);
            }
        }
        return ((double) (f2 / length)) > 0.4d;
    }

    public static boolean isNumDigits(String str) {
        return Pattern.compile("[0-9]*").matcher(str).matches();
    }
}
