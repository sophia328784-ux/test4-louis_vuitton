package com.google.android.gms.internal.vision;

import com.sightcall.uvc.Camera;
import defpackage.a61;

/* JADX INFO: loaded from: classes2.dex */
final class zzmj extends zzme {
    public static int e(long j2, byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            zzme zzmeVar = zzmd.f31295a;
            if (i2 > -12) {
                return -1;
            }
            return i2;
        }
        if (i3 == 1) {
            byte bA = zzma.a(j2, bArr);
            zzme zzmeVar2 = zzmd.f31295a;
            if (i2 > -12 || bA > -65) {
                return -1;
            }
            return (bA << 8) ^ i2;
        }
        if (i3 != 2) {
            a61.h();
            return 0;
        }
        byte bA2 = zzma.a(j2, bArr);
        byte bA3 = zzma.a(j2 + 1, bArr);
        zzme zzmeVar3 = zzmd.f31295a;
        if (i2 > -12 || bA2 > -65 || bA3 > -65) {
            return -1;
        }
        return (bA3 << 16) ^ ((bA2 << 8) ^ i2);
    }

    @Override // com.google.android.gms.internal.vision.zzme
    public final int a(int i2, int i3, byte[] bArr) {
        int i4;
        if ((i2 | i3 | (bArr.length - i3)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        long j2 = i2;
        int i5 = (int) (((long) i3) - j2);
        if (i5 >= 16) {
            long j3 = j2;
            i4 = 0;
            while (true) {
                if (i4 >= i5) {
                    i4 = i5;
                    break;
                }
                long j4 = j3 + 1;
                if (zzma.a(j3, bArr) < 0) {
                    break;
                }
                i4++;
                j3 = j4;
            }
        } else {
            i4 = 0;
        }
        int i6 = i5 - i4;
        long j5 = j2 + ((long) i4);
        while (true) {
            byte bA = 0;
            while (i6 > 0) {
                long j6 = j5 + 1;
                bA = zzma.a(j5, bArr);
                if (bA < 0) {
                    j5 = j6;
                    break;
                }
                i6--;
                j5 = j6;
            }
            if (i6 == 0) {
                return 0;
            }
            int i7 = i6 - 1;
            if (bA < -32) {
                if (i7 == 0) {
                    return bA;
                }
                i6 -= 2;
                if (bA < -62) {
                    return -1;
                }
                long j7 = j5 + 1;
                if (zzma.a(j5, bArr) > -65) {
                    return -1;
                }
                j5 = j7;
            } else if (bA < -16) {
                if (i7 < 2) {
                    return e(j5, bArr, bA, i7);
                }
                i6 -= 3;
                long j8 = j5 + 1;
                byte bA2 = zzma.a(j5, bArr);
                if (bA2 > -65) {
                    return -1;
                }
                if (bA == -32 && bA2 < -96) {
                    return -1;
                }
                if (bA == -19 && bA2 >= -96) {
                    return -1;
                }
                j5 += 2;
                if (zzma.a(j8, bArr) > -65) {
                    return -1;
                }
            } else {
                if (i7 < 3) {
                    return e(j5, bArr, bA, i7);
                }
                i6 -= 4;
                long j9 = j5 + 1;
                byte bA3 = zzma.a(j5, bArr);
                if (bA3 > -65) {
                    return -1;
                }
                if ((((bA3 + 112) + (bA << 28)) >> 30) != 0) {
                    return -1;
                }
                long j10 = 2 + j5;
                if (zzma.a(j9, bArr) > -65) {
                    return -1;
                }
                j5 += 3;
                if (zzma.a(j10, bArr) > -65) {
                    return -1;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzme
    public final int b(String str, byte[] bArr, int i2, int i3) {
        long j2;
        long j3;
        long j4;
        int i4;
        char cCharAt;
        long j5 = i2;
        long j6 = ((long) i3) + j5;
        int length = str.length();
        if (length > i3 || bArr.length - i3 < i2) {
            char cCharAt2 = str.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(cCharAt2);
            sb.append(" at index ");
            sb.append(i2 + i3);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i5 = 0;
        while (true) {
            j2 = 1;
            if (i5 >= length || (cCharAt = str.charAt(i5)) >= 128) {
                break;
            }
            zzma.f(bArr, (byte) cCharAt, j5);
            i5++;
            j5 = 1 + j5;
        }
        if (i5 == length) {
            return (int) j5;
        }
        while (i5 < length) {
            char cCharAt3 = str.charAt(i5);
            if (cCharAt3 < 128 && j5 < j6) {
                zzma.f(bArr, (byte) cCharAt3, j5);
                j4 = j6;
                j3 = j2;
                j5 += j2;
            } else if (cCharAt3 >= 2048 || j5 > j6 - 2) {
                j3 = j2;
                if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || j5 > j6 - 3) {
                    j4 = j6;
                    if (j5 > j4 - 4) {
                        if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i4 = i5 + 1) == length || !Character.isSurrogatePair(cCharAt3, str.charAt(i4)))) {
                            throw new zzmg(i5, length);
                        }
                        StringBuilder sb2 = new StringBuilder(46);
                        sb2.append("Failed writing ");
                        sb2.append(cCharAt3);
                        sb2.append(" at index ");
                        sb2.append(j5);
                        throw new ArrayIndexOutOfBoundsException(sb2.toString());
                    }
                    int i6 = i5 + 1;
                    if (i6 != length) {
                        char cCharAt4 = str.charAt(i6);
                        if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                            int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                            zzma.f(bArr, (byte) ((codePoint >>> 18) | 240), j5);
                            zzma.f(bArr, (byte) (((codePoint >>> 12) & 63) | 128), j5 + j3);
                            long j7 = j5 + 3;
                            zzma.f(bArr, (byte) (((codePoint >>> 6) & 63) | 128), j5 + 2);
                            j5 += 4;
                            zzma.f(bArr, (byte) ((codePoint & 63) | 128), j7);
                            i5 = i6;
                        } else {
                            i5 = i6;
                        }
                    }
                    throw new zzmg(i5 - 1, length);
                }
                zzma.f(bArr, (byte) ((cCharAt3 >>> '\f') | Camera.DEFAULT_PREVIEW_HEIGHT), j5);
                long j8 = j5 + 2;
                j4 = j6;
                zzma.f(bArr, (byte) (((cCharAt3 >>> 6) & 63) | 128), j5 + j3);
                j5 += 3;
                zzma.f(bArr, (byte) ((cCharAt3 & '?') | 128), j8);
            } else {
                j3 = j2;
                long j9 = j5 + j3;
                zzma.f(bArr, (byte) ((cCharAt3 >>> 6) | 960), j5);
                j5 += 2;
                zzma.f(bArr, (byte) ((cCharAt3 & '?') | 128), j9);
                j4 = j6;
            }
            i5++;
            j2 = j3;
            j6 = j4;
        }
        return (int) j5;
    }

    @Override // com.google.android.gms.internal.vision.zzme
    public final String d(int i2, int i3, byte[] bArr) throws zzjk {
        if ((i2 | i3 | ((bArr.length - i2) - i3)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        int i4 = i2 + i3;
        char[] cArr = new char[i3];
        int i5 = 0;
        while (i2 < i4) {
            byte bA = zzma.a(i2, bArr);
            if (bA < 0) {
                break;
            }
            i2++;
            cArr[i5] = (char) bA;
            i5++;
        }
        int i6 = i5;
        while (i2 < i4) {
            int i7 = i2 + 1;
            byte bA2 = zzma.a(i2, bArr);
            if (bA2 >= 0) {
                int i8 = i6 + 1;
                cArr[i6] = (char) bA2;
                while (i7 < i4) {
                    byte bA3 = zzma.a(i7, bArr);
                    if (bA3 < 0) {
                        break;
                    }
                    i7++;
                    cArr[i8] = (char) bA3;
                    i8++;
                }
                i6 = i8;
                i2 = i7;
            } else if (bA2 < -32) {
                if (i7 >= i4) {
                    throw zzjk.e();
                }
                i2 += 2;
                zzmf.c(bA2, zzma.a(i7, bArr), cArr, i6);
                i6++;
            } else if (bA2 < -16) {
                if (i7 >= i4 - 1) {
                    throw zzjk.e();
                }
                int i9 = i2 + 2;
                i2 += 3;
                zzmf.b(bA2, zzma.a(i7, bArr), zzma.a(i9, bArr), cArr, i6);
                i6++;
            } else {
                if (i7 >= i4 - 2) {
                    throw zzjk.e();
                }
                byte bA4 = zzma.a(i7, bArr);
                int i10 = i2 + 3;
                byte bA5 = zzma.a(i2 + 2, bArr);
                i2 += 4;
                zzmf.a(bA2, bA4, bA5, zzma.a(i10, bArr), cArr, i6);
                i6 += 2;
            }
        }
        return new String(cArr, 0, i6);
    }
}
