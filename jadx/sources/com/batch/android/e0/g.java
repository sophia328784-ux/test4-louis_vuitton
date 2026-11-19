package com.batch.android.e0;

import android.content.Context;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f23247a = 6;

    public static boolean a(int[] iArr) {
        if (iArr.length < 6) {
            return false;
        }
        try {
            return a(iArr, "GIF87a".getBytes("US-ASCII")) || a(iArr, "GIF89a".getBytes("US-ASCII"));
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }

    private static boolean a(int[] iArr, byte[] bArr) {
        if (iArr.length < bArr.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if (bArr[i2] != iArr[i2]) {
                return false;
            }
        }
        return true;
    }

    public static c a(Context context, byte[] bArr, boolean z) {
        c cVar = new c(context, new h(new a(), ByteBuffer.wrap(bArr)));
        if (z) {
            cVar.start();
        }
        return cVar;
    }
}
