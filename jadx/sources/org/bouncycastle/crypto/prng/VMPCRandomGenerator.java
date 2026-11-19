package org.bouncycastle.crypto.prng;

import com.batch.android.x0.h;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class VMPCRandomGenerator implements RandomGenerator {
    private byte n = 0;
    private byte[] P = {-69, 44, 98, 127, -75, -86, h.a.y, 13, -127, -2, -78, -126, h.a.p, h.a.d, -95, 8, 24, 113, 86, -24, 73, 2, 16, h.a.f24179i, h.a.I, 53, -91, -20, -128, 18, -72, 105, h.a.E, 47, 117, h.a.q, -94, 9, 54, 3, 97, 45, -3, h.a.K, h.a.H, 5, 67, h.a.f24175c, -83, h.a.m, -31, -81, 87, -101, 76, h.a.C, 81, -82, 80, -123, 60, 10, -28, -13, -100, 38, 35, 83, h.a.n, -125, -105, 70, -79, -103, 100, 49, 119, h.a.z, 29, h.a.A, 120, -67, 94, -80, -118, 34, 56, -8, 104, 43, 42, h.a.f24180j, h.a.x, -9, PSSSigner.TRAILER_IMPLICIT, 111, h.a.J, 4, -27, -107, 62, 37, -122, -90, 11, -113, -15, 36, 14, h.a.B, 64, -77, h.a.t, 126, 6, 21, -102, 77, 28, -93, h.a.F, 50, -110, 88, 17, 39, -12, 89, h.a.u, 78, 106, 23, 91, -84, -1, 7, h.a.f24176e, 101, 121, -4, h.a.l, h.a.r, 118, 66, 93, -25, 58, 52, 122, 48, 40, 15, 115, 1, -7, h.a.v, h.a.w, 25, -23, -111, -71, 90, -19, 65, 109, -76, h.a.f24178h, -98, -65, 99, -6, 31, 51, 96, 71, -119, -16, -106, 26, 95, -109, 61, 55, 75, h.a.D, -88, h.a.f24177f, 27, -10, 57, -117, -73, 12, 32, h.a.s, -120, 110, -74, 116, -114, -115, 22, 41, -14, -121, -11, -21, 112, -29, -5, 85, -97, h.a.f24181k, 68, 74, 69, 125, -30, 107, 92, 108, 102, -87, -116, -18, -124, 19, -89, 30, -99, h.a.G, 103, 72, -70, 46, -26, -92, -85, 124, -108, 0, 33, -17, -22, -66, h.a.o, 114, 79, 82, -104, 63, h.a.g, 20, 123, 59, 84};
    private byte s = -66;

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(byte[] bArr) {
        for (byte b2 : bArr) {
            byte[] bArr2 = this.P;
            byte b3 = this.s;
            byte b4 = this.n;
            byte b5 = bArr2[(b3 + bArr2[b4 & 255] + b2) & 255];
            this.s = b5;
            byte b6 = bArr2[b4 & 255];
            bArr2[b4 & 255] = bArr2[b5 & 255];
            bArr2[b5 & 255] = b6;
            this.n = (byte) ((b4 + 1) & 255);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr, int i2, int i3) {
        synchronized (this.P) {
            int i4 = i3 + i2;
            while (i2 != i4) {
                try {
                    byte[] bArr2 = this.P;
                    byte b2 = this.s;
                    byte b3 = this.n;
                    byte b4 = bArr2[(b2 + bArr2[b3 & 255]) & 255];
                    this.s = b4;
                    bArr[i2] = bArr2[(bArr2[bArr2[b4 & 255] & 255] + 1) & 255];
                    byte b5 = bArr2[b3 & 255];
                    bArr2[b3 & 255] = bArr2[b4 & 255];
                    bArr2[b4 & 255] = b5;
                    this.n = (byte) ((b3 + 1) & 255);
                    i2++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(long j2) {
        addSeedMaterial(Pack.longToBigEndian(j2));
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr) {
        nextBytes(bArr, 0, bArr.length);
    }
}
