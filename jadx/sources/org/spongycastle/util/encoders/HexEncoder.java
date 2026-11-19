package org.spongycastle.util.encoders;

import defpackage.az;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class HexEncoder implements Encoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f78272a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f78273b;

    public HexEncoder() {
        byte[] bArr = new byte[128];
        this.f78273b = bArr;
        int i2 = 0;
        for (int i3 = 0; i3 < 128; i3++) {
            bArr[i3] = -1;
        }
        while (true) {
            byte[] bArr2 = this.f78272a;
            if (i2 >= bArr2.length) {
                bArr[65] = bArr[97];
                bArr[66] = bArr[98];
                bArr[67] = bArr[99];
                bArr[68] = bArr[100];
                bArr[69] = bArr[101];
                bArr[70] = bArr[102];
                return;
            }
            bArr[bArr2[i2]] = (byte) i2;
            i2++;
        }
    }

    public static boolean b(char c2) {
        return c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == ' ';
    }

    public final int a(String str, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        int length = str.length();
        while (length > 0 && b(str.charAt(length - 1))) {
            length--;
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            while (i2 < length && b(str.charAt(i2))) {
                i2++;
            }
            int i4 = i2 + 1;
            char cCharAt = str.charAt(i2);
            byte[] bArr = this.f78273b;
            byte b2 = bArr[cCharAt];
            while (i4 < length && b(str.charAt(i4))) {
                i4++;
            }
            int i5 = i4 + 1;
            byte b3 = bArr[str.charAt(i4)];
            if ((b2 | b3) < 0) {
                az.o("invalid characters encountered in Hex string");
                return 0;
            }
            byteArrayOutputStream.write((b2 << 4) | b3);
            i3++;
            i2 = i5;
        }
        return i3;
    }
}
