package com.coremedia.iso;

import com.batch.android.q0.b;
import defpackage.v7;
import defpackage.x1;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes2.dex */
public final class IsoTypeReader {
    public static int a(byte b2) {
        return b2 < 0 ? b2 + HPKE.mode_base : b2;
    }

    public static String b(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        try {
            return new String(bArr, "ISO-8859-1");
        } catch (UnsupportedEncodingException e2) {
            x1.m(e2);
            return null;
        }
    }

    public static double c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((double) (((((bArr[0] << 24) & b.v) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & 65280)) | (bArr[3] & 255))) / 1.073741824E9d;
    }

    public static double d(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((double) (((((bArr[0] << 24) & b.v) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & 65280)) | (bArr[3] & 255))) / 65536.0d;
    }

    public static float e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        return ((short) (((short) ((bArr[0] << 8) & 65280)) | (bArr[1] & 255))) / 256.0f;
    }

    public static int f(ByteBuffer byteBuffer) {
        return a(byteBuffer.get()) + (a(byteBuffer.get()) << 8);
    }

    public static int g(ByteBuffer byteBuffer) {
        return a(byteBuffer.get()) + (f(byteBuffer) << 8);
    }

    public static long h(ByteBuffer byteBuffer) {
        long j2 = byteBuffer.getInt();
        return j2 < 0 ? j2 + 4294967296L : j2;
    }

    public static long i(ByteBuffer byteBuffer) {
        long jH = h(byteBuffer) << 32;
        if (jH >= 0) {
            return h(byteBuffer) + jH;
        }
        v7.h("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
        return 0L;
    }

    public static int j(ByteBuffer byteBuffer) {
        return a(byteBuffer.get());
    }
}
