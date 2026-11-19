package com.google.android.gms.common.util;

import android.util.Base64;

/* JADX INFO: loaded from: classes2.dex */
public final class Base64Utils {
    public static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 11);
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 11);
    }
}
