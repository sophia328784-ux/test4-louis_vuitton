package com.google.android.gms.internal.measurement;

import com.sightcall.uvc.Camera;
import defpackage.n91;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzagl {
    static {
        int i2 = zzacf.f30358a;
    }

    public static boolean a(int i2, int i3, byte[] bArr) {
        while (i2 < i3 && bArr[i2] >= 0) {
            i2++;
        }
        if (i2 >= i3) {
            return true;
        }
        while (i2 < i3) {
            int i4 = i2 + 1;
            byte b2 = bArr[i2];
            if (b2 >= 0) {
                i2 = i4;
            } else {
                if (b2 < -32) {
                    if (i4 < i3 && b2 >= -62) {
                        i2 += 2;
                        if (bArr[i4] > -65) {
                        }
                    }
                    return false;
                }
                if (b2 >= -16) {
                    if (i4 >= i3 - 2) {
                        return false;
                    }
                    int i5 = i2 + 2;
                    byte b3 = bArr[i4];
                    if (b3 <= -65) {
                        if ((((b3 + 112) + (b2 << 28)) >> 30) == 0) {
                            int i6 = i2 + 3;
                            if (bArr[i5] <= -65) {
                                i2 += 4;
                                if (bArr[i6] > -65) {
                                }
                            }
                        }
                    }
                    return false;
                }
                if (i4 >= i3 - 1) {
                    return false;
                }
                int i7 = i2 + 2;
                byte b4 = bArr[i4];
                if (b4 > -65 || (b2 == -32 && b4 < -96)) {
                    return false;
                }
                if (b2 == -19 && b4 >= -96) {
                    return false;
                }
                i2 += 3;
                if (bArr[i7] > -65) {
                    return false;
                }
            }
        }
        return true;
    }

    public static int b(String str) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i3 < length && str.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (i3 < length) {
            char cCharAt = str.charAt(i3);
            if (cCharAt >= 2048) {
                try {
                    int length2 = str.length();
                    while (i3 < length2) {
                        char cCharAt2 = str.charAt(i3);
                        if (cCharAt2 < 2048) {
                            i2 += (127 - cCharAt2) >>> 31;
                        } else {
                            i2 += 2;
                            if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                                if (Character.codePointAt(str, i3) < 65536) {
                                    throw new zzagk(zzacg.a(length2, i3, (byte) 32, "Unpaired surrogate at index ", " of "));
                                }
                                i3++;
                            }
                        }
                        i3++;
                    }
                    i4 += i2;
                    break;
                } catch (zzagk unused) {
                    return str.getBytes(StandardCharsets.UTF_8).length;
                }
            }
            i4 += (127 - cCharAt) >>> 31;
            i3++;
        }
        if (i4 >= length) {
            return i4;
        }
        long j2 = ((long) i4) + 4294967296L;
        StringBuilder sb = new StringBuilder(String.valueOf(j2).length() + 34);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(j2);
        throw new IllegalArgumentException(sb.toString());
    }

    public static int c(String str, byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int length;
        int i6;
        char cCharAt;
        int length2 = str.length();
        int i7 = 0;
        while (true) {
            i4 = i2 + i3;
            if (i7 >= length2 || (i6 = i7 + i2) >= i4 || (cCharAt = str.charAt(i7)) >= 128) {
                break;
            }
            bArr[i6] = (byte) cCharAt;
            i7++;
        }
        if (i7 == length2) {
            return i2 + length2;
        }
        int i8 = i2 + i7;
        while (i7 < length2) {
            char cCharAt2 = str.charAt(i7);
            if (cCharAt2 < 128 && i8 < i4) {
                bArr[i8] = (byte) cCharAt2;
                i8++;
            } else if (cCharAt2 < 2048 && i8 <= i4 - 2) {
                bArr[i8] = (byte) ((cCharAt2 >>> 6) | 960);
                bArr[i8 + 1] = (byte) ((cCharAt2 & '?') | 128);
                i8 += 2;
            } else {
                if ((cCharAt2 >= 55296 && cCharAt2 <= 57343) || i8 > i4 - 3) {
                    if (i8 <= i4 - 4) {
                        i7++;
                        if (i7 != str.length()) {
                            char cCharAt3 = str.charAt(i7);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int i9 = i8 + 3;
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                bArr[i8] = (byte) ((codePoint >>> 18) | 240);
                                bArr[i8 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                bArr[i8 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i8 += 4;
                                bArr[i9] = (byte) ((codePoint & 63) | 128);
                            }
                        }
                        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
                        length = bytes.length;
                        if (length - i2 > i3) {
                            throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
                        }
                        System.arraycopy(bytes, 0, bArr, i2, length);
                    } else {
                        if (cCharAt2 < 55296 || cCharAt2 > 57343 || ((i5 = i7 + 1) != str.length() && Character.isSurrogatePair(cCharAt2, str.charAt(i5)))) {
                            throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
                        }
                        byte[] bytes2 = str.getBytes(StandardCharsets.UTF_8);
                        length = bytes2.length;
                        if (length - i2 > i3) {
                            throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
                        }
                        System.arraycopy(bytes2, 0, bArr, i2, length);
                    }
                    return i2 + length;
                }
                bArr[i8] = (byte) ((cCharAt2 >>> '\f') | Camera.DEFAULT_PREVIEW_HEIGHT);
                bArr[i8 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                bArr[i8 + 2] = (byte) ((cCharAt2 & '?') | 128);
                i8 += 3;
            }
            i7++;
        }
        return i8;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x008e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x0090  */
    /* JADX WARN: Code duplicated, block: B:44:0x0091 A[PHI: r4
      0x0091: PHI (r4v6 byte) = (r4v5 byte), (r4v9 byte) binds: [B:41:0x008c, B:43:0x0090] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:46:0x0097  */
    /* JADX WARN: Code duplicated, block: B:84:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x00a9 A[SYNTHETIC] */
    public static String d(int i2, int i3, byte[] bArr) throws zzaeh {
        if (i3 == 0) {
            return "";
        }
        int length = bArr.length;
        if ((((length - i2) - i3) | i2 | i3) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i2), Integer.valueOf(i3)));
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
        while (i2 < i4) {
            int i6 = i2 + 1;
            byte b3 = bArr[i2];
            if (b3 >= 0) {
                cArr[i5] = (char) b3;
                i5++;
                i2 = i6;
                while (i2 < i4) {
                    byte b4 = bArr[i2];
                    if (b4 < 0) {
                        break;
                    }
                    i2++;
                    cArr[i5] = (char) b4;
                    i5++;
                }
            } else {
                if (b3 >= -32) {
                    if (b3 >= -16) {
                        if (i6 >= i4 - 2) {
                            n91.c("Protocol message had invalid UTF-8.");
                            return null;
                        }
                        byte b5 = bArr[i6];
                        int i7 = i2 + 3;
                        byte b6 = bArr[i2 + 2];
                        i2 += 4;
                        byte b7 = bArr[i7];
                        if (!zzagh.a(b5)) {
                            if ((((b5 + 112) + (b3 << 28)) >> 30) == 0 && !zzagh.a(b6) && !zzagh.a(b7)) {
                                int i8 = ((b5 & 63) << 12) | ((b3 & 7) << 18) | ((b6 & 63) << 6) | (b7 & 63);
                                cArr[i5] = (char) ((i8 >>> 10) + 55232);
                                cArr[i5 + 1] = (char) ((i8 & 1023) + 56320);
                                i5 += 2;
                            }
                        }
                        n91.c("Protocol message had invalid UTF-8.");
                        return null;
                    }
                    if (i6 >= i4 - 1) {
                        n91.c("Protocol message had invalid UTF-8.");
                        return null;
                    }
                    int i9 = i5 + 1;
                    int i10 = i2 + 2;
                    byte b8 = bArr[i6];
                    i2 += 3;
                    byte b9 = bArr[i10];
                    if (!zzagh.a(b8)) {
                        if (b3 != -32) {
                            if (b3 != -19) {
                                if (!zzagh.a(b9)) {
                                    cArr[i5] = (char) (((b8 & 63) << 6) | ((b3 & 15) << 12) | (b9 & 63));
                                    i5 = i9;
                                }
                            } else if (b8 < -96) {
                                b3 = -19;
                                if (!zzagh.a(b9)) {
                                    cArr[i5] = (char) (((b8 & 63) << 6) | ((b3 & 15) << 12) | (b9 & 63));
                                    i5 = i9;
                                }
                            }
                        } else if (b8 >= -96) {
                            b3 = -32;
                            if (b3 != -19) {
                                if (!zzagh.a(b9)) {
                                    cArr[i5] = (char) (((b8 & 63) << 6) | ((b3 & 15) << 12) | (b9 & 63));
                                    i5 = i9;
                                }
                            } else if (b8 < -96) {
                                b3 = -19;
                                if (!zzagh.a(b9)) {
                                    cArr[i5] = (char) (((b8 & 63) << 6) | ((b3 & 15) << 12) | (b9 & 63));
                                    i5 = i9;
                                }
                            }
                        }
                    }
                    n91.c("Protocol message had invalid UTF-8.");
                    return null;
                }
                if (i6 >= i4) {
                    n91.c("Protocol message had invalid UTF-8.");
                    return null;
                }
                int i11 = i5 + 1;
                i2 += 2;
                byte b10 = bArr[i6];
                if (b3 < -62 || zzagh.a(b10)) {
                    n91.c("Protocol message had invalid UTF-8.");
                    return null;
                }
                cArr[i5] = (char) ((b10 & 63) | ((b3 & 31) << 6));
                i5 = i11;
            }
        }
        return new String(cArr, 0, i5);
    }
}
