package com.google.android.gms.internal.vision;

import defpackage.d20;
import defpackage.z81;
import java.io.IOException;
import java.util.logging.Logger;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzii extends zzhq {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f31197b = Logger.getLogger(zzii.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f31198c = zzma.f31291e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public zzil f31199a;

    public static class zza extends zzii {
        public final byte[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f31200e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f31201f;

        public zza(byte[] bArr, int i2) {
            if (((bArr.length - i2) | i2) < 0) {
                d20.j("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", new Object[]{Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)});
                throw null;
            }
            this.d = bArr;
            this.f31201f = 0;
            this.f31200e = i2;
        }

        @Override // com.google.android.gms.internal.vision.zzii
        public final void a(byte b2) throws zzb {
            try {
                byte[] bArr = this.d;
                int i2 = this.f31201f;
                this.f31201f = i2 + 1;
                bArr[i2] = b2;
            } catch (IndexOutOfBoundsException e2) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31201f), Integer.valueOf(this.f31200e), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.vision.zzii
        public final void b(int i2) throws zzb {
            if (i2 >= 0) {
                f(i2);
            } else {
                d(i2);
            }
        }

        @Override // com.google.android.gms.internal.vision.zzii
        public final void c(int i2, int i3) throws zzb {
            f((i2 << 3) | i3);
        }

        @Override // com.google.android.gms.internal.vision.zzii
        public final void d(long j2) throws zzb {
            boolean z = zzii.f31198c;
            int i2 = this.f31200e;
            byte[] bArr = this.d;
            if (!z || i2 - this.f31201f < 10) {
                while (true) {
                    long j3 = j2 & (-128);
                    int i3 = this.f31201f;
                    if (j3 == 0) {
                        this.f31201f = i3 + 1;
                        bArr[i3] = (byte) j2;
                        return;
                    } else {
                        try {
                            this.f31201f = i3 + 1;
                            bArr[i3] = (byte) ((((int) j2) & CertificateBody.profileType) | 128);
                            j2 >>>= 7;
                        } catch (IndexOutOfBoundsException e2) {
                            throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31201f), Integer.valueOf(i2), 1), e2);
                        }
                    }
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31201f), Integer.valueOf(i2), 1), e2);
                }
            }
            while (true) {
                long j4 = j2 & (-128);
                int i4 = this.f31201f;
                if (j4 == 0) {
                    this.f31201f = i4 + 1;
                    zzma.f(bArr, (byte) j2, i4);
                    return;
                } else {
                    this.f31201f = i4 + 1;
                    zzma.f(bArr, (byte) ((((int) j2) & CertificateBody.profileType) | 128), i4);
                    j2 >>>= 7;
                }
            }
        }

        @Override // com.google.android.gms.internal.vision.zzii
        public final void f(int i2) throws zzb {
            boolean z = zzii.f31198c;
            int i3 = this.f31200e;
            byte[] bArr = this.d;
            if (z && !zzhi.a()) {
                int i4 = this.f31201f;
                if (i3 - i4 >= 5) {
                    if ((i2 & (-128)) == 0) {
                        this.f31201f = i4 + 1;
                        zzma.f(bArr, (byte) i2, i4);
                        return;
                    }
                    this.f31201f = i4 + 1;
                    zzma.f(bArr, (byte) (i2 | 128), i4);
                    int i5 = i2 >>> 7;
                    int i6 = i5 & (-128);
                    int i7 = this.f31201f;
                    if (i6 == 0) {
                        this.f31201f = i7 + 1;
                        zzma.f(bArr, (byte) i5, i7);
                        return;
                    }
                    this.f31201f = i7 + 1;
                    zzma.f(bArr, (byte) (i5 | 128), i7);
                    int i8 = i2 >>> 14;
                    int i9 = i8 & (-128);
                    int i10 = this.f31201f;
                    if (i9 == 0) {
                        this.f31201f = i10 + 1;
                        zzma.f(bArr, (byte) i8, i10);
                        return;
                    }
                    this.f31201f = i10 + 1;
                    zzma.f(bArr, (byte) (i8 | 128), i10);
                    int i11 = i2 >>> 21;
                    int i12 = i11 & (-128);
                    int i13 = this.f31201f;
                    if (i12 == 0) {
                        this.f31201f = i13 + 1;
                        zzma.f(bArr, (byte) i11, i13);
                        return;
                    }
                    this.f31201f = i13 + 1;
                    zzma.f(bArr, (byte) (i11 | 128), i13);
                    int i14 = this.f31201f;
                    this.f31201f = i14 + 1;
                    zzma.f(bArr, (byte) (i2 >>> 28), i14);
                    return;
                }
            }
            while (true) {
                int i15 = i2 & (-128);
                int i16 = this.f31201f;
                if (i15 == 0) {
                    this.f31201f = i16 + 1;
                    bArr[i16] = (byte) i2;
                    return;
                } else {
                    try {
                        this.f31201f = i16 + 1;
                        bArr[i16] = (byte) ((i2 & CertificateBody.profileType) | 128);
                        i2 >>>= 7;
                    } catch (IndexOutOfBoundsException e2) {
                        throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31201f), Integer.valueOf(i3), 1), e2);
                    }
                }
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31201f), Integer.valueOf(i3), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.vision.zzii
        public final void i(long j2) throws zzb {
            try {
                byte[] bArr = this.d;
                int i2 = this.f31201f;
                int i3 = i2 + 1;
                this.f31201f = i3;
                bArr[i2] = (byte) j2;
                int i4 = i2 + 2;
                this.f31201f = i4;
                bArr[i3] = (byte) (j2 >> 8);
                int i5 = i2 + 3;
                this.f31201f = i5;
                bArr[i4] = (byte) (j2 >> 16);
                int i6 = i2 + 4;
                this.f31201f = i6;
                bArr[i5] = (byte) (j2 >> 24);
                int i7 = i2 + 5;
                this.f31201f = i7;
                bArr[i6] = (byte) (j2 >> 32);
                int i8 = i2 + 6;
                this.f31201f = i8;
                bArr[i7] = (byte) (j2 >> 40);
                int i9 = i2 + 7;
                this.f31201f = i9;
                bArr[i8] = (byte) (j2 >> 48);
                this.f31201f = i2 + 8;
                bArr[i9] = (byte) (j2 >> 56);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31201f), Integer.valueOf(this.f31200e), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.vision.zzii
        public final void j(int i2) throws zzb {
            try {
                byte[] bArr = this.d;
                int i3 = this.f31201f;
                int i4 = i3 + 1;
                this.f31201f = i4;
                bArr[i3] = (byte) i2;
                int i5 = i3 + 2;
                this.f31201f = i5;
                bArr[i4] = (byte) (i2 >> 8);
                int i6 = i3 + 3;
                this.f31201f = i6;
                bArr[i5] = (byte) (i2 >> 16);
                this.f31201f = i3 + 4;
                bArr[i6] = (byte) (i2 >>> 24);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31201f), Integer.valueOf(this.f31200e), 1), e2);
            }
        }

        public final void u(int i2, int i3, byte[] bArr) throws zzb {
            try {
                System.arraycopy(bArr, i2, this.d, this.f31201f, i3);
                this.f31201f += i3;
            } catch (IndexOutOfBoundsException e2) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31201f), Integer.valueOf(this.f31200e), Integer.valueOf(i3)), e2);
            }
        }
    }

    public static int e(String str) {
        int length;
        try {
            length = zzmd.a(str);
        } catch (zzmg unused) {
            length = str.getBytes(zzjf.f31225a).length;
        }
        return r(length) + length;
    }

    public static int g(int i2, zzht zzhtVar) {
        int iR = r(i2 << 3);
        int iF = zzhtVar.f();
        return z81.m(iF, iF, iR);
    }

    public static int h(int i2, zzkk zzkkVar, zzlc zzlcVar) {
        int iR = r(i2 << 3) << 1;
        zzhf zzhfVar = (zzhf) zzkkVar;
        int iH = zzhfVar.h();
        if (iH == -1) {
            iH = zzlcVar.c(zzhfVar);
            zzhfVar.f(iH);
        }
        return iR + iH;
    }

    public static int k(int i2) {
        return r(i2 << 3);
    }

    public static int l(int i2, long j2) {
        return m(j2) + r(i2 << 3);
    }

    public static int m(long j2) {
        int i2;
        if (((-128) & j2) == 0) {
            return 1;
        }
        if (j2 < 0) {
            return 10;
        }
        if (((-34359738368L) & j2) != 0) {
            j2 >>>= 28;
            i2 = 6;
        } else {
            i2 = 2;
        }
        if (((-2097152) & j2) != 0) {
            i2 += 2;
            j2 >>>= 14;
        }
        return (j2 & (-16384)) != 0 ? i2 + 1 : i2;
    }

    public static int n(int i2) {
        if (i2 >= 0) {
            return r(i2);
        }
        return 10;
    }

    public static int o(int i2, long j2) {
        return m((j2 >> 63) ^ (j2 << 1)) + r(i2 << 3);
    }

    public static int p(int i2) {
        return r(i2 << 3) + 8;
    }

    public static int q(int i2, int i3) {
        return r(i3) + r(i2 << 3);
    }

    public static int r(int i2) {
        if ((i2 & (-128)) == 0) {
            return 1;
        }
        if ((i2 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i2) == 0) {
            return 3;
        }
        return (i2 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int s(int i2, int i3) {
        return r((i3 >> 31) ^ (i3 << 1)) + r(i2 << 3);
    }

    public static int t(int i2) {
        return r(i2 << 3) + 4;
    }

    public abstract void a(byte b2);

    public abstract void b(int i2);

    public abstract void c(int i2, int i3);

    public abstract void d(long j2);

    public abstract void f(int i2);

    public abstract void i(long j2);

    public abstract void j(int i2);

    public static class zzb extends IOException {
        public zzb(String str, IndexOutOfBoundsException indexOutOfBoundsException) {
            super(str.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(str) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "), indexOutOfBoundsException);
        }

        public zzb(IndexOutOfBoundsException indexOutOfBoundsException) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
        }
    }
}
