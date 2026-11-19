package com.coremedia.iso;

import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;

/* JADX INFO: loaded from: classes2.dex */
public class Hex {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f25314a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', ColorParser.ColorInstruction, DeleteParser.DeleteInstruction, 'E', 'F'};

    public static String a(int i2, byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[(length << 1) + (i2 > 0 ? length / i2 : 0)];
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (i2 > 0 && i4 % i2 == 0 && i3 > 0) {
                cArr[i3] = '-';
                i3++;
            }
            int i5 = i3 + 1;
            byte b2 = bArr[i4];
            char[] cArr2 = f25314a;
            cArr[i3] = cArr2[(b2 & 240) >>> 4];
            i3 += 2;
            cArr[i5] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }
}
