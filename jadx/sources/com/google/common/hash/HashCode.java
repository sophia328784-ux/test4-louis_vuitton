package com.google.common.hash;

import com.google.common.base.Strings;
import defpackage.md;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class HashCode {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final char[] f33740b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final class BytesHashCode extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f33741c;

        public BytesHashCode(byte[] bArr) {
            bArr.getClass();
            this.f33741c = bArr;
        }

        @Override // com.google.common.hash.HashCode
        public final byte[] a() {
            return (byte[]) this.f33741c.clone();
        }
    }

    public abstract byte[] a();

    public final boolean equals(Object obj) {
        boolean z;
        if (obj instanceof HashCode) {
            byte[] bArr = ((BytesHashCode) this).f33741c;
            int length = bArr.length * 8;
            byte[] bArr2 = ((BytesHashCode) ((HashCode) obj)).f33741c;
            if (length == bArr2.length * 8) {
                if (bArr.length != bArr2.length) {
                    z = false;
                } else {
                    z = true;
                    for (int i2 = 0; i2 < bArr.length; i2++) {
                        z &= bArr[i2] == bArr2[i2];
                    }
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        byte[] bArr = ((BytesHashCode) this).f33741c;
        if (bArr.length * 8 < 32) {
            int i2 = bArr[0] & 255;
            for (int i3 = 1; i3 < bArr.length; i3++) {
                i2 |= (bArr[i3] & 255) << (i3 * 8);
            }
            return i2;
        }
        boolean z = bArr.length >= 4;
        int length = bArr.length;
        if (z) {
            return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
        }
        md.k(Strings.b("HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", Integer.valueOf(length)));
        return 0;
    }

    public final String toString() {
        byte[] bArr = ((BytesHashCode) this).f33741c;
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            char[] cArr = f33740b;
            sb.append(cArr[(b2 >> 4) & 15]);
            sb.append(cArr[b2 & 15]);
        }
        return sb.toString();
    }
}
