package androidx.camera.core.impl.utils;

import defpackage.a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
final class ExifAttribute {
    public static final Charset d = StandardCharsets.US_ASCII;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[] f2395e = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f2396f = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f2399c;

    public ExifAttribute(int i2, int i3, byte[] bArr) {
        this.f2397a = i2;
        this.f2398b = i3;
        this.f2399c = bArr;
    }

    public static ExifAttribute a(long j2, ByteOrder byteOrder) {
        return b(new long[]{j2}, byteOrder);
    }

    public static ExifAttribute b(long[] jArr, ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[f2396f[4] * jArr.length]);
        byteBufferWrap.order(byteOrder);
        for (long j2 : jArr) {
            byteBufferWrap.putInt((int) j2);
        }
        return new ExifAttribute(4, jArr.length, byteBufferWrap.array());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(f2395e[this.f2397a]);
        sb.append(", data length:");
        return a.i(this.f2399c.length, ")", sb);
    }
}
