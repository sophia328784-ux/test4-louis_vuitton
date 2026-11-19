package lv.nfc.reader.utils;

import android.util.Base64;
import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes4.dex */
public class LVByteManipulation {
    public static final char[] HEX_ARRAY = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', ColorParser.ColorInstruction, DeleteParser.DeleteInstruction, 'E', 'F'};

    public static byte[] base64ToBytes(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    public static String bytesToBase64(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 0);
    }

    public static String bytesToHex(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte b2 = bArr[i2];
            int i3 = i2 * 2;
            char[] cArr2 = HEX_ARRAY;
            cArr[i3] = cArr2[(b2 & 255) >>> 4];
            cArr[i3 + 1] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public static String bytesToUtf8(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new String(bArr, StandardCharsets.UTF_8);
    }

    public static byte[] hexToBytes(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i2 = 0; i2 < length; i2 += 2) {
            bArr[i2 / 2] = (byte) (Character.digit(str.charAt(i2 + 1), 16) + (Character.digit(str.charAt(i2), 16) << 4));
        }
        return bArr;
    }

    public static byte[] reverseArray(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int length = bArr.length >> 1;
        for (int i2 = 0; i2 < length; i2++) {
            byte b2 = bArr[i2];
            byte b3 = bArr[(bArr.length - i2) - 1];
            int i3 = b2 ^ b3;
            if (i3 != 0) {
                byte b4 = (byte) i3;
                b3 = (byte) (b3 ^ b4);
                b2 = (byte) (b4 ^ b3);
            }
            bArr2[i2] = b2;
            bArr2[(bArr.length - i2) - 1] = b3;
        }
        if (1 == bArr.length % 2) {
            bArr2[length] = bArr[length];
        }
        return bArr2;
    }
}
