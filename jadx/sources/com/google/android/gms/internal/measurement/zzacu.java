package com.google.android.gms.internal.measurement;

import defpackage.n91;
import defpackage.r81;
import defpackage.zy0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class zzacu extends zzacv {
    public final InputStream d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f30373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f30374f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f30375h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f30376i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f30377j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f30378k = Integer.MAX_VALUE;

    public /* synthetic */ zzacu(InputStream inputStream, int i2) {
        this.d = inputStream;
        this.f30373e = new byte[i2 < 8 ? 8 : i2];
        this.f30374f = 0;
        this.f30375h = 0;
        this.f30377j = 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int A() {
        return G();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int B() {
        return G();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int C() {
        return P();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long D() {
        return Q();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int E() {
        return zzacv.j(G());
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long F() {
        return zzacv.k(H());
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int G() {
        int i2;
        int i3 = this.f30375h;
        int i4 = this.f30374f;
        if (i4 != i3) {
            int i5 = i3 + 1;
            byte[] bArr = this.f30373e;
            byte b2 = bArr[i3];
            if (b2 >= 0) {
                this.f30375h = i5;
                return b2;
            }
            if (i4 - i5 >= 9) {
                int i6 = i3 + 2;
                int i7 = (bArr[i5] << 7) ^ b2;
                if (i7 < 0) {
                    i2 = i7 ^ (-128);
                } else {
                    int i8 = i3 + 3;
                    int i9 = (bArr[i6] << 14) ^ i7;
                    if (i9 >= 0) {
                        i2 = i9 ^ 16256;
                    } else {
                        int i10 = i3 + 4;
                        int i11 = i9 ^ (bArr[i8] << 21);
                        if (i11 < 0) {
                            i2 = (-2080896) ^ i11;
                        } else {
                            i8 = i3 + 5;
                            byte b3 = bArr[i10];
                            int i12 = (i11 ^ (b3 << 28)) ^ 266354560;
                            if (b3 < 0) {
                                i10 = i3 + 6;
                                if (bArr[i8] < 0) {
                                    i8 = i3 + 7;
                                    if (bArr[i10] < 0) {
                                        i10 = i3 + 8;
                                        if (bArr[i8] < 0) {
                                            i8 = i3 + 9;
                                            if (bArr[i10] < 0) {
                                                int i13 = i3 + 10;
                                                if (bArr[i8] >= 0) {
                                                    i6 = i13;
                                                    i2 = i12;
                                                }
                                            }
                                        }
                                    }
                                }
                                i2 = i12;
                            }
                            i2 = i12;
                        }
                        i6 = i10;
                    }
                    i6 = i8;
                }
                this.f30375h = i6;
                return i2;
            }
        }
        return (int) O();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long H() {
        long j2;
        long j3;
        long j4;
        int i2 = this.f30375h;
        int i3 = this.f30374f;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.f30373e;
            byte b2 = bArr[i2];
            if (b2 >= 0) {
                this.f30375h = i4;
                return b2;
            }
            if (i3 - i4 >= 9) {
                int i5 = i2 + 2;
                int i6 = (bArr[i4] << 7) ^ b2;
                if (i6 < 0) {
                    j2 = i6 ^ (-128);
                } else {
                    int i7 = i2 + 3;
                    int i8 = (bArr[i5] << 14) ^ i6;
                    if (i8 >= 0) {
                        j2 = i8 ^ 16256;
                    } else {
                        int i9 = i2 + 4;
                        int i10 = i8 ^ (bArr[i7] << 21);
                        if (i10 < 0) {
                            long j5 = (-2080896) ^ i10;
                            i5 = i9;
                            j2 = j5;
                        } else {
                            i7 = i2 + 5;
                            long j6 = ((long) i10) ^ (((long) bArr[i9]) << 28);
                            if (j6 >= 0) {
                                j3 = 266354560;
                            } else {
                                int i11 = i2 + 6;
                                long j7 = j6 ^ (((long) bArr[i7]) << 35);
                                if (j7 < 0) {
                                    j4 = -34093383808L;
                                } else {
                                    i7 = i2 + 7;
                                    j6 = j7 ^ (((long) bArr[i11]) << 42);
                                    if (j6 >= 0) {
                                        j3 = 4363953127296L;
                                    } else {
                                        i11 = i2 + 8;
                                        j7 = j6 ^ (((long) bArr[i7]) << 49);
                                        if (j7 < 0) {
                                            j4 = -558586000294016L;
                                        } else {
                                            i7 = i2 + 9;
                                            j6 = j7 ^ (((long) bArr[i11]) << 56);
                                            if (j6 >= 0) {
                                                j3 = 71499008037633920L;
                                            } else {
                                                int i12 = i2 + 10;
                                                long j8 = j6 ^ (((long) bArr[i7]) << 63);
                                                if (j8 >= 0) {
                                                    j2 = j8 ^ (-9151873028817141888L);
                                                    i5 = i12;
                                                }
                                            }
                                        }
                                    }
                                }
                                j2 = j7 ^ j4;
                                i5 = i11;
                            }
                            j2 = j6 ^ j3;
                        }
                    }
                    i5 = i7;
                }
                this.f30375h = i5;
                return j2;
            }
        }
        return O();
    }

    public final void I() {
        int i2 = this.f30374f + this.g;
        this.f30374f = i2;
        int i3 = this.f30377j + i2;
        int i4 = this.f30378k;
        if (i3 <= i4) {
            this.g = 0;
            return;
        }
        int i5 = i3 - i4;
        this.g = i5;
        this.f30374f = i2 - i5;
    }

    public final void J(int i2) throws zzaeh {
        if (K(i2)) {
            return;
        }
        if (i2 > (Integer.MAX_VALUE - this.f30377j) - this.f30375h) {
            n91.c("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
        } else {
            n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public final boolean K(int i2) throws IOException {
        InputStream inputStream = this.d;
        int i3 = this.f30375h;
        int i4 = i3 + i2;
        int i5 = this.f30374f;
        if (i4 <= i5) {
            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 66);
            sb.append("refillBuffer() called when ");
            sb.append(i2);
            sb.append(" bytes were already available in buffer");
            throw new IllegalStateException(sb.toString());
        }
        int i6 = this.f30377j;
        if (i2 <= (Integer.MAX_VALUE - i6) - i3 && i6 + i3 + i2 <= this.f30378k) {
            byte[] bArr = this.f30373e;
            if (i3 > 0) {
                if (i5 > i3) {
                    System.arraycopy(bArr, i3, bArr, 0, i5 - i3);
                }
                i6 = this.f30377j + i3;
                this.f30377j = i6;
                i5 = this.f30374f - i3;
                this.f30374f = i5;
                this.f30375h = 0;
            }
            try {
                int i7 = inputStream.read(bArr, i5, Math.min(bArr.length - i5, (Integer.MAX_VALUE - i6) - i5));
                if (i7 == 0 || i7 < -1 || i7 > bArr.length) {
                    String strValueOf = String.valueOf(inputStream.getClass());
                    StringBuilder sb2 = new StringBuilder(String.valueOf(i7).length() + strValueOf.length() + 39 + 41);
                    sb2.append(strValueOf);
                    sb2.append("#read(byte[]) returned invalid result: ");
                    sb2.append(i7);
                    sb2.append("\nThe InputStream implementation is buggy.");
                    throw new IllegalStateException(sb2.toString());
                }
                if (i7 > 0) {
                    this.f30374f += i7;
                    I();
                    if (this.f30374f >= i2 || K(i2)) {
                        return true;
                    }
                }
            } catch (zzaeh e2) {
                e2.f30416b = true;
                throw e2;
            }
        }
        return false;
    }

    public final byte[] L(int i2) throws IOException {
        byte[] bArrM = M(i2);
        if (bArrM != null) {
            return bArrM;
        }
        int i3 = this.f30375h;
        int i4 = this.f30374f;
        int i5 = i4 - i3;
        this.f30377j += i4;
        this.f30375h = 0;
        this.f30374f = 0;
        ArrayList<byte[]> arrayListN = N(i2 - i5);
        byte[] bArr = new byte[i2];
        System.arraycopy(this.f30373e, i3, bArr, 0, i5);
        for (byte[] bArr2 : arrayListN) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i5, length);
            i5 += length;
        }
        return bArr;
    }

    public final byte[] M(int i2) throws IOException {
        if (i2 == 0) {
            return zzaed.f30413a;
        }
        int i3 = this.f30377j;
        int i4 = this.f30375h;
        int i5 = i3 + i4 + i2;
        if ((-2147483647) + i5 > 0) {
            n91.c("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
            return null;
        }
        int i6 = this.f30378k;
        if (i5 > i6) {
            g((i6 - i3) - i4);
            n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return null;
        }
        int i7 = this.f30374f - i4;
        int i8 = i2 - i7;
        InputStream inputStream = this.d;
        if (i8 >= 4096) {
            try {
                if (i8 > inputStream.available()) {
                    return null;
                }
            } catch (zzaeh e2) {
                e2.f30416b = true;
                throw e2;
            }
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.f30373e, this.f30375h, bArr, 0, i7);
        this.f30377j += this.f30374f;
        this.f30375h = 0;
        this.f30374f = 0;
        while (i7 < i2) {
            try {
                int i9 = inputStream.read(bArr, i7, i2 - i7);
                if (i9 == -1) {
                    n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                    return null;
                }
                this.f30377j += i9;
                i7 += i9;
            } catch (zzaeh e3) {
                e3.f30416b = true;
                throw e3;
            }
        }
        return bArr;
    }

    public final ArrayList N(int i2) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i2 > 0) {
            int iMin = Math.min(i2, 4096);
            byte[] bArr = new byte[iMin];
            int i3 = 0;
            while (i3 < iMin) {
                try {
                    int i4 = this.d.read(bArr, i3, iMin - i3);
                    if (i4 == -1) {
                        n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                        return null;
                    }
                    this.f30377j += i4;
                    i3 += i4;
                } catch (zzaeh e2) {
                    e2.f30416b = true;
                    throw e2;
                }
            }
            i2 -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    public final long O() throws zzaeh {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            if (this.f30375h == this.f30374f) {
                J(1);
            }
            int i3 = this.f30375h;
            this.f30375h = i3 + 1;
            byte b2 = this.f30373e[i3];
            j2 |= ((long) (b2 & 127)) << i2;
            if ((b2 & 128) == 0) {
                return j2;
            }
        }
        n91.c("CodedInputStream encountered a malformed varint.");
        return 0L;
    }

    public final int P() throws zzaeh {
        int i2 = this.f30375h;
        if (this.f30374f - i2 < 4) {
            J(4);
            i2 = this.f30375h;
        }
        this.f30375h = i2 + 4;
        byte[] bArr = this.f30373e;
        int i3 = bArr[i2] & 255;
        int i4 = bArr[i2 + 1] & 255;
        int i5 = bArr[i2 + 2] & 255;
        return ((bArr[i2 + 3] & 255) << 24) | (i4 << 8) | i3 | (i5 << 16);
    }

    public final long Q() throws zzaeh {
        int i2 = this.f30375h;
        if (this.f30374f - i2 < 8) {
            J(8);
            i2 = this.f30375h;
        }
        this.f30375h = i2 + 8;
        byte[] bArr = this.f30373e;
        long j2 = bArr[i2];
        long j3 = (((long) bArr[i2 + 1]) & 255) << 8;
        long j4 = bArr[i2 + 2];
        long j5 = bArr[i2 + 3];
        long j6 = bArr[i2 + 4];
        return ((((long) bArr[i2 + 7]) & 255) << 56) | j3 | (j2 & 255) | ((j4 & 255) << 16) | ((j5 & 255) << 24) | ((j6 & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int a(int i2) throws zzaeh {
        if (i2 < 0) {
            n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        int i3 = this.f30377j + this.f30375h + i2;
        if (i3 < 0) {
            n91.c("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
            return 0;
        }
        int i4 = this.f30378k;
        if (i3 > i4) {
            n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        this.f30378k = i3;
        I();
        return i4;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final void b(int i2) {
        this.f30378k = i2;
        I();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int c() {
        int i2 = this.f30378k;
        if (i2 == Integer.MAX_VALUE) {
            return -1;
        }
        return i2 - (this.f30377j + this.f30375h);
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final boolean d() {
        return this.f30375h == this.f30374f && !K(1);
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int e() {
        return this.f30377j + this.f30375h;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int f(int i2, int i3, byte[] bArr) throws IOException {
        if ((bArr.length - i2) - i3 < 0 || (i2 | i3) < 0) {
            zy0.b();
            return 0;
        }
        if (i3 == 0) {
            return 0;
        }
        int i4 = this.f30374f;
        int i5 = this.f30375h;
        int i6 = i4 - i5;
        if (i6 > 0) {
            int iMin = Math.min(i3, i6);
            System.arraycopy(this.f30373e, this.f30375h, bArr, i2, iMin);
            this.f30375h += iMin;
            return iMin;
        }
        int iMin2 = Math.min(i3, (this.f30378k - this.f30377j) - i5);
        if (iMin2 <= 0) {
            return -1;
        }
        try {
            int i7 = this.d.read(bArr, i2, iMin2);
            if (i7 != -1) {
                this.f30377j += i7;
            }
            return i7;
        } catch (zzaeh e2) {
            e2.f30416b = true;
            throw e2;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final void g(int i2) throws zzaeh {
        InputStream inputStream = this.d;
        int i3 = this.f30374f;
        int i4 = this.f30375h;
        int i5 = i3 - i4;
        if (i2 <= i5 && i2 >= 0) {
            this.f30375h = i4 + i2;
            return;
        }
        if (i2 < 0) {
            n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return;
        }
        int i6 = this.f30377j;
        int i7 = i6 + i4;
        int i8 = this.f30378k;
        if (i7 + i2 > i8) {
            g((i8 - i6) - i4);
            n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return;
        }
        this.f30377j = i7;
        this.f30374f = 0;
        this.f30375h = 0;
        while (i5 < i2) {
            long j2 = i2 - i5;
            try {
                try {
                    long jSkip = inputStream.skip(j2);
                    if (jSkip < 0 || jSkip > j2) {
                        String strValueOf = String.valueOf(inputStream.getClass());
                        StringBuilder sb = new StringBuilder(strValueOf.length() + 31 + String.valueOf(jSkip).length() + 41);
                        sb.append(strValueOf);
                        sb.append("#skip returned invalid result: ");
                        sb.append(jSkip);
                        sb.append("\nThe InputStream implementation is buggy.");
                        throw new IllegalStateException(sb.toString());
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i5 += (int) jSkip;
                    }
                } catch (zzaeh e2) {
                    e2.f30416b = true;
                    throw e2;
                }
            } catch (Throwable th) {
                this.f30377j += i5;
                I();
                throw th;
            }
        }
        this.f30377j += i5;
        I();
        if (i5 >= i2) {
            return;
        }
        int i9 = this.f30374f;
        int i10 = i9 - this.f30375h;
        this.f30375h = i9;
        J(1);
        while (true) {
            int i11 = i2 - i10;
            int i12 = this.f30374f;
            if (i11 <= i12) {
                this.f30375h = i11;
                return;
            } else {
                i10 += i12;
                this.f30375h = i12;
                J(1);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int l() throws zzaeh {
        if (d()) {
            this.f30376i = 0;
            return 0;
        }
        int iG = G();
        this.f30376i = iG;
        if ((iG >>> 3) != 0) {
            return iG;
        }
        n91.c("Protocol message contained an invalid tag (zero).");
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final void m(int i2) throws zzaeh {
        if (this.f30376i == i2) {
            return;
        }
        n91.c("Protocol message end-group tag did not match expected tag.");
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final boolean n(int i2) throws zzaeh {
        int i3 = i2 & 7;
        if (i3 != 0) {
            if (i3 == 1) {
                g(8);
                return true;
            }
            if (i3 == 2) {
                g(G());
                return true;
            }
            if (i3 == 3) {
                i();
                m(((i2 >>> 3) << 3) | 4);
                return true;
            }
            if (i3 == 4) {
                if (this.f30380b == 0) {
                    m(0);
                }
                return false;
            }
            if (i3 == 5) {
                g(4);
                return true;
            }
            r81.k();
            return false;
        }
        int i4 = this.f30374f - this.f30375h;
        byte[] bArr = this.f30373e;
        if (i4 >= 10) {
            for (int i5 = 0; i5 < 10; i5++) {
                int i6 = this.f30375h;
                this.f30375h = i6 + 1;
                if (bArr[i6] < 0) {
                }
            }
            n91.c("CodedInputStream encountered a malformed varint.");
            return false;
        }
        for (int i7 = 0; i7 < 10; i7++) {
            if (this.f30375h == this.f30374f) {
                J(1);
            }
            int i8 = this.f30375h;
            this.f30375h = i8 + 1;
            if (bArr[i8] < 0) {
            }
        }
        n91.c("CodedInputStream encountered a malformed varint.");
        return false;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final double o() {
        return Double.longBitsToDouble(Q());
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final float p() {
        return Float.intBitsToFloat(P());
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long q() {
        return H();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long r() {
        return H();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int s() {
        return G();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long t() {
        return Q();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int u() {
        return P();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final boolean v() {
        return H() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final String w() throws zzaeh {
        int iG = G();
        byte[] bArr = this.f30373e;
        if (iG > 0) {
            int i2 = this.f30374f;
            int i3 = this.f30375h;
            if (iG <= i2 - i3) {
                String str = new String(bArr, i3, iG, StandardCharsets.UTF_8);
                this.f30375h += iG;
                return str;
            }
        }
        if (iG == 0) {
            return "";
        }
        if (iG < 0) {
            n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return null;
        }
        if (iG > this.f30374f) {
            return new String(L(iG), StandardCharsets.UTF_8);
        }
        J(iG);
        String str2 = new String(bArr, this.f30375h, iG, StandardCharsets.UTF_8);
        this.f30375h += iG;
        return str2;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final String x() throws IOException {
        int iG = G();
        int i2 = this.f30375h;
        int i3 = this.f30374f;
        int i4 = i3 - i2;
        byte[] bArrL = this.f30373e;
        if (iG <= i4 && iG > 0) {
            this.f30375h = i2 + iG;
        } else {
            if (iG == 0) {
                return "";
            }
            if (iG < 0) {
                n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                return null;
            }
            i2 = 0;
            if (iG <= i3) {
                J(iG);
                this.f30375h = iG;
            } else {
                bArrL = L(iG);
            }
        }
        return zzagl.d(i2, iG, bArrL);
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final zzacr y() throws IOException {
        int iG = G();
        int i2 = this.f30374f;
        int i3 = this.f30375h;
        int i4 = i2 - i3;
        byte[] bArr = this.f30373e;
        if (iG <= i4 && iG > 0) {
            zzacr zzacrVarP = zzacr.p(i3, iG, bArr);
            this.f30375h += iG;
            return zzacrVarP;
        }
        if (iG == 0) {
            return zzacr.f30367c;
        }
        if (iG < 0) {
            n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return null;
        }
        byte[] bArrM = M(iG);
        if (bArrM != null) {
            return zzacr.p(0, bArrM.length, bArrM);
        }
        int i5 = this.f30375h;
        int i6 = this.f30374f;
        int i7 = i6 - i5;
        this.f30377j += i6;
        this.f30375h = 0;
        this.f30374f = 0;
        ArrayList<byte[]> arrayListN = N(iG - i7);
        byte[] bArr2 = new byte[iG];
        System.arraycopy(bArr, i5, bArr2, 0, i7);
        for (byte[] bArr3 : arrayListN) {
            int length = bArr3.length;
            System.arraycopy(bArr3, 0, bArr2, i7, length);
            i7 += length;
        }
        try {
            zzacr zzacrVar = zzacr.f30367c;
            return iG == 0 ? zzacr.f30367c : new zzacq(bArr2);
        } catch (zzaeh e2) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final byte[] z() throws zzaeh {
        int iG = G();
        int i2 = this.f30374f;
        int i3 = this.f30375h;
        if (iG <= i2 - i3 && iG > 0) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(this.f30373e, i3, i3 + iG);
            this.f30375h += iG;
            return bArrCopyOfRange;
        }
        if (iG >= 0) {
            return L(iG);
        }
        n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        return null;
    }
}
