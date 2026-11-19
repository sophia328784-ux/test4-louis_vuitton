package com.google.android.gms.internal.fido;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzft {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final char[] f29875b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public abstract byte[] a();

    public final boolean equals(Object obj) {
        boolean z;
        if (obj instanceof zzft) {
            byte[] bArr = ((zzfs) this).f29874c;
            int length = bArr.length * 8;
            byte[] bArr2 = ((zzfs) ((zzft) obj)).f29874c;
            if (length == bArr2.length * 8) {
                if (bArr.length == bArr2.length) {
                    z = true;
                    for (int i2 = 0; i2 < bArr.length; i2++) {
                        z &= bArr[i2] == bArr2[i2];
                    }
                } else {
                    z = false;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        byte[] bArr = ((zzfs) this).f29874c;
        if (bArr.length * 8 < 32) {
            int i2 = bArr[0] & 255;
            for (int i3 = 1; i3 < bArr.length; i3++) {
                i2 |= (bArr[i3] & 255) << (i3 * 8);
            }
            return i2;
        }
        int length = bArr.length;
        if (length < 4) {
            md.k(zzbo.a("HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", Integer.valueOf(length)));
            return 0;
        }
        int i4 = bArr[0] & 255;
        int i5 = bArr[1] & 255;
        int i6 = bArr[2] & 255;
        return ((bArr[3] & 255) << 24) | i4 | (i5 << 8) | (i6 << 16);
    }

    public final String toString() {
        byte[] bArr = ((zzfs) this).f29874c;
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b2 : bArr) {
            char[] cArr = f29875b;
            sb.append(cArr[(b2 >> 4) & 15]);
            sb.append(cArr[b2 & 15]);
        }
        return sb.toString();
    }
}
