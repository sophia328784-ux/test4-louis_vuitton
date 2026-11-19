package org.bouncycastle.mime.encoding;

import defpackage.d20;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class Base64InputStream extends InputStream {
    private static final byte[] decodingTable = new byte[128];
    InputStream in;
    int[] outBuf = new int[3];
    int bufPtr = 3;

    static {
        for (int i2 = 65; i2 <= 90; i2++) {
            decodingTable[i2] = (byte) (i2 - 65);
        }
        for (int i3 = 97; i3 <= 122; i3++) {
            decodingTable[i3] = (byte) (i3 - 71);
        }
        for (int i4 = 48; i4 <= 57; i4++) {
            decodingTable[i4] = (byte) (i4 + 4);
        }
        byte[] bArr = decodingTable;
        bArr[43] = 62;
        bArr[47] = 63;
    }

    public Base64InputStream(InputStream inputStream) {
        this.in = inputStream;
    }

    private int decode(int i2, int i3, int i4, int i5, int[] iArr) throws EOFException {
        if (i5 < 0) {
            d20.g("unexpected end of file in armored stream.");
            return 0;
        }
        if (i4 == 61) {
            byte[] bArr = decodingTable;
            int i6 = bArr[i2] & 255;
            iArr[2] = (((bArr[i3] & 255) >> 4) | (i6 << 2)) & 255;
            return 2;
        }
        if (i5 == 61) {
            byte[] bArr2 = decodingTable;
            byte b2 = bArr2[i2];
            byte b3 = bArr2[i3];
            byte b4 = bArr2[i4];
            iArr[1] = ((b2 << 2) | (b3 >> 4)) & 255;
            iArr[2] = ((b4 >> 2) | (b3 << 4)) & 255;
            return 1;
        }
        byte[] bArr3 = decodingTable;
        byte b5 = bArr3[i2];
        byte b6 = bArr3[i3];
        byte b7 = bArr3[i4];
        byte b8 = bArr3[i5];
        iArr[0] = ((b5 << 2) | (b6 >> 4)) & 255;
        iArr[1] = ((b6 << 4) | (b7 >> 2)) & 255;
        iArr[2] = ((b7 << 6) | b8) & 255;
        return 0;
    }

    private int readIgnoreSpace() throws IOException {
        while (true) {
            int i2 = this.in.read();
            if (i2 != 9 && i2 != 32) {
                return i2;
            }
        }
    }

    private int readIgnoreSpaceFirst() throws IOException {
        while (true) {
            int i2 = this.in.read();
            if (i2 != 9 && i2 != 10 && i2 != 13 && i2 != 32) {
                return i2;
            }
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        Base64InputStream base64InputStream;
        if (this.bufPtr > 2) {
            int ignoreSpaceFirst = readIgnoreSpaceFirst();
            if (ignoreSpaceFirst < 0) {
                return -1;
            }
            base64InputStream = this;
            base64InputStream.bufPtr = base64InputStream.decode(ignoreSpaceFirst, readIgnoreSpace(), readIgnoreSpace(), readIgnoreSpace(), this.outBuf);
        } else {
            base64InputStream = this;
        }
        int[] iArr = base64InputStream.outBuf;
        int i2 = base64InputStream.bufPtr;
        base64InputStream.bufPtr = i2 + 1;
        return iArr[i2];
    }
}
