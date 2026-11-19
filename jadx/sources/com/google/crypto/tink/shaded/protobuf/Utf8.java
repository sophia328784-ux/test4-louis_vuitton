package com.google.crypto.tink.shaded.protobuf;

import com.sightcall.uvc.Camera;
import defpackage.a61;
import defpackage.o60;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
abstract class Utf8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Processor f34271a;

    public static class DecodeUtil {
        public static boolean a(byte b2) {
            return b2 > -65;
        }
    }

    public static abstract class Processor {
        public abstract String a(int i2, int i3, byte[] bArr);

        public abstract int b(String str, byte[] bArr, int i2, int i3);

        public final boolean c(int i2, int i3, byte[] bArr) {
            return d(i2, i3, bArr) == 0;
        }

        public abstract int d(int i2, int i3, byte[] bArr);
    }

    public static final class SafeProcessor extends Processor {
        @Override // com.google.crypto.tink.shaded.protobuf.Utf8.Processor
        public final String a(int i2, int i3, byte[] bArr) throws InvalidProtocolBufferException {
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
            while (i2 < i4) {
                int i6 = i2 + 1;
                byte b3 = bArr[i2];
                if (b3 >= 0) {
                    int i7 = i5 + 1;
                    cArr[i5] = (char) b3;
                    while (i6 < i4) {
                        byte b4 = bArr[i6];
                        if (b4 < 0) {
                            break;
                        }
                        i6++;
                        cArr[i7] = (char) b4;
                        i7++;
                    }
                    i5 = i7;
                    i2 = i6;
                } else if (b3 < -32) {
                    if (i6 >= i4) {
                        throw InvalidProtocolBufferException.b();
                    }
                    i2 += 2;
                    byte b5 = bArr[i6];
                    int i8 = i5 + 1;
                    if (b3 < -62 || DecodeUtil.a(b5)) {
                        throw InvalidProtocolBufferException.b();
                    }
                    cArr[i5] = (char) ((b5 & 63) | ((b3 & 31) << 6));
                    i5 = i8;
                } else {
                    if (b3 >= -16) {
                        if (i6 >= i4 - 2) {
                            throw InvalidProtocolBufferException.b();
                        }
                        byte b6 = bArr[i6];
                        int i9 = i2 + 3;
                        byte b7 = bArr[i2 + 2];
                        i2 += 4;
                        byte b8 = bArr[i9];
                        int i10 = i5 + 1;
                        if (!DecodeUtil.a(b6)) {
                            if ((((b6 + 112) + (b3 << 28)) >> 30) == 0 && !DecodeUtil.a(b7) && !DecodeUtil.a(b8)) {
                                int i11 = ((b6 & 63) << 12) | ((b3 & 7) << 18) | ((b7 & 63) << 6) | (b8 & 63);
                                cArr[i5] = (char) ((i11 >>> 10) + 55232);
                                cArr[i10] = (char) ((i11 & 1023) + 56320);
                                i5 += 2;
                            }
                        }
                        throw InvalidProtocolBufferException.b();
                    }
                    if (i6 >= i4 - 1) {
                        throw InvalidProtocolBufferException.b();
                    }
                    int i12 = i2 + 2;
                    byte b9 = bArr[i6];
                    i2 += 3;
                    byte b10 = bArr[i12];
                    int i13 = i5 + 1;
                    if (DecodeUtil.a(b9) || ((b3 == -32 && b9 < -96) || ((b3 == -19 && b9 >= -96) || DecodeUtil.a(b10)))) {
                        throw InvalidProtocolBufferException.b();
                    }
                    cArr[i5] = (char) (((b9 & 63) << 6) | ((b3 & 15) << 12) | (b10 & 63));
                    i5 = i13;
                }
            }
            return new String(cArr, 0, i5);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.Utf8.Processor
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
                                throw new UnpairedSurrogateException(i7, length);
                            }
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i8);
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
                        throw new UnpairedSurrogateException(i7 - 1, length);
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

        @Override // com.google.crypto.tink.shaded.protobuf.Utf8.Processor
        public final int d(int i2, int i3, byte[] bArr) {
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
                        return Utf8.a(i4, i3, bArr);
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
                        return Utf8.a(i4, i3, bArr);
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
    }

    public static class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int i2, int i3) {
            super(o60.h(i2, i3, "Unpaired surrogate at index ", " of "));
        }
    }

    public static final class UnsafeProcessor extends Processor {
        public static int e(long j2, byte[] bArr, int i2, int i3) {
            if (i3 == 0) {
                Processor processor = Utf8.f34271a;
                if (i2 > -12) {
                    return -1;
                }
                return i2;
            }
            if (i3 == 1) {
                return Utf8.c(i2, UnsafeUtil.g(j2, bArr));
            }
            if (i3 == 2) {
                return Utf8.d(i2, UnsafeUtil.g(j2, bArr), UnsafeUtil.g(j2 + 1, bArr));
            }
            a61.h();
            return 0;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.Utf8.Processor
        public final String a(int i2, int i3, byte[] bArr) throws InvalidProtocolBufferException {
            Charset charset = Internal.f34190a;
            String str = new String(bArr, i2, i3, charset);
            if (str.contains("�") && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i2, i3 + i2))) {
                throw InvalidProtocolBufferException.b();
            }
            return str;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.Utf8.Processor
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
                throw new ArrayIndexOutOfBoundsException("Failed writing " + str.charAt(length - 1) + " at index " + (i2 + i3));
            }
            int i5 = 0;
            while (true) {
                j2 = 1;
                if (i5 >= length || (cCharAt = str.charAt(i5)) >= 128) {
                    break;
                }
                UnsafeUtil.k(bArr, (byte) cCharAt, j5);
                i5++;
                j5 = 1 + j5;
            }
            if (i5 == length) {
                return (int) j5;
            }
            while (i5 < length) {
                char cCharAt2 = str.charAt(i5);
                if (cCharAt2 < 128 && j5 < j6) {
                    UnsafeUtil.k(bArr, (byte) cCharAt2, j5);
                    j4 = j6;
                    j3 = j2;
                    j5 += j2;
                } else if (cCharAt2 >= 2048 || j5 > j6 - 2) {
                    j3 = j2;
                    if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || j5 > j6 - 3) {
                        j4 = j6;
                        if (j5 > j4 - 4) {
                            if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i4 = i5 + 1) == length || !Character.isSurrogatePair(cCharAt2, str.charAt(i4)))) {
                                throw new UnpairedSurrogateException(i5, length);
                            }
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + j5);
                        }
                        int i6 = i5 + 1;
                        if (i6 != length) {
                            char cCharAt3 = str.charAt(i6);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                UnsafeUtil.k(bArr, (byte) ((codePoint >>> 18) | 240), j5);
                                UnsafeUtil.k(bArr, (byte) (((codePoint >>> 12) & 63) | 128), j5 + j3);
                                long j7 = j5 + 3;
                                UnsafeUtil.k(bArr, (byte) (((codePoint >>> 6) & 63) | 128), j5 + 2);
                                j5 += 4;
                                UnsafeUtil.k(bArr, (byte) ((codePoint & 63) | 128), j7);
                                i5 = i6;
                            } else {
                                i5 = i6;
                            }
                        }
                        throw new UnpairedSurrogateException(i5 - 1, length);
                    }
                    UnsafeUtil.k(bArr, (byte) ((cCharAt2 >>> '\f') | Camera.DEFAULT_PREVIEW_HEIGHT), j5);
                    long j8 = j5 + 2;
                    j4 = j6;
                    UnsafeUtil.k(bArr, (byte) (((cCharAt2 >>> 6) & 63) | 128), j5 + j3);
                    j5 += 3;
                    UnsafeUtil.k(bArr, (byte) ((cCharAt2 & '?') | 128), j8);
                } else {
                    j3 = j2;
                    long j9 = j5 + j3;
                    UnsafeUtil.k(bArr, (byte) ((cCharAt2 >>> 6) | 960), j5);
                    j5 += 2;
                    UnsafeUtil.k(bArr, (byte) ((cCharAt2 & '?') | 128), j9);
                    j4 = j6;
                }
                i5++;
                j2 = j3;
                j6 = j4;
            }
            return (int) j5;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.Utf8.Processor
        public final int d(int i2, int i3, byte[] bArr) {
            int i4;
            if ((i2 | i3 | (bArr.length - i3)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
            }
            long j2 = i2;
            int i5 = (int) (((long) i3) - j2);
            if (i5 >= 16) {
                int i6 = 8 - (((int) j2) & 7);
                long j3 = j2;
                i4 = 0;
                while (true) {
                    if (i4 >= i6) {
                        while (true) {
                            int i7 = i4 + 8;
                            if (i7 > i5) {
                                break;
                            }
                            if ((UnsafeUtil.f34267c.h(UnsafeUtil.f34269f + j3, bArr) & (-9187201950435737472L)) != 0) {
                                break;
                            }
                            j3 += 8;
                            i4 = i7;
                        }
                        while (true) {
                            if (i4 >= i5) {
                                i4 = i5;
                                break;
                            }
                            long j4 = j3 + 1;
                            if (UnsafeUtil.g(j3, bArr) < 0) {
                                break;
                            }
                            i4++;
                            j3 = j4;
                        }
                    } else {
                        long j5 = j3 + 1;
                        if (UnsafeUtil.g(j3, bArr) < 0) {
                            break;
                        }
                        i4++;
                        j3 = j5;
                    }
                }
            } else {
                i4 = 0;
            }
            int i8 = i5 - i4;
            long j6 = j2 + ((long) i4);
            while (true) {
                byte bG = 0;
                while (i8 > 0) {
                    long j7 = j6 + 1;
                    bG = UnsafeUtil.g(j6, bArr);
                    if (bG < 0) {
                        j6 = j7;
                        break;
                    }
                    i8--;
                    j6 = j7;
                }
                if (i8 == 0) {
                    return 0;
                }
                int i9 = i8 - 1;
                if (bG < -32) {
                    if (i9 == 0) {
                        return bG;
                    }
                    i8 -= 2;
                    if (bG < -62) {
                        return -1;
                    }
                    long j8 = j6 + 1;
                    if (UnsafeUtil.g(j6, bArr) > -65) {
                        return -1;
                    }
                    j6 = j8;
                } else if (bG < -16) {
                    if (i9 < 2) {
                        return e(j6, bArr, bG, i9);
                    }
                    i8 -= 3;
                    long j9 = j6 + 1;
                    byte bG2 = UnsafeUtil.g(j6, bArr);
                    if (bG2 > -65) {
                        return -1;
                    }
                    if (bG == -32 && bG2 < -96) {
                        return -1;
                    }
                    if (bG == -19 && bG2 >= -96) {
                        return -1;
                    }
                    j6 += 2;
                    if (UnsafeUtil.g(j9, bArr) > -65) {
                        return -1;
                    }
                } else {
                    if (i9 < 3) {
                        return e(j6, bArr, bG, i9);
                    }
                    i8 -= 4;
                    long j10 = j6 + 1;
                    byte bG3 = UnsafeUtil.g(j6, bArr);
                    if (bG3 > -65) {
                        return -1;
                    }
                    if ((((bG3 + 112) + (bG << 28)) >> 30) != 0) {
                        return -1;
                    }
                    long j11 = 2 + j6;
                    if (UnsafeUtil.g(j10, bArr) > -65) {
                        return -1;
                    }
                    j6 += 3;
                    if (UnsafeUtil.g(j11, bArr) > -65) {
                        return -1;
                    }
                }
            }
        }
    }

    static {
        f34271a = (UnsafeUtil.f34268e && UnsafeUtil.d && !Android.a()) ? new UnsafeProcessor() : new SafeProcessor();
    }

    public static int a(int i2, int i3, byte[] bArr) {
        byte b2 = bArr[i2 - 1];
        int i4 = i3 - i2;
        if (i4 == 0) {
            if (b2 > -12) {
                return -1;
            }
            return b2;
        }
        if (i4 == 1) {
            return c(b2, bArr[i2]);
        }
        if (i4 == 2) {
            return d(b2, bArr[i2], bArr[i2 + 1]);
        }
        a61.h();
        return 0;
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
                int length2 = str.length();
                while (i3 < length2) {
                    char cCharAt2 = str.charAt(i3);
                    if (cCharAt2 < 2048) {
                        i2 += (127 - cCharAt2) >>> 31;
                    } else {
                        i2 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(str, i3) < 65536) {
                                throw new UnpairedSurrogateException(i3, length2);
                            }
                            i3++;
                        }
                    }
                    i3++;
                }
                i4 += i2;
                break;
            }
            i4 += (127 - cCharAt) >>> 31;
            i3++;
        }
        if (i4 >= length) {
            return i4;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) i4) + 4294967296L));
    }

    public static int c(int i2, int i3) {
        if (i2 > -12 || i3 > -65) {
            return -1;
        }
        return i2 ^ (i3 << 8);
    }

    public static int d(int i2, int i3, int i4) {
        if (i2 > -12 || i3 > -65 || i4 > -65) {
            return -1;
        }
        return (i2 ^ (i3 << 8)) ^ (i4 << 16);
    }
}
