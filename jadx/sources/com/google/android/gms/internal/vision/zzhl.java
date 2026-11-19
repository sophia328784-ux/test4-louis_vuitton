package com.google.android.gms.internal.vision;

import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzhl {
    public static int a(int i2, byte[] bArr) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public static int b(int i2, byte[] bArr, int i3, int i4, zzhn zzhnVar) throws zzjk {
        if ((i2 >>> 3) == 0) {
            throw new zzjk("Protocol message contained an invalid tag (zero).");
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            return j(bArr, i3, zzhnVar);
        }
        if (i5 == 1) {
            return i3 + 8;
        }
        if (i5 == 2) {
            return i(bArr, i3, zzhnVar) + zzhnVar.f31183a;
        }
        if (i5 != 3) {
            if (i5 == 5) {
                return i3 + 4;
            }
            throw new zzjk("Protocol message contained an invalid tag (zero).");
        }
        int i6 = (i2 & (-8)) | 4;
        int i7 = 0;
        while (i3 < i4) {
            i3 = i(bArr, i3, zzhnVar);
            i7 = zzhnVar.f31183a;
            if (i7 == i6) {
                break;
            }
            i3 = b(i7, bArr, i3, i4, zzhnVar);
        }
        if (i3 > i4 || i7 != i6) {
            throw zzjk.d();
        }
        return i3;
    }

    public static int c(int i2, byte[] bArr, int i3, int i4, zzjl zzjlVar, zzhn zzhnVar) {
        zzjd zzjdVar = (zzjd) zzjlVar;
        int i5 = i(bArr, i3, zzhnVar);
        zzjdVar.h(zzhnVar.f31183a);
        while (i5 < i4) {
            int i6 = i(bArr, i5, zzhnVar);
            if (i2 != zzhnVar.f31183a) {
                break;
            }
            i5 = i(bArr, i6, zzhnVar);
            zzjdVar.h(zzhnVar.f31183a);
        }
        return i5;
    }

    public static int d(int i2, byte[] bArr, int i3, int i4, zzlx zzlxVar, zzhn zzhnVar) throws zzjk {
        if ((i2 >>> 3) == 0) {
            throw new zzjk("Protocol message contained an invalid tag (zero).");
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            int iJ = j(bArr, i3, zzhnVar);
            zzlxVar.a(i2, Long.valueOf(zzhnVar.f31184b));
            return iJ;
        }
        if (i5 == 1) {
            zzlxVar.a(i2, Long.valueOf(k(i3, bArr)));
            return i3 + 8;
        }
        if (i5 == 2) {
            int i6 = i(bArr, i3, zzhnVar);
            int i7 = zzhnVar.f31183a;
            if (i7 < 0) {
                throw zzjk.b();
            }
            if (i7 > bArr.length - i6) {
                throw zzjk.a();
            }
            if (i7 == 0) {
                zzlxVar.a(i2, zzht.f31188c);
            } else {
                zzlxVar.a(i2, zzht.h(i6, i7, bArr));
            }
            return i6 + i7;
        }
        if (i5 != 3) {
            if (i5 != 5) {
                throw new zzjk("Protocol message contained an invalid tag (zero).");
            }
            zzlxVar.a(i2, Integer.valueOf(a(i3, bArr)));
            return i3 + 4;
        }
        zzlx zzlxVarB = zzlx.b();
        int i8 = (i2 & (-8)) | 4;
        int i9 = 0;
        while (i3 < i4) {
            int i10 = i(bArr, i3, zzhnVar);
            int i11 = zzhnVar.f31183a;
            if (i11 == i8) {
                i9 = i11;
                i3 = i10;
                break;
            }
            i3 = d(i11, bArr, i10, i4, zzlxVarB, zzhnVar);
            i9 = i11;
        }
        if (i3 > i4 || i9 != i8) {
            throw zzjk.d();
        }
        zzlxVar.a(i2, zzlxVarB);
        return i3;
    }

    public static int e(int i2, byte[] bArr, int i3, zzhn zzhnVar) {
        int i4 = i2 & CertificateBody.profileType;
        int i5 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zzhnVar.f31183a = i4 | (b2 << 7);
            return i5;
        }
        int i6 = i4 | ((b2 & 127) << 7);
        int i7 = i3 + 2;
        byte b3 = bArr[i5];
        if (b3 >= 0) {
            zzhnVar.f31183a = i6 | (b3 << 14);
            return i7;
        }
        int i8 = i6 | ((b3 & 127) << 14);
        int i9 = i3 + 3;
        byte b4 = bArr[i7];
        if (b4 >= 0) {
            zzhnVar.f31183a = i8 | (b4 << 21);
            return i9;
        }
        int i10 = i8 | ((b4 & 127) << 21);
        int i11 = i3 + 4;
        byte b5 = bArr[i9];
        if (b5 >= 0) {
            zzhnVar.f31183a = i10 | (b5 << 28);
            return i11;
        }
        int i12 = i10 | ((b5 & 127) << 28);
        while (true) {
            int i13 = i11 + 1;
            if (bArr[i11] >= 0) {
                zzhnVar.f31183a = i12;
                return i13;
            }
            i11 = i13;
        }
    }

    public static int f(zzlc zzlcVar, int i2, byte[] bArr, int i3, int i4, zzjl zzjlVar, zzhn zzhnVar) throws zzjk {
        int iH = h(zzlcVar, bArr, i3, i4, zzhnVar);
        zzjlVar.add(zzhnVar.f31185c);
        while (iH < i4) {
            int i5 = i(bArr, iH, zzhnVar);
            if (i2 != zzhnVar.f31183a) {
                break;
            }
            iH = h(zzlcVar, bArr, i5, i4, zzhnVar);
            zzjlVar.add(zzhnVar.f31185c);
        }
        return iH;
    }

    public static int g(zzlc zzlcVar, byte[] bArr, int i2, int i3, int i4, zzhn zzhnVar) {
        zzko zzkoVar = (zzko) zzlcVar;
        Object objD0 = zzkoVar.d0();
        int iK = zzkoVar.k(objD0, bArr, i2, i3, i4, zzhnVar);
        zzkoVar.a(objD0);
        zzhnVar.f31185c = objD0;
        return iK;
    }

    public static int h(zzlc zzlcVar, byte[] bArr, int i2, int i3, zzhn zzhnVar) throws zzjk {
        int iE = i2 + 1;
        int i4 = bArr[i2];
        if (i4 < 0) {
            iE = e(i4, bArr, iE, zzhnVar);
            i4 = zzhnVar.f31183a;
        }
        int i5 = iE;
        if (i4 < 0 || i4 > i3 - i5) {
            throw zzjk.a();
        }
        Object objD0 = zzlcVar.d0();
        int i6 = i5 + i4;
        zzlcVar.h(objD0, bArr, i5, i6, zzhnVar);
        zzlcVar.a(objD0);
        zzhnVar.f31185c = objD0;
        return i6;
    }

    public static int i(byte[] bArr, int i2, zzhn zzhnVar) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 < 0) {
            return e(b2, bArr, i3, zzhnVar);
        }
        zzhnVar.f31183a = b2;
        return i3;
    }

    public static int j(byte[] bArr, int i2, zzhn zzhnVar) {
        int i3 = i2 + 1;
        long j2 = bArr[i2];
        if (j2 >= 0) {
            zzhnVar.f31184b = j2;
            return i3;
        }
        int i4 = i2 + 2;
        byte b2 = bArr[i3];
        long j3 = (j2 & 127) | (((long) (b2 & 127)) << 7);
        int i5 = 7;
        while (b2 < 0) {
            int i6 = i4 + 1;
            byte b3 = bArr[i4];
            i5 += 7;
            j3 |= ((long) (b3 & 127)) << i5;
            b2 = b3;
            i4 = i6;
        }
        zzhnVar.f31184b = j3;
        return i4;
    }

    public static long k(int i2, byte[] bArr) {
        return ((((long) bArr[i2 + 7]) & 255) << 56) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48);
    }

    public static int l(byte[] bArr, int i2, zzhn zzhnVar) throws zzjk {
        int i3 = i(bArr, i2, zzhnVar);
        int i4 = zzhnVar.f31183a;
        if (i4 < 0) {
            throw zzjk.b();
        }
        if (i4 == 0) {
            zzhnVar.f31185c = "";
            return i3;
        }
        zzhnVar.f31185c = new String(bArr, i3, i4, zzjf.f31225a);
        return i3 + i4;
    }

    public static int m(byte[] bArr, int i2, zzhn zzhnVar) throws zzjk {
        int i3 = i(bArr, i2, zzhnVar);
        int i4 = zzhnVar.f31183a;
        if (i4 < 0) {
            throw zzjk.b();
        }
        if (i4 == 0) {
            zzhnVar.f31185c = "";
            return i3;
        }
        zzhnVar.f31185c = zzmd.f31295a.d(i3, i4, bArr);
        return i3 + i4;
    }

    public static int n(byte[] bArr, int i2, zzhn zzhnVar) throws zzjk {
        int i3 = i(bArr, i2, zzhnVar);
        int i4 = zzhnVar.f31183a;
        if (i4 < 0) {
            throw zzjk.b();
        }
        if (i4 > bArr.length - i3) {
            throw zzjk.a();
        }
        if (i4 == 0) {
            zzhnVar.f31185c = zzht.f31188c;
            return i3;
        }
        zzhnVar.f31185c = zzht.h(i3, i4, bArr);
        return i3 + i4;
    }
}
