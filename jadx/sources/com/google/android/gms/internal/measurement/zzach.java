package com.google.android.gms.internal.measurement;

import defpackage.n91;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzach {
    public static int a(byte[] bArr, int i2, zzacg zzacgVar) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 < 0) {
            return b(b2, bArr, i3, zzacgVar);
        }
        zzacgVar.f30359a = b2;
        return i3;
    }

    public static int b(int i2, byte[] bArr, int i3, zzacg zzacgVar) {
        byte b2 = bArr[i3];
        int i4 = i3 + 1;
        int i5 = i2 & CertificateBody.profileType;
        if (b2 >= 0) {
            zzacgVar.f30359a = i5 | (b2 << 7);
            return i4;
        }
        int i6 = i5 | ((b2 & 127) << 7);
        int i7 = i3 + 2;
        byte b3 = bArr[i4];
        if (b3 >= 0) {
            zzacgVar.f30359a = i6 | (b3 << 14);
            return i7;
        }
        int i8 = i6 | ((b3 & 127) << 14);
        int i9 = i3 + 3;
        byte b4 = bArr[i7];
        if (b4 >= 0) {
            zzacgVar.f30359a = i8 | (b4 << 21);
            return i9;
        }
        int i10 = i8 | ((b4 & 127) << 21);
        int i11 = i3 + 4;
        byte b5 = bArr[i9];
        if (b5 >= 0) {
            zzacgVar.f30359a = i10 | (b5 << 28);
            return i11;
        }
        int i12 = i10 | ((b5 & 127) << 28);
        while (true) {
            int i13 = i11 + 1;
            if (bArr[i11] >= 0) {
                zzacgVar.f30359a = i12;
                return i13;
            }
            i11 = i13;
        }
    }

    public static int c(byte[] bArr, int i2, zzacg zzacgVar) {
        long j2 = bArr[i2];
        int i3 = i2 + 1;
        if (j2 >= 0) {
            zzacgVar.f30360b = j2;
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
        zzacgVar.f30360b = j3;
        return i4;
    }

    public static int d(int i2, byte[] bArr) {
        int i3 = bArr[i2] & 255;
        int i4 = bArr[i2 + 1] & 255;
        int i5 = bArr[i2 + 2] & 255;
        return ((bArr[i2 + 3] & 255) << 24) | (i4 << 8) | i3 | (i5 << 16);
    }

    public static long e(int i2, byte[] bArr) {
        return (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48) | ((((long) bArr[i2 + 7]) & 255) << 56);
    }

    public static int f(byte[] bArr, int i2, zzacg zzacgVar) throws zzaeh {
        int iA = a(bArr, i2, zzacgVar);
        int i3 = zzacgVar.f30359a;
        if (i3 < 0) {
            n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i3 == 0) {
            zzacgVar.f30361c = "";
            return iA;
        }
        zzacgVar.f30361c = zzagl.d(iA, i3, bArr);
        return iA + i3;
    }

    public static int g(byte[] bArr, int i2, zzacg zzacgVar) throws zzaeh {
        int iA = a(bArr, i2, zzacgVar);
        int i3 = zzacgVar.f30359a;
        if (i3 < 0) {
            n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i3 > bArr.length - iA) {
            n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        if (i3 == 0) {
            zzacgVar.f30361c = zzacr.f30367c;
            return iA;
        }
        zzacgVar.f30361c = zzacr.o(iA, i3, bArr);
        return iA + i3;
    }

    public static int h(Object obj, zzafp zzafpVar, byte[] bArr, int i2, int i3, zzacg zzacgVar) throws zzaeh {
        int iB = i2 + 1;
        int i4 = bArr[i2];
        if (i4 < 0) {
            iB = b(i4, bArr, iB, zzacgVar);
            i4 = zzacgVar.f30359a;
        }
        int i5 = iB;
        if (i4 < 0 || i4 > i3 - i5) {
            n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        int i6 = zzacgVar.f30362e + 1;
        zzacgVar.f30362e = i6;
        if (i6 >= 100) {
            n91.c("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int i7 = i5 + i4;
        zzafpVar.b(obj, bArr, i5, i7, zzacgVar);
        zzacgVar.f30362e--;
        zzacgVar.f30361c = obj;
        return i7;
    }

    public static int i(Object obj, zzafp zzafpVar, byte[] bArr, int i2, int i3, int i4, zzacg zzacgVar) throws zzaeh {
        zzaff zzaffVar = (zzaff) zzafpVar;
        int i5 = zzacgVar.f30362e + 1;
        zzacgVar.f30362e = i5;
        if (i5 >= 100) {
            n91.c("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int iY = zzaffVar.y(obj, bArr, i2, i3, i4, zzacgVar);
        zzacgVar.f30362e--;
        zzacgVar.f30361c = obj;
        return iY;
    }

    public static int j(int i2, byte[] bArr, int i3, int i4, zzaef zzaefVar, zzacg zzacgVar) {
        zzadv zzadvVar = (zzadv) zzaefVar;
        int iA = a(bArr, i3, zzacgVar);
        zzadvVar.h(zzacgVar.f30359a);
        while (iA < i4) {
            int iA2 = a(bArr, iA, zzacgVar);
            if (i2 != zzacgVar.f30359a) {
                break;
            }
            iA = a(bArr, iA2, zzacgVar);
            zzadvVar.h(zzacgVar.f30359a);
        }
        return iA;
    }

    public static int k(byte[] bArr, int i2, zzaef zzaefVar, zzacg zzacgVar) throws zzaeh {
        zzadv zzadvVar = (zzadv) zzaefVar;
        int iA = a(bArr, i2, zzacgVar);
        int i3 = zzacgVar.f30359a + iA;
        while (iA < i3) {
            iA = a(bArr, iA, zzacgVar);
            zzadvVar.h(zzacgVar.f30359a);
        }
        if (iA == i3) {
            return iA;
        }
        n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return 0;
    }

    public static int l(zzafp zzafpVar, int i2, byte[] bArr, int i3, int i4, zzaef zzaefVar, zzacg zzacgVar) throws zzaeh {
        Object objD0 = zzafpVar.d0();
        zzafp zzafpVar2 = zzafpVar;
        byte[] bArr2 = bArr;
        int i5 = i4;
        zzacg zzacgVar2 = zzacgVar;
        int iH = h(objD0, zzafpVar2, bArr2, i3, i5, zzacgVar2);
        zzafpVar2.g(objD0);
        zzacgVar2.f30361c = objD0;
        zzaefVar.add(objD0);
        while (iH < i5) {
            zzacg zzacgVar3 = zzacgVar2;
            int i6 = i5;
            int iA = a(bArr2, iH, zzacgVar3);
            if (i2 != zzacgVar3.f30359a) {
                break;
            }
            byte[] bArr3 = bArr2;
            zzafp zzafpVar3 = zzafpVar2;
            Object objD1 = zzafpVar3.d0();
            iH = h(objD1, zzafpVar3, bArr3, iA, i6, zzacgVar3);
            zzafpVar2 = zzafpVar3;
            bArr2 = bArr3;
            i5 = i6;
            zzacgVar2 = zzacgVar3;
            zzafpVar2.g(objD1);
            zzacgVar2.f30361c = objD1;
            zzaefVar.add(objD1);
        }
        return iH;
    }

    public static int m(int i2, byte[] bArr, int i3, int i4, zzaga zzagaVar, zzacg zzacgVar) throws zzaeh {
        if ((i2 >>> 3) == 0) {
            n91.c("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            int iC = c(bArr, i3, zzacgVar);
            zzagaVar.d(i2, Long.valueOf(zzacgVar.f30360b));
            return iC;
        }
        if (i5 == 1) {
            zzagaVar.d(i2, Long.valueOf(e(i3, bArr)));
            return i3 + 8;
        }
        if (i5 == 2) {
            int iA = a(bArr, i3, zzacgVar);
            int i6 = zzacgVar.f30359a;
            if (i6 < 0) {
                n91.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                return 0;
            }
            if (i6 > bArr.length - iA) {
                n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return 0;
            }
            if (i6 == 0) {
                zzagaVar.d(i2, zzacr.f30367c);
            } else {
                zzagaVar.d(i2, zzacr.o(iA, i6, bArr));
            }
            return iA + i6;
        }
        if (i5 != 3) {
            if (i5 == 5) {
                zzagaVar.d(i2, Integer.valueOf(d(i3, bArr)));
                return i3 + 4;
            }
            n91.c("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i7 = (i2 & (-8)) | 4;
        zzaga zzagaVarA = zzaga.a();
        int i8 = zzacgVar.f30362e + 1;
        zzacgVar.f30362e = i8;
        if (i8 >= 100) {
            n91.c("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int i9 = 0;
        while (i3 < i4) {
            int iA2 = a(bArr, i3, zzacgVar);
            int i10 = zzacgVar.f30359a;
            if (i10 == i7) {
                i9 = i10;
                i3 = iA2;
                break;
            }
            i3 = m(i10, bArr, iA2, i4, zzagaVarA, zzacgVar);
            i9 = i10;
        }
        zzacgVar.f30362e--;
        if (i3 > i4 || i9 != i7) {
            n91.c("Failed to parse the message.");
            return 0;
        }
        zzagaVar.d(i2, zzagaVarA);
        return i3;
    }

    public static int n(int i2, byte[] bArr, int i3, int i4, zzacg zzacgVar) throws zzaeh {
        if ((i2 >>> 3) == 0) {
            n91.c("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            return c(bArr, i3, zzacgVar);
        }
        if (i5 == 1) {
            return i3 + 8;
        }
        if (i5 == 2) {
            return a(bArr, i3, zzacgVar) + zzacgVar.f30359a;
        }
        if (i5 != 3) {
            if (i5 == 5) {
                return i3 + 4;
            }
            n91.c("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i6 = (i2 & (-8)) | 4;
        int i7 = 0;
        while (i3 < i4) {
            i3 = a(bArr, i3, zzacgVar);
            i7 = zzacgVar.f30359a;
            if (i7 == i6) {
                break;
            }
            i3 = n(i7, bArr, i3, i4, zzacgVar);
        }
        if (i3 <= i4 && i7 == i6) {
            return i3;
        }
        n91.c("Failed to parse the message.");
        return 0;
    }
}
