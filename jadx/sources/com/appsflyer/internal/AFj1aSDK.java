package com.appsflyer.internal;

import defpackage.md;
import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final class AFj1aSDK extends FilterInputStream {
    private static final short registerClient = (short) (Math.pow(2.0d, 15.0d) * (Math.sqrt(5.0d) - 1.0d));
    private byte[] AFKeystoreWrapper;
    private byte[] AFLogger;
    private int AFLoggerLogLevel;
    private final int afDebugLog;
    private final int afErrorLog;
    private int afInfoLog;
    private int afWarnLog;
    private byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f22662e;
    private int force;
    private int getEntries;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f22663i;
    private int unregisterClient;
    private int v;
    private int w;

    private AFj1aSDK(InputStream inputStream, int[] iArr, int i2, byte[] bArr, int i3, int i4, byte b2) throws IOException {
        super(new BufferedInputStream(inputStream, 4096));
        this.force = Integer.MAX_VALUE;
        this.getEntries = 1;
        this.AFLogger = new byte[8];
        this.AFKeystoreWrapper = new byte[8];
        this.d = new byte[8];
        this.unregisterClient = 8;
        this.w = 8;
        this.v = Math.min(Math.max(i3, 5), 16);
        this.f22663i = i4;
        if (i4 == 3) {
            System.arraycopy(bArr, 0, this.AFKeystoreWrapper, 0, 8);
        }
        long j2 = (((long) iArr[1]) & BodyPartID.bodyIdMax) | ((((long) iArr[0]) & BodyPartID.bodyIdMax) << 32);
        if (i2 == 0) {
            this.f22662e = (int) j2;
            long j3 = j2 >> 3;
            short s = registerClient;
            this.AFLoggerLogLevel = (int) ((((long) s) * j3) >> 32);
            this.afInfoLog = (int) (j2 >> 32);
            this.afWarnLog = (int) (j3 + ((long) s));
        } else {
            int i5 = (int) j2;
            this.f22662e = i5;
            this.AFLoggerLogLevel = i5 * i2;
            this.afInfoLog = i2 ^ i5;
            this.afWarnLog = (int) (j2 >> 32);
        }
        this.afErrorLog = 100;
        this.afDebugLog = 100;
    }

    private int AFKeystoreWrapper() throws IOException {
        if (this.force == Integer.MAX_VALUE) {
            this.force = ((FilterInputStream) this).in.read();
        }
        if (this.unregisterClient == 8) {
            byte[] bArr = this.AFLogger;
            int i2 = this.force;
            bArr[0] = (byte) i2;
            if (i2 < 0) {
                md.k("unexpected block size");
                return 0;
            }
            int i3 = 1;
            do {
                int i4 = ((FilterInputStream) this).in.read(this.AFLogger, i3, 8 - i3);
                if (i4 <= 0) {
                    break;
                }
                i3 += i4;
            } while (i3 < 8);
            if (i3 < 8) {
                md.k("unexpected block size");
                return 0;
            }
            int i5 = this.afErrorLog;
            if (i5 == this.afDebugLog) {
                unregisterClient();
            } else {
                if (this.getEntries <= i5) {
                    unregisterClient();
                }
                int i6 = this.getEntries;
                if (i6 < this.afDebugLog) {
                    this.getEntries = i6 + 1;
                } else {
                    this.getEntries = 1;
                }
            }
            int i7 = ((FilterInputStream) this).in.read();
            this.force = i7;
            this.unregisterClient = 0;
            this.w = i7 < 0 ? 8 - (this.AFLogger[7] & 255) : 8;
        }
        return this.w;
    }

    private void unregisterClient() {
        if (this.f22663i == 3) {
            byte[] bArr = this.AFLogger;
            System.arraycopy(bArr, 0, this.d, 0, bArr.length);
        }
        byte[] bArr2 = this.AFLogger;
        boolean z = true;
        char c2 = 2;
        int i2 = ((bArr2[0] << 24) & com.batch.android.q0.b.v) + ((bArr2[1] << 16) & 16711680) + ((bArr2[2] << 8) & 65280) + (bArr2[3] & 255);
        int i3 = ((-16777216) & (bArr2[4] << 24)) + (16711680 & (bArr2[5] << 16)) + (65280 & (bArr2[6] << 8)) + (bArr2[7] & 255);
        int i4 = 0;
        while (true) {
            int i5 = this.v;
            if (i4 >= i5) {
                break;
            }
            short s = registerClient;
            i3 -= ((((i5 - i4) * s) + i2) ^ ((i2 << 4) + this.afInfoLog)) ^ ((i2 >>> 5) + this.afWarnLog);
            i2 -= (((i3 << 4) + this.f22662e) ^ (((i5 - i4) * s) + i3)) ^ ((i3 >>> 5) + this.AFLoggerLogLevel);
            i4++;
            c2 = c2;
            z = z;
        }
        byte[] bArr3 = this.AFLogger;
        bArr3[0] = (byte) (i2 >> 24);
        bArr3[z ? 1 : 0] = (byte) (i2 >> 16);
        bArr3[c2] = (byte) (i2 >> 8);
        bArr3[3] = (byte) i2;
        bArr3[4] = (byte) (i3 >> 24);
        bArr3[5] = (byte) (i3 >> 16);
        bArr3[6] = (byte) (i3 >> 8);
        bArr3[7] = (byte) i3;
        if (this.f22663i == 3) {
            for (int i6 = 0; i6 < 8; i6++) {
                byte[] bArr4 = this.AFLogger;
                bArr4[i6] = (byte) (bArr4[i6] ^ this.AFKeystoreWrapper[i6]);
            }
            byte[] bArr5 = this.d;
            System.arraycopy(bArr5, 0, this.AFKeystoreWrapper, 0, bArr5.length);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        AFKeystoreWrapper();
        return this.w - this.unregisterClient;
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
            int i6 = this.unregisterClient;
            if (i6 >= this.w) {
                if (i5 == i2) {
                    return -1;
                }
                return i3 - (i4 - i5);
            }
            byte[] bArr2 = this.AFLogger;
            this.unregisterClient = i6 + 1;
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
        int i2 = this.unregisterClient;
        if (i2 >= this.w) {
            return -1;
        }
        byte[] bArr = this.AFLogger;
        this.unregisterClient = i2 + 1;
        return bArr[i2] & 255;
    }

    public AFj1aSDK(InputStream inputStream, int[] iArr, int i2, byte[] bArr, int i3, int i4) throws IOException {
        this(inputStream, iArr, i2, bArr, i3, i4, (byte) 0);
    }
}
