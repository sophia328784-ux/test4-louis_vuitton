package com.appsflyer.internal;

import defpackage.md;
import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class AFk1vSDK extends FilterInputStream {
    private final int AFLoggerLogLevel;
    private final byte[] afDebugLog;
    private int afErrorLog;
    private final int afInfoLog;
    private int afWarnLog;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f22670e;
    private final byte[] force;
    private int getEntries;
    private int getLevel;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final byte[][] f22671i;
    private final int[] v;
    private final int[] w;
    private static final byte[] AFLogger = AFk1xSDK.registerClient;
    private static final int[] unregisterClient = AFk1xSDK.d;
    private static final int[] d = AFk1xSDK.unregisterClient;
    private static final int[] registerClient = AFk1xSDK.AFKeystoreWrapper;
    private static final int[] AFKeystoreWrapper = AFk1xSDK.AFLogger;

    private AFk1vSDK(InputStream inputStream, int i2, byte[] bArr, byte[][] bArr2, byte b2) {
        super(new BufferedInputStream(inputStream, 4096));
        this.w = new int[4];
        this.force = new byte[16];
        this.afDebugLog = new byte[16];
        this.afWarnLog = 1;
        this.afErrorLog = Integer.MAX_VALUE;
        this.getLevel = 16;
        this.getEntries = 16;
        this.f22670e = i2;
        this.v = AFk1xSDK.AFLogger(bArr, i2);
        byte[][] bArr3 = new byte[bArr2.length][];
        for (int i3 = 0; i3 < bArr2.length; i3++) {
            bArr3[i3] = new byte[bArr2[i3].length];
            int i4 = 0;
            while (true) {
                byte[] bArr4 = bArr2[i3];
                if (i4 < bArr4.length) {
                    bArr3[i3][bArr4[i4]] = (byte) i4;
                    i4++;
                }
            }
        }
        this.f22671i = bArr3;
        this.AFLoggerLogLevel = 100;
        this.afInfoLog = 100;
    }

    private void registerClient(byte[] bArr, byte[] bArr2) {
        int[] iArr = this.w;
        char c2 = 1;
        char c3 = 2;
        char c4 = '\b';
        char c5 = 3;
        int i2 = (bArr[0] << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        int[] iArr2 = this.v;
        iArr[0] = i2 ^ iArr2[0];
        char c6 = 5;
        char c7 = 6;
        iArr[1] = ((((bArr[4] << 24) | ((bArr[5] & 255) << 16)) | ((bArr[6] & 255) << 8)) | (bArr[7] & 255)) ^ iArr2[1];
        iArr[2] = ((bArr[11] & 255) | (((bArr[8] << 24) | ((bArr[9] & 255) << 16)) | ((bArr[10] & 255) << 8))) ^ iArr2[2];
        char c8 = 14;
        iArr[3] = (((((bArr[13] & 255) << 16) | (bArr[12] << 24)) | ((bArr[14] & 255) << 8)) | (bArr[15] & 255)) ^ iArr2[3];
        int i3 = 1;
        int i4 = 4;
        while (i3 < this.f22670e) {
            int[] iArr3 = unregisterClient;
            int[] iArr4 = this.w;
            char c9 = c2;
            byte[][] bArr3 = this.f22671i;
            byte[] bArr4 = bArr3[0];
            int i5 = iArr3[iArr4[bArr4[0]] >>> 24];
            int[] iArr5 = d;
            byte[] bArr5 = bArr3[c9];
            char c10 = c3;
            int i6 = i5 ^ iArr5[(iArr4[bArr5[0]] >>> 16) & 255];
            int[] iArr6 = registerClient;
            byte[] bArr6 = bArr3[c10];
            char c11 = c5;
            int i7 = i6 ^ iArr6[(iArr4[bArr6[0]] >>> 8) & 255];
            int[] iArr7 = AFKeystoreWrapper;
            byte[] bArr7 = bArr3[c11];
            char c12 = c4;
            int i8 = i7 ^ iArr7[iArr4[bArr7[0]] & 255];
            int[] iArr8 = this.v;
            int i9 = i8 ^ iArr8[i4];
            char c13 = c8;
            char c14 = c6;
            int i10 = (((iArr3[iArr4[bArr4[c9]] >>> 24] ^ iArr5[(iArr4[bArr5[c9]] >>> 16) & 255]) ^ iArr6[(iArr4[bArr6[c9]] >>> 8) & 255]) ^ iArr7[iArr4[bArr7[c9]] & 255]) ^ iArr8[i4 + 1];
            int i11 = (((iArr3[iArr4[bArr4[c10]] >>> 24] ^ iArr5[(iArr4[bArr5[c10]] >>> 16) & 255]) ^ iArr6[(iArr4[bArr6[c10]] >>> 8) & 255]) ^ iArr7[iArr4[bArr7[c10]] & 255]) ^ iArr8[i4 + 2];
            int i12 = (((iArr3[iArr4[bArr4[c11]] >>> 24] ^ iArr5[(iArr4[bArr5[c11]] >>> 16) & 255]) ^ iArr6[(iArr4[bArr6[c11]] >>> 8) & 255]) ^ iArr7[iArr4[bArr7[c11]] & 255]) ^ iArr8[i4 + 3];
            iArr4[0] = i9;
            iArr4[c9] = i10;
            iArr4[c10] = i11;
            iArr4[c11] = i12;
            i3++;
            i4 += 4;
            c2 = c9;
            c3 = c10;
            c5 = c11;
            c4 = c12;
            c6 = c14;
            c8 = c13;
            c7 = c7;
        }
        char c15 = c2;
        char c16 = c3;
        char c17 = c5;
        char c18 = c4;
        int[] iArr9 = this.v;
        int i13 = iArr9[i4];
        byte[] bArr8 = AFLogger;
        int[] iArr10 = this.w;
        byte[][] bArr9 = this.f22671i;
        byte[] bArr10 = bArr9[0];
        bArr2[0] = (byte) (bArr8[iArr10[bArr10[0]] >>> 24] ^ (i13 >>> 24));
        byte[] bArr11 = bArr9[c15];
        bArr2[c15] = (byte) (bArr8[(iArr10[bArr11[0]] >>> 16) & 255] ^ (i13 >>> 16));
        byte[] bArr12 = bArr9[c16];
        bArr2[c16] = (byte) (bArr8[(iArr10[bArr12[0]] >>> 8) & 255] ^ (i13 >>> 8));
        byte[] bArr13 = bArr9[c17];
        bArr2[c17] = (byte) (i13 ^ bArr8[iArr10[bArr13[0]] & 255]);
        int i14 = iArr9[i4 + 1];
        bArr2[4] = (byte) (bArr8[iArr10[bArr10[c15]] >>> 24] ^ (i14 >>> 24));
        bArr2[c6] = (byte) (bArr8[(iArr10[bArr11[c15]] >>> 16) & 255] ^ (i14 >>> 16));
        bArr2[c7] = (byte) (bArr8[(iArr10[bArr12[c15]] >>> 8) & 255] ^ (i14 >>> 8));
        bArr2[7] = (byte) (i14 ^ bArr8[iArr10[bArr13[c15]] & 255]);
        int i15 = iArr9[i4 + 2];
        bArr2[c18] = (byte) (bArr8[iArr10[bArr10[c16]] >>> 24] ^ (i15 >>> 24));
        bArr2[9] = (byte) (bArr8[(iArr10[bArr11[c16]] >>> 16) & 255] ^ (i15 >>> 16));
        bArr2[10] = (byte) (bArr8[(iArr10[bArr12[c16]] >>> 8) & 255] ^ (i15 >>> 8));
        bArr2[11] = (byte) (i15 ^ bArr8[iArr10[bArr13[c16]] & 255]);
        int i16 = iArr9[i4 + 3];
        bArr2[12] = (byte) (bArr8[iArr10[bArr10[c17]] >>> 24] ^ (i16 >>> 24));
        bArr2[13] = (byte) (bArr8[(iArr10[bArr11[c17]] >>> 16) & 255] ^ (i16 >>> 16));
        bArr2[c8] = (byte) (bArr8[(iArr10[bArr12[c17]] >>> 8) & 255] ^ (i16 >>> 8));
        bArr2[15] = (byte) (bArr8[iArr10[bArr13[c17]] & 255] ^ i16);
    }

    private int unregisterClient() throws IOException {
        if (this.afErrorLog == Integer.MAX_VALUE) {
            this.afErrorLog = ((FilterInputStream) this).in.read();
        }
        if (this.getLevel == 16) {
            byte[] bArr = this.force;
            int i2 = this.afErrorLog;
            bArr[0] = (byte) i2;
            if (i2 < 0) {
                md.k("unexpected block size");
                return 0;
            }
            int i3 = 1;
            do {
                int i4 = ((FilterInputStream) this).in.read(this.force, i3, 16 - i3);
                if (i4 <= 0) {
                    break;
                }
                i3 += i4;
            } while (i3 < 16);
            if (i3 < 16) {
                md.k("unexpected block size");
                return 0;
            }
            int i5 = this.AFLoggerLogLevel;
            if (i5 == this.afInfoLog) {
                registerClient(this.force, this.afDebugLog);
            } else {
                int i6 = this.afWarnLog;
                byte[] bArr2 = this.force;
                if (i6 <= i5) {
                    registerClient(bArr2, this.afDebugLog);
                } else {
                    System.arraycopy(bArr2, 0, this.afDebugLog, 0, bArr2.length);
                }
                int i7 = this.afWarnLog;
                if (i7 < this.afInfoLog) {
                    this.afWarnLog = i7 + 1;
                } else {
                    this.afWarnLog = 1;
                }
            }
            int i8 = ((FilterInputStream) this).in.read();
            this.afErrorLog = i8;
            this.getLevel = 0;
            this.getEntries = i8 < 0 ? 16 - (this.afDebugLog[15] & 255) : 16;
        }
        return this.getEntries;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        unregisterClient();
        return this.getEntries - this.getLevel;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i2) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = i2 + i3;
        for (int i5 = i2; i5 < i4; i5++) {
            unregisterClient();
            int i6 = this.getLevel;
            if (i6 >= this.getEntries) {
                if (i5 == i2) {
                    return -1;
                }
                return i3 - (i4 - i5);
            }
            byte[] bArr2 = this.afDebugLog;
            this.getLevel = i6 + 1;
            bArr[i5] = bArr2[i6];
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() throws IOException {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j2) throws IOException {
        long j3 = 0;
        while (j3 < j2 && read() != -1) {
            j3++;
        }
        return j3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        unregisterClient();
        int i2 = this.getLevel;
        if (i2 >= this.getEntries) {
            return -1;
        }
        byte[] bArr = this.afDebugLog;
        this.getLevel = i2 + 1;
        return bArr[i2] & 255;
    }

    public AFk1vSDK(InputStream inputStream, int i2, byte[] bArr, byte[][] bArr2) {
        this(inputStream, i2, bArr, bArr2, (byte) 0);
    }
}
