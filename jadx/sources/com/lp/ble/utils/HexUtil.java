package com.lp.ble.utils;

import android.text.TextUtils;
import com.linkplay.medialib.ContentTree;
import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import defpackage.tr;
import java.util.regex.Pattern;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class HexUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f36373a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String a(byte[] bArr) {
        String strH = "";
        if (bArr == null) {
            return "";
        }
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            strH = hexString.length() == 1 ? tr.h(strH, ContentTree.ROOT_ID, hexString) : strH.concat(hexString);
        }
        return strH.toUpperCase();
    }

    public static String b(byte[] bArr) {
        char[] cArr = new char[bArr.length << 1];
        int i2 = 0;
        for (byte b2 : bArr) {
            int i3 = i2 + 1;
            char[] cArr2 = f36373a;
            cArr[i2] = cArr2[(b2 & 240) >>> 4];
            i2 += 2;
            cArr[i3] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.replaceAll("[a-f0-9A-F]", "").length() != 0) {
            return str;
        }
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
            if (str2.length() == 0) {
                return str;
            }
            if (e(str2)) {
                str2 = new String(bArr, "GBK");
                if (str2.length() == 0) {
                    return str;
                }
            }
            return str2;
        } catch (Exception e3) {
            e3.printStackTrace();
            return str;
        }
    }

    public static void d(int i2) {
        String.format("0x%4x", Integer.valueOf(i2)).replace(" ", ContentTree.ROOT_ID);
    }

    public static boolean e(String str) {
        Character.UnicodeBlock unicodeBlockOf;
        char[] charArray = Pattern.compile("\\s*|\t*|\r*|\n*").matcher(str).replaceAll("").replaceAll("\\p{P}", "").trim().toCharArray();
        float length = charArray.length;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        for (char c2 : charArray) {
            if (!Character.isLetterOrDigit(c2) && (unicodeBlockOf = Character.UnicodeBlock.of(c2)) != Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS && unicodeBlockOf != Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS && unicodeBlockOf != Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A && unicodeBlockOf != Character.UnicodeBlock.GENERAL_PUNCTUATION && unicodeBlockOf != Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION && unicodeBlockOf != Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS) {
                f2 += 1.0f;
                System.out.print(c2);
            }
        }
        return ((double) (f2 / length)) > 0.4d;
    }

    public static String f(String str) {
        if (str == null || str.length() == 0) {
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
