package com.appsflyer.internal;

import defpackage.md;
import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class AFk1ySDK extends FilterInputStream {
    private final int AFKeystoreWrapper;
    private final int AFLogger;
    private int afInfoLog;
    private final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f22672e;
    private long[] force;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private byte[] f22673i;
    private int registerClient;
    private long[] unregisterClient;
    private short v;
    private int w;

    private AFk1ySDK(InputStream inputStream, int i2, int i3, short s, int i4, int i5, byte b2) throws IOException {
        super(new BufferedInputStream(inputStream, 4096));
        this.registerClient = 1;
        this.f22672e = Integer.MAX_VALUE;
        int iMin = Math.min(Math.max((int) s, 4), 8);
        this.AFKeystoreWrapper = iMin;
        this.f22673i = new byte[iMin];
        this.unregisterClient = new long[4];
        this.force = new long[4];
        this.w = iMin;
        this.afInfoLog = iMin;
        this.unregisterClient = AFk1wSDK.AFKeystoreWrapper(i2 ^ i5, iMin ^ i5);
        this.force = AFk1wSDK.AFKeystoreWrapper(i3 ^ i5, i4 ^ i5);
        this.AFLogger = 100;
        this.d = 100;
    }

    private int AFKeystoreWrapper() throws IOException {
        if (this.f22672e == Integer.MAX_VALUE) {
            this.f22672e = ((FilterInputStream) this).in.read();
        }
        if (this.w == this.AFKeystoreWrapper) {
            byte[] bArr = this.f22673i;
            int i2 = this.f22672e;
            bArr[0] = (byte) i2;
            if (i2 < 0) {
                md.k("unexpected block size");
                return 0;
            }
            int i3 = 1;
            do {
                int i4 = ((FilterInputStream) this).in.read(this.f22673i, i3, this.AFKeystoreWrapper - i3);
                if (i4 <= 0) {
                    break;
                }
                i3 += i4;
            } while (i3 < this.AFKeystoreWrapper);
            if (i3 < this.AFKeystoreWrapper) {
                md.k("unexpected block size");
                return 0;
            }
            int i5 = this.AFLogger;
            if (i5 == this.d) {
                unregisterClient();
            } else {
                if (this.registerClient <= i5) {
                    unregisterClient();
                }
                int i6 = this.registerClient;
                if (i6 < this.d) {
                    this.registerClient = i6 + 1;
                } else {
                    this.registerClient = 1;
                }
            }
            int i7 = ((FilterInputStream) this).in.read();
            this.f22672e = i7;
            this.w = 0;
            int i8 = this.AFKeystoreWrapper;
            if (i7 < 0) {
                i8 -= this.f22673i[i8 - 1] & 255;
            }
            this.afInfoLog = i8;
        }
        return this.afInfoLog;
    }

    private void unregisterClient() {
        long[] jArr = this.unregisterClient;
        long[] jArr2 = this.force;
        short s = this.v;
        long j2 = jArr[s % 4] * 2147483085;
        long j3 = jArr2[(s + 2) % 4];
        int i2 = (s + 3) % 4;
        jArr2[i2] = ((jArr[i2] * 2147483085) + j3) / 2147483647L;
        jArr[i2] = (j2 + j3) % 2147483647L;
        for (int i3 = 0; i3 < this.AFKeystoreWrapper; i3++) {
            byte[] bArr = this.f22673i;
            bArr[i3] = (byte) (((long) bArr[i3]) ^ ((this.unregisterClient[this.v] >> (i3 << 3)) & 255));
        }
        this.v = (short) ((this.v + 1) % 4);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        AFKeystoreWrapper();
        return this.afInfoLog - this.w;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = i2 + i3;
        for (int i5 = i2; i5 < i4; i5++) {
            AFKeystoreWrapper();
            int i6 = this.w;
            if (i6 >= this.afInfoLog) {
                if (i5 == i2) {
                    return -1;
                }
                return i3 - (i4 - i5);
            }
            byte[] bArr2 = this.f22673i;
            this.w = i6 + 1;
            bArr[i5] = bArr2[i6];
        }
        return i3;
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
    public final int read() throws IOException {
        AFKeystoreWrapper();
        int i2 = this.w;
        if (i2 >= this.afInfoLog) {
            return -1;
        }
        byte[] bArr = this.f22673i;
        this.w = i2 + 1;
        return bArr[i2] & 255;
    }

    public AFk1ySDK(InputStream inputStream, int i2, int i3, short s, int i4, int i5) throws IOException {
        this(inputStream, i2, i3, s, i4, i5, (byte) 0);
    }
}
