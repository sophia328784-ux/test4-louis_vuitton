package com.linkplay.core.utils;

import android.text.TextUtils;
import com.android.wiimu.utils.ByteIntConverter;
import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;

/* JADX INFO: loaded from: classes.dex */
public class LPBytesUtils {
    public static String bytesToHexString(byte[] bArr) {
        return ByteIntConverter.bytesToHexString(bArr);
    }

    public static String hex2Str(String str) {
        return ByteIntConverter.convertHex2GBK(str);
    }

    public static String hexStr2Str(String str) {
        char[] charArray = str.toCharArray();
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) (("0123456789ABCDEF".indexOf(charArray[i3 + 1]) + ("0123456789ABCDEF".indexOf(charArray[i3]) * 16)) & 255);
        }
        return new String(bArr);
    }

    public static String str2HexStr(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', ColorParser.ColorInstruction, DeleteParser.DeleteInstruction, 'E', 'F'};
        StringBuilder sb = new StringBuilder();
        for (byte b2 : str.getBytes()) {
            sb.append(cArr[(b2 & 240) >> 4]);
            sb.append(cArr[b2 & 15]);
        }
        return sb.toString().trim();
    }
}
