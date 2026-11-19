package com.google.android.gms.internal.measurement;

import defpackage.n91;
import defpackage.r81;
import defpackage.zy0;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzacs extends zzacv {
    public final byte[] d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f30370f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f30371h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f30372i = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f30369e = 0;
    public int g = 0;

    public /* synthetic */ zzacs(byte[] bArr) {
        this.d = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int A() {
        return ((zzact) this).M();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int B() {
        return ((zzact) this).M();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int C() {
        return J();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long D() {
        return K();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int E() {
        return zzacv.j(((zzact) this).M());
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long F() {
        return zzacv.k(H());
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int G() {
        return ((zzact) this).M();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long H() {
        long j2;
        long j3;
        long j4;
        int i2 = this.g;
        int i3 = this.f30369e;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.d;
            byte b2 = bArr[i2];
            if (b2 >= 0) {
                this.g = i4;
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
                this.g = i5;
                return j2;
            }
        }
        return I();
    }

    public final long I() throws zzaeh {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            int i3 = this.g;
            if (i3 == this.f30369e) {
                n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return 0L;
            }
            this.g = i3 + 1;
            byte b2 = this.d[i3];
            j2 |= ((long) (b2 & 127)) << i2;
            if ((b2 & 128) == 0) {
                return j2;
            }
        }
        n91.c("CodedInputStream encountered a malformed varint.");
        return 0L;
    }

    public final int J() throws zzaeh {
        int i2 = this.g;
        if (this.f30369e - i2 < 4) {
            n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        this.g = i2 + 4;
        byte[] bArr = this.d;
        int i3 = bArr[i2] & 255;
        int i4 = bArr[i2 + 1] & 255;
        int i5 = bArr[i2 + 2] & 255;
        return ((bArr[i2 + 3] & 255) << 24) | (i4 << 8) | i3 | (i5 << 16);
    }

    public final long K() throws zzaeh {
        int i2 = this.g;
        if (this.f30369e - i2 < 8) {
            n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0L;
        }
        this.g = i2 + 8;
        byte[] bArr = this.d;
        long j2 = bArr[i2];
        long j3 = (((long) bArr[i2 + 1]) & 255) << 8;
        long j4 = bArr[i2 + 2];
        long j5 = bArr[i2 + 3];
        long j6 = bArr[i2 + 4];
        return ((((long) bArr[i2 + 7]) & 255) << 56) | j3 | (j2 & 255) | ((j4 & 255) << 16) | ((j5 & 255) << 24) | ((j6 & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    public final byte[] L(int i2) throws zzaeh {
        if (i2 > 0) {
            int i3 = this.f30369e;
            int i4 = this.g;
            if (i2 <= i3 - i4) {
                int i5 = i2 + i4;
                this.g = i5;
                return Arrays.copyOfRange(this.d, i4, i5);
            }
        }
        if (i2 > 0) {
            n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return null;
        }
        if (i2 == 0) {
            return zzaed.f30413a;
        }
        n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        return null;
    }

    public final int M() {
        int i2;
        int i3 = this.g;
        int i4 = this.f30369e;
        if (i4 != i3) {
            int i5 = i3 + 1;
            byte[] bArr = this.d;
            byte b2 = bArr[i3];
            if (b2 >= 0) {
                this.g = i5;
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
                this.g = i6;
                return i2;
            }
        }
        return (int) I();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int a(int i2) {
        if (i2 < 0) {
            n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        int i3 = i2 + this.g;
        if (i3 < 0) {
            n91.c("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
            return 0;
        }
        int i4 = this.f30372i;
        if (i3 > i4) {
            n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        this.f30372i = i3;
        int i5 = this.f30369e + this.f30370f;
        this.f30369e = i5;
        if (i5 <= i3) {
            this.f30370f = 0;
            return i4;
        }
        int i6 = i5 - i3;
        this.f30370f = i6;
        this.f30369e = i5 - i6;
        return i4;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final void b(int i2) {
        this.f30372i = i2;
        int i3 = this.f30369e + this.f30370f;
        this.f30369e = i3;
        if (i3 <= i2) {
            this.f30370f = 0;
            return;
        }
        int i4 = i3 - i2;
        this.f30370f = i4;
        this.f30369e = i3 - i4;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int c() {
        int i2 = this.f30372i;
        if (i2 == Integer.MAX_VALUE) {
            return -1;
        }
        return i2 - this.g;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final boolean d() {
        return this.g == this.f30369e;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int e() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int f(int i2, int i3, byte[] bArr) {
        if ((bArr.length - i2) - i3 < 0 || (i2 | i3) < 0) {
            zy0.b();
            return 0;
        }
        if (i3 == 0) {
            return 0;
        }
        int iMin = Math.min(i3, this.f30369e - this.g);
        if (iMin == 0) {
            return -1;
        }
        System.arraycopy(this.d, this.g, bArr, i2, iMin);
        this.g += iMin;
        return iMin;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final void g(int i2) throws zzaeh {
        if (i2 >= 0) {
            int i3 = this.f30369e;
            int i4 = this.g;
            if (i2 <= i3 - i4) {
                this.g = i4 + i2;
                return;
            }
        }
        if (i2 < 0) {
            n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        } else {
            n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int l() throws zzaeh {
        if (d()) {
            this.f30371h = 0;
            return 0;
        }
        int iM = ((zzact) this).M();
        this.f30371h = iM;
        if ((iM >>> 3) != 0) {
            return iM;
        }
        n91.c("Protocol message contained an invalid tag (zero).");
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final void m(int i2) throws zzaeh {
        if (this.f30371h == i2) {
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
                g(((zzact) this).M());
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
        int i4 = this.f30369e - this.g;
        byte[] bArr = this.d;
        if (i4 >= 10) {
            for (int i5 = 0; i5 < 10; i5++) {
                int i6 = this.g;
                this.g = i6 + 1;
                if (bArr[i6] < 0) {
                }
            }
            n91.c("CodedInputStream encountered a malformed varint.");
            return false;
        }
        for (int i7 = 0; i7 < 10; i7++) {
            int i8 = this.g;
            if (i8 == this.f30369e) {
                n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return false;
            }
            this.g = i8 + 1;
            if (bArr[i8] < 0) {
            }
        }
        n91.c("CodedInputStream encountered a malformed varint.");
        return false;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final double o() {
        return Double.longBitsToDouble(K());
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final float p() {
        return Float.intBitsToFloat(J());
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
        return ((zzact) this).M();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long t() {
        return K();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int u() {
        return J();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final boolean v() {
        return H() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final String w() throws zzaeh {
        int iM = ((zzact) this).M();
        if (iM > 0) {
            int i2 = this.f30369e;
            int i3 = this.g;
            if (iM <= i2 - i3) {
                String str = new String(this.d, i3, iM, StandardCharsets.UTF_8);
                this.g += iM;
                return str;
            }
        }
        if (iM == 0) {
            return "";
        }
        if (iM < 0) {
            n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return null;
        }
        n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final String x() throws zzaeh {
        int iM = ((zzact) this).M();
        if (iM > 0) {
            int i2 = this.f30369e;
            int i3 = this.g;
            if (iM <= i2 - i3) {
                String strD = zzagl.d(i3, iM, this.d);
                this.g += iM;
                return strD;
            }
        }
        if (iM == 0) {
            return "";
        }
        if (iM <= 0) {
            n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return null;
        }
        n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final zzacr y() throws zzaeh {
        int iM = ((zzact) this).M();
        if (iM > 0) {
            int i2 = this.f30369e;
            int i3 = this.g;
            if (iM <= i2 - i3) {
                zzacr zzacrVarP = zzacr.p(i3, iM, this.d);
                this.g += iM;
                return zzacrVarP;
            }
        }
        if (iM == 0) {
            return zzacr.f30367c;
        }
        byte[] bArrL = L(iM);
        zzacr zzacrVar = zzacr.f30367c;
        return bArrL.length == 0 ? zzacr.f30367c : new zzacq(bArrL);
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final byte[] z() {
        return L(((zzact) this).M());
    }
}
