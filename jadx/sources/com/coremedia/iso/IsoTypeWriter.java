package com.coremedia.iso;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class IsoTypeWriter {
    public static void a(ByteBuffer byteBuffer, double d) {
        int i2 = (int) (d * 1.073741824E9d);
        byteBuffer.put((byte) (((-16777216) & i2) >> 24));
        byteBuffer.put((byte) ((16711680 & i2) >> 16));
        byteBuffer.put((byte) ((65280 & i2) >> 8));
        byteBuffer.put((byte) (i2 & 255));
    }

    public static void b(ByteBuffer byteBuffer, double d) {
        int i2 = (int) (d * 65536.0d);
        byteBuffer.put((byte) (((-16777216) & i2) >> 24));
        byteBuffer.put((byte) ((16711680 & i2) >> 16));
        byteBuffer.put((byte) ((65280 & i2) >> 8));
        byteBuffer.put((byte) (i2 & 255));
    }

    public static void c(ByteBuffer byteBuffer, double d) {
        short s = (short) (d * 256.0d);
        byteBuffer.put((byte) ((65280 & s) >> 8));
        byteBuffer.put((byte) (s & 255));
    }

    public static void d(int i2, ByteBuffer byteBuffer) {
        f((65535 & i2) >> 8, byteBuffer);
        byteBuffer.put((byte) (i2 & 255));
    }

    public static void e(int i2, ByteBuffer byteBuffer) {
        d((16777215 & i2) >> 8, byteBuffer);
        byteBuffer.put((byte) (i2 & 255));
    }

    public static void f(int i2, ByteBuffer byteBuffer) {
        byteBuffer.put((byte) (i2 & 255));
    }
}
