package com.google.android.gms.internal.vision;

import com.sightcall.uvc.Camera;

/* JADX INFO: loaded from: classes2.dex */
final class zzmh extends zzme {
    @Override // com.google.android.gms.internal.vision.zzme
    public final int a(int i2, int i3, byte[] bArr) {
        while (i2 < i3 && bArr[i2] >= 0) {
            i2++;
        }
        if (i2 >= i3) {
            return 0;
        }
        while (i2 < i3) {
            int i4 = i2 + 1;
            byte b2 = bArr[i2];
            if (b2 >= 0) {
                i2 = i4;
            } else if (b2 < -32) {
                if (i4 >= i3) {
                    return b2;
                }
                if (b2 < -62) {
                    return -1;
                }
                i2 += 2;
                if (bArr[i4] > -65) {
                    return -1;
                }
            } else if (b2 < -16) {
                if (i4 >= i3 - 1) {
                    return zzmd.b(i4, i3, bArr);
                }
                int i5 = i2 + 2;
                byte b3 = bArr[i4];
                if (b3 > -65) {
                    return -1;
                }
                if (b2 == -32 && b3 < -96) {
                    return -1;
                }
                if (b2 == -19 && b3 >= -96) {
                    return -1;
                }
                i2 += 3;
                if (bArr[i5] > -65) {
                    return -1;
                }
            } else {
                if (i4 >= i3 - 2) {
                    return zzmd.b(i4, i3, bArr);
                }
                int i6 = i2 + 2;
                byte b4 = bArr[i4];
                if (b4 > -65) {
                    return -1;
                }
                if ((((b4 + 112) + (b2 << 28)) >> 30) != 0) {
                    return -1;
                }
                int i7 = i2 + 3;
                if (bArr[i6] > -65) {
                    return -1;
                }
                i2 += 4;
                if (bArr[i7] > -65) {
                    return -1;
                }
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.vision.zzme
    public final int b(String str, byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        char cCharAt;
        int length = str.length();
        int i6 = i3 + i2;
        int i7 = 0;
        while (i7 < length && (i5 = i7 + i2) < i6 && (cCharAt = str.charAt(i7)) < 128) {
            bArr[i5] = (byte) cCharAt;
            i7++;
        }
        if (i7 == length) {
            return i2 + length;
        }
        int i8 = i2 + i7;
        while (i7 < length) {
            char cCharAt2 = str.charAt(i7);
            if (cCharAt2 < 128 && i8 < i6) {
                bArr[i8] = (byte) cCharAt2;
                i8++;
            } else if (cCharAt2 < 2048 && i8 <= i6 - 2) {
                int i9 = i8 + 1;
                bArr[i8] = (byte) ((cCharAt2 >>> 6) | 960);
                i8 += 2;
                bArr[i9] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i8 > i6 - 3) {
                    if (i8 > i6 - 4) {
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i4 = i7 + 1) == str.length() || !Character.isSurrogatePair(cCharAt2, str.charAt(i4)))) {
                            throw new zzmg(i7, length);
                        }
                        StringBuilder sb = new StringBuilder(37);
                        sb.append("Failed writing ");
                        sb.append(cCharAt2);
                        sb.append(" at index ");
                        sb.append(i8);
                        throw new ArrayIndexOutOfBoundsException(sb.toString());
                    }
                    int i10 = i7 + 1;
                    if (i10 != str.length()) {
                        char cCharAt3 = str.charAt(i10);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            bArr[i8] = (byte) ((codePoint >>> 18) | 240);
                            bArr[i8 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i11 = i8 + 3;
                            bArr[i8 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i8 += 4;
                            bArr[i11] = (byte) ((codePoint & 63) | 128);
                            i7 = i10;
                        } else {
                            i7 = i10;
                        }
                    }
                    throw new zzmg(i7 - 1, length);
                }
                bArr[i8] = (byte) ((cCharAt2 >>> '\f') | Camera.DEFAULT_PREVIEW_HEIGHT);
                int i12 = i8 + 2;
                bArr[i8 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                i8 += 3;
                bArr[i12] = (byte) ((cCharAt2 & '?') | 128);
            }
            i7++;
        }
        return i8;
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
            byte b2 = bArr[i2];
            if (b2 < 0) {
                break;
            }
            i2++;
            cArr[i5] = (char) b2;
            i5++;
        }
        int i6 = i5;
        while (i2 < i4) {
            int i7 = i2 + 1;
            byte b3 = bArr[i2];
            if (b3 >= 0) {
                int i8 = i6 + 1;
                cArr[i6] = (char) b3;
                int i9 = i7;
                while (i9 < i4) {
                    byte b4 = bArr[i9];
                    if (b4 < 0) {
                        break;
                    }
                    i9++;
                    cArr[i8] = (char) b4;
                    i8++;
                }
                i6 = i8;
                i2 = i9;
            } else if (b3 < -32) {
                if (i7 >= i4) {
                    throw zzjk.e();
                }
                i2 += 2;
                zzmf.c(b3, bArr[i7], cArr, i6);
                i6++;
            } else if (b3 < -16) {
                if (i7 >= i4 - 1) {
                    throw zzjk.e();
                }
                int i10 = i2 + 2;
                i2 += 3;
                zzmf.b(b3, bArr[i7], bArr[i10], cArr, i6);
                i6++;
            } else {
                if (i7 >= i4 - 2) {
                    throw zzjk.e();
                }
                byte b5 = bArr[i7];
                int i11 = i2 + 3;
                byte b6 = bArr[i2 + 2];
                i2 += 4;
                zzmf.a(b3, b5, b6, bArr[i11], cArr, i6);
                i6 += 2;
            }
        }
        return new String(cArr, 0, i6);
    }
}
