package com.google.android.gms.internal.clearcut;

import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzax {
    public static int a(int i2, byte[] bArr, int i3, int i4, zzay zzayVar) throws zzco {
        if ((i2 >>> 3) == 0) {
            throw new zzco("Protocol message contained an invalid tag (zero).");
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            return e(bArr, i3, zzayVar);
        }
        if (i5 == 1) {
            return i3 + 8;
        }
        if (i5 == 2) {
            return d(bArr, i3, zzayVar) + zzayVar.f29651a;
        }
        if (i5 != 3) {
            if (i5 == 5) {
                return i3 + 4;
            }
            throw new zzco("Protocol message contained an invalid tag (zero).");
        }
        int i6 = (i2 & (-8)) | 4;
        int i7 = 0;
        while (i3 < i4) {
            i3 = d(bArr, i3, zzayVar);
            i7 = zzayVar.f29651a;
            if (i7 == i6) {
                break;
            }
            i3 = a(i7, bArr, i3, i4, zzayVar);
        }
        if (i3 > i4 || i7 != i6) {
            throw zzco.b();
        }
        return i3;
    }

    public static int b(int i2, byte[] bArr, int i3, int i4, zzey zzeyVar, zzay zzayVar) throws zzco {
        if ((i2 >>> 3) == 0) {
            throw new zzco("Protocol message contained an invalid tag (zero).");
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            int iE = e(bArr, i3, zzayVar);
            zzeyVar.a(i2, Long.valueOf(zzayVar.f29652b));
            return iE;
        }
        if (i5 == 1) {
            zzeyVar.a(i2, Long.valueOf(h(i3, bArr)));
            return i3 + 8;
        }
        if (i5 == 2) {
            int iD = d(bArr, i3, zzayVar);
            int i6 = zzayVar.f29651a;
            zzeyVar.a(i2, i6 == 0 ? zzbb.f29654c : zzbb.a(iD, i6, bArr));
            return iD + i6;
        }
        if (i5 != 3) {
            if (i5 != 5) {
                throw new zzco("Protocol message contained an invalid tag (zero).");
            }
            zzeyVar.a(i2, Integer.valueOf(f(i3, bArr)));
            return i3 + 4;
        }
        zzey zzeyVarB = zzey.b();
        int i7 = (i2 & (-8)) | 4;
        int i8 = 0;
        while (i3 < i4) {
            int iD2 = d(bArr, i3, zzayVar);
            int i9 = zzayVar.f29651a;
            if (i9 == i7) {
                i8 = i9;
                i3 = iD2;
                break;
            }
            i3 = b(i9, bArr, iD2, i4, zzeyVarB, zzayVar);
            i8 = i9;
        }
        if (i3 > i4 || i8 != i7) {
            throw zzco.b();
        }
        zzeyVar.a(i2, zzeyVarB);
        return i3;
    }

    public static int c(int i2, byte[] bArr, int i3, zzay zzayVar) {
        int i4;
        int i5 = i2 & CertificateBody.profileType;
        int i6 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            i4 = b2 << 7;
        } else {
            int i7 = i5 | ((b2 & 127) << 7);
            int i8 = i3 + 2;
            byte b3 = bArr[i6];
            if (b3 >= 0) {
                zzayVar.f29651a = i7 | (b3 << 14);
                return i8;
            }
            i5 = i7 | ((b3 & 127) << 14);
            i6 = i3 + 3;
            byte b4 = bArr[i8];
            if (b4 >= 0) {
                i4 = b4 << 21;
            } else {
                int i9 = i5 | ((b4 & 127) << 21);
                int i10 = i3 + 4;
                byte b5 = bArr[i6];
                if (b5 >= 0) {
                    zzayVar.f29651a = i9 | (b5 << 28);
                    return i10;
                }
                int i11 = i9 | ((b5 & 127) << 28);
                while (true) {
                    int i12 = i10 + 1;
                    if (bArr[i10] >= 0) {
                        zzayVar.f29651a = i11;
                        return i12;
                    }
                    i10 = i12;
                }
            }
        }
        zzayVar.f29651a = i5 | i4;
        return i6;
    }

    public static int d(byte[] bArr, int i2, zzay zzayVar) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 < 0) {
            return c(b2, bArr, i3, zzayVar);
        }
        zzayVar.f29651a = b2;
        return i3;
    }

    public static int e(byte[] bArr, int i2, zzay zzayVar) {
        int i3 = i2 + 1;
        long j2 = bArr[i2];
        if (j2 >= 0) {
            zzayVar.f29652b = j2;
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
        zzayVar.f29652b = j3;
        return i4;
    }

    public static int f(int i2, byte[] bArr) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public static int g(byte[] bArr, int i2, zzay zzayVar) throws zzco {
        int iD = d(bArr, i2, zzayVar);
        int i3 = zzayVar.f29651a;
        if (i3 == 0) {
            zzayVar.f29653c = "";
            return iD;
        }
        int i4 = iD + i3;
        if (!zzff.f29751a.b(iD, i4, bArr)) {
            throw new zzco("Protocol message had invalid UTF-8.");
        }
        zzayVar.f29653c = new String(bArr, iD, i3, zzci.f29677a);
        return i4;
    }

    public static long h(int i2, byte[] bArr) {
        return ((((long) bArr[i2 + 7]) & 255) << 56) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48);
    }

    public static int i(byte[] bArr, int i2, zzay zzayVar) {
        int iD = d(bArr, i2, zzayVar);
        int i3 = zzayVar.f29651a;
        if (i3 == 0) {
            zzayVar.f29653c = zzbb.f29654c;
            return iD;
        }
        zzayVar.f29653c = zzbb.a(iD, i3, bArr);
        return iD + i3;
    }
}
