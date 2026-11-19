package com.perfectcorp.thirdparty.com.google.common.primitives;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Longs {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final byte[] f42382a;

        static {
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i2 = 0; i2 <= 9; i2++) {
                bArr[i2 + 48] = (byte) i2;
            }
            for (int i3 = 0; i3 <= 26; i3++) {
                byte b2 = (byte) (i3 + 10);
                bArr[i3 + 65] = b2;
                bArr[i3 + 97] = b2;
            }
            f42382a = bArr;
        }
    }

    public static Long a(String str) {
        byte b2;
        byte b3;
        str.getClass();
        if (str.isEmpty()) {
            return null;
        }
        int i2 = str.charAt(0) == '-' ? 1 : 0;
        if (i2 == str.length()) {
            return null;
        }
        int i3 = i2 + 1;
        char cCharAt = str.charAt(i2);
        if (cCharAt < 128) {
            b2 = a.f42382a[cCharAt];
        } else {
            byte[] bArr = a.f42382a;
            b2 = -1;
        }
        if (b2 < 0 || b2 >= 10) {
            return null;
        }
        long j2 = -b2;
        while (i3 < str.length()) {
            int i4 = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 < 128) {
                b3 = a.f42382a[cCharAt2];
            } else {
                byte[] bArr2 = a.f42382a;
                b3 = -1;
            }
            if (b3 < 0 || b3 >= 10 || j2 < -922337203685477580L) {
                return null;
            }
            long j3 = j2 * 10;
            long j4 = b3;
            if (j3 < Long.MIN_VALUE + j4) {
                return null;
            }
            j2 = j3 - j4;
            i3 = i4;
        }
        if (i2 != 0) {
            return Long.valueOf(j2);
        }
        if (j2 == Long.MIN_VALUE) {
            return null;
        }
        return Long.valueOf(-j2);
    }
}
