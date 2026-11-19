package com.lightup.sdk.device.utils.communication;

import defpackage.zy0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Formatter;

/* JADX INFO: loaded from: classes2.dex */
public class ByteUtils {

    public static class ByteBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte[] f36034a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f36035b = 0;

        public ByteBuilder(int i2) {
            this.f36034a = new byte[i2];
        }

        public final void a(byte b2) {
            int i2 = this.f36035b;
            byte[] bArr = this.f36034a;
            if (i2 >= bArr.length) {
                zy0.b();
            } else {
                bArr[i2] = b2;
                this.f36035b = i2 + 1;
            }
        }

        public final void b(byte[] bArr) {
            int i2 = this.f36035b;
            int length = bArr.length + i2;
            byte[] bArr2 = this.f36034a;
            if (length > bArr2.length) {
                zy0.b();
            } else {
                System.arraycopy(bArr, 0, bArr2, i2, bArr.length);
                this.f36035b += bArr.length;
            }
        }

        public final void c(int i2, int i3) {
            int i4 = this.f36035b;
            int i5 = i4 + i3;
            byte[] bArr = this.f36034a;
            if (i5 > bArr.length) {
                zy0.b();
                return;
            }
            byte[] bArrE = ByteUtils.e(i2, i3);
            System.arraycopy(bArrE, 0, bArr, i4, bArrE.length);
            this.f36035b += i3;
        }
    }

    public static int a(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        System.arraycopy(bArr, 0, bArr2, 2, 2);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.put(bArr2, 0, 4);
        byteBufferAllocate.flip();
        return byteBufferAllocate.getInt();
    }

    public static long b(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        System.arraycopy(bArr, 0, bArr2, 4, 4);
        return ByteBuffer.wrap(bArr2).getLong();
    }

    public static byte[] c(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i2 = 0; i2 < length; i2 += 2) {
            bArr[i2 / 2] = (byte) (Character.digit(str.charAt(i2 + 1), 16) + (Character.digit(str.charAt(i2), 16) << 4));
        }
        return bArr;
    }

    public static byte[] d(int i2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(i2);
        return byteBufferAllocate.array();
    }

    public static byte[] e(int i2, int i3) {
        byte[] bArrD = d(i2);
        if (i3 == bArrD.length) {
            return bArrD;
        }
        byte[] bArr = new byte[i3];
        if (i3 > bArrD.length) {
            System.arraycopy(bArrD, 0, bArr, i3 - bArrD.length, bArrD.length);
            return bArr;
        }
        System.arraycopy(bArrD, bArrD.length - i3, bArr, 0, i3);
        return bArr;
    }

    public static byte[] f(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (-1 == i2) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
    }

    public static String g(int i2, byte[] bArr, boolean z) {
        Formatter formatter = new Formatter();
        for (int i3 = 0; i3 < i2; i3++) {
            if (!z) {
                formatter.format("%02x", Byte.valueOf(bArr[i3]));
            } else if (i3 == 0) {
                formatter.format("%02X", Byte.valueOf(bArr[i3]));
            } else {
                formatter.format(" %02X", Byte.valueOf(bArr[i3]));
            }
        }
        String string = formatter.toString();
        formatter.close();
        return string;
    }
}
