package com.perfectcorp.thirdparty.com.google.common.hash;

import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import defpackage.md;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class HashCode {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final char[] f42356b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final class a extends HashCode implements Serializable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte[] f42357c;

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.HashCode
        public final int a() {
            return this.f42357c.length << 3;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.HashCode
        public final boolean b(HashCode hashCode) {
            byte[] bArr = this.f42357c;
            if (bArr.length != hashCode.e().length) {
                return false;
            }
            boolean z = true;
            for (int i2 = 0; i2 < bArr.length; i2++) {
                z &= bArr[i2] == hashCode.e()[i2];
            }
            return z;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.HashCode
        public final int c() {
            byte[] bArr = this.f42357c;
            boolean z = bArr.length >= 4;
            int length = bArr.length;
            if (z) {
                return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
            }
            md.k(Strings.a("HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", Integer.valueOf(length)));
            return 0;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.HashCode
        public final byte[] d() {
            return (byte[]) this.f42357c.clone();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.HashCode
        public final byte[] e() {
            return this.f42357c;
        }
    }

    public static final class b extends HashCode implements Serializable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f42358c;

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.HashCode
        public final int a() {
            return 32;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.HashCode
        public final boolean b(HashCode hashCode) {
            return this.f42358c == hashCode.c();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.HashCode
        public final int c() {
            return this.f42358c;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.HashCode
        public final byte[] d() {
            int i2 = this.f42358c;
            return new byte[]{(byte) i2, (byte) (i2 >> 8), (byte) (i2 >> 16), (byte) (i2 >> 24)};
        }
    }

    public abstract int a();

    public abstract boolean b(HashCode hashCode);

    public abstract int c();

    public abstract byte[] d();

    public byte[] e() {
        return d();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof HashCode)) {
            return false;
        }
        HashCode hashCode = (HashCode) obj;
        return a() == hashCode.a() && b(hashCode);
    }

    public final int hashCode() {
        if (a() >= 32) {
            return c();
        }
        byte[] bArrE = e();
        int i2 = bArrE[0] & 255;
        for (int i3 = 1; i3 < bArrE.length; i3++) {
            i2 |= (bArrE[i3] & 255) << (i3 << 3);
        }
        return i2;
    }

    public final String toString() {
        byte[] bArrE = e();
        StringBuilder sb = new StringBuilder(bArrE.length * 2);
        for (byte b2 : bArrE) {
            char[] cArr = f42356b;
            sb.append(cArr[(b2 >> 4) & 15]);
            sb.append(cArr[b2 & 15]);
        }
        return sb.toString();
    }
}
