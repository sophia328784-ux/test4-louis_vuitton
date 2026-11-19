package org.spongycastle.math.ec;

import com.linkplay.medialib.ContentTree;
import defpackage.md;
import java.math.BigInteger;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes5.dex */
class LongArray implements Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final short[] f77942c = {0, 1, 4, 5, 16, 17, 20, 21, 64, 65, 68, 69, 80, 81, 84, 85, 256, 257, 260, 261, 272, 273, 276, 277, 320, 321, 324, 325, 336, 337, 340, 341, 1024, 1025, 1028, 1029, 1040, 1041, 1044, 1045, 1088, 1089, 1092, 1093, 1104, 1105, 1108, 1109, 1280, 1281, 1284, 1285, 1296, 1297, 1300, 1301, 1344, 1345, 1348, 1349, 1360, 1361, 1364, 1365, 4096, 4097, 4100, 4101, 4112, 4113, 4116, 4117, 4160, 4161, 4164, 4165, 4176, 4177, 4180, 4181, 4352, 4353, 4356, 4357, 4368, 4369, 4372, 4373, 4416, 4417, 4420, 4421, 4432, 4433, 4436, 4437, 5120, 5121, 5124, 5125, 5136, 5137, 5140, 5141, 5184, 5185, 5188, 5189, 5200, 5201, 5204, 5205, 5376, 5377, 5380, 5381, 5392, 5393, 5396, 5397, 5440, 5441, 5444, 5445, 5456, 5457, 5460, 5461, 16384, 16385, 16388, 16389, 16400, 16401, 16404, 16405, 16448, 16449, 16452, 16453, 16464, 16465, 16468, 16469, 16640, 16641, 16644, 16645, 16656, 16657, 16660, 16661, 16704, 16705, 16708, 16709, 16720, 16721, 16724, 16725, 17408, 17409, 17412, 17413, 17424, 17425, 17428, 17429, 17472, 17473, 17476, 17477, 17488, 17489, 17492, 17493, 17664, 17665, 17668, 17669, 17680, 17681, 17684, 17685, 17728, 17729, 17732, 17733, 17744, 17745, 17748, 17749, 20480, 20481, 20484, 20485, 20496, 20497, 20500, 20501, 20544, 20545, 20548, 20549, 20560, 20561, 20564, 20565, 20736, 20737, 20740, 20741, 20752, 20753, 20756, 20757, 20800, 20801, 20804, 20805, 20816, 20817, 20820, 20821, 21504, 21505, 21508, 21509, 21520, 21521, 21524, 21525, 21568, 21569, 21572, 21573, 21584, 21585, 21588, 21589, 21760, 21761, 21764, 21765, 21776, 21777, 21780, 21781, 21824, 21825, 21828, 21829, 21840, 21841, 21844, 21845};
    public static final byte[] d = {0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f77943b;

    public LongArray(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0) {
            md.n("invalid F2m field value");
            throw null;
        }
        int i2 = 1;
        if (bigInteger.signum() == 0) {
            this.f77943b = new long[]{0};
            return;
        }
        byte[] byteArray = bigInteger.toByteArray();
        int length = byteArray.length;
        if (byteArray[0] == 0) {
            length--;
        } else {
            i2 = 0;
        }
        int i3 = (length + 7) / 8;
        this.f77943b = new long[i3];
        int i4 = i3 - 1;
        int i5 = (length % 8) + i2;
        if (i2 < i5) {
            long j2 = 0;
            while (i2 < i5) {
                j2 = (j2 << 8) | ((long) (byteArray[i2] & 255));
                i2++;
            }
            this.f77943b[i4] = j2;
            i4 = i3 - 2;
        }
        while (i4 >= 0) {
            int i6 = 0;
            long j3 = 0;
            while (i6 < 8) {
                j3 = (j3 << 8) | ((long) (byteArray[i2] & 255));
                i6++;
                i2++;
            }
            this.f77943b[i4] = j3;
            i4--;
        }
    }

    public static void a(long[] jArr, int i2, long[] jArr2, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i2 + i5;
            jArr[i6] = jArr[i6] ^ jArr2[i3 + i5];
        }
    }

    public static long d(long[] jArr, int i2, long[] jArr2, int i3, int i4, int i5) {
        int i6 = 64 - i5;
        long j2 = 0;
        for (int i7 = 0; i7 < i4; i7++) {
            long j3 = jArr2[i3 + i7];
            int i8 = i2 + i7;
            jArr[i8] = (j2 | (j3 << i5)) ^ jArr[i8];
            j2 = j3 >>> i6;
        }
        return j2;
    }

    public static int e(long j2) {
        int i2;
        int i3 = 32;
        int i4 = (int) (j2 >>> 32);
        if (i4 == 0) {
            i4 = (int) j2;
            i3 = 0;
        }
        int i5 = i4 >>> 16;
        byte[] bArr = d;
        if (i5 == 0) {
            int i6 = i4 >>> 8;
            i2 = i6 == 0 ? bArr[i4] : bArr[i6] + 8;
        } else {
            int i7 = i4 >>> 24;
            i2 = i7 == 0 ? bArr[i5] + 16 : bArr[i7] + 24;
        }
        return i3 + i2;
    }

    public static void h(long[] jArr, int i2) {
        int i3 = i2 >>> 6;
        jArr[i3] = (1 << (i2 & 63)) ^ jArr[i3];
    }

    public static void i(int i2, long[] jArr, int i3, long[] jArr2, int i4) {
        int i5 = i4 >>> 6;
        int i6 = i4 & 63;
        if (i6 == 0) {
            a(jArr, i5, jArr2, i2, i3);
            return;
        }
        int i7 = i3;
        int i8 = i5 + 1;
        int i9 = 64 - i6;
        int i10 = 64 - i9;
        long j2 = 0;
        while (true) {
            i7--;
            if (i7 < 0) {
                jArr[i5] = jArr[i5] ^ j2;
                return;
            }
            long j3 = jArr2[i2 + i7];
            int i11 = i8 + i7;
            jArr[i11] = (j2 | (j3 >>> i9)) ^ jArr[i11];
            j2 = j3 << i10;
        }
    }

    public static void j(long j2, long[] jArr, int i2) {
        int i3 = i2 >>> 6;
        int i4 = i2 & 63;
        if (i4 == 0) {
            jArr[i3] = j2 ^ jArr[i3];
            return;
        }
        jArr[i3] = jArr[i3] ^ (j2 << i4);
        long j3 = j2 >>> (64 - i4);
        if (j3 != 0) {
            int i5 = i3 + 1;
            jArr[i5] = j3 ^ jArr[i5];
        }
    }

    public static long l(int i2) {
        short[] sArr = f77942c;
        int i3 = sArr[i2 & 255] | (sArr[(i2 >>> 8) & 255] << 16);
        return ((((long) ((sArr[i2 >>> 24] << 16) | sArr[(i2 >>> 16) & 255])) & BodyPartID.bodyIdMax) << 32) | (BodyPartID.bodyIdMax & ((long) i3));
    }

    public static void w(long j2, long[] jArr, int i2, long[] jArr2) {
        int i3 = i2;
        long[] jArr3 = jArr2;
        if ((j2 & 1) != 0) {
            a(jArr3, 0, jArr, 0, i3);
        }
        long j3 = j2;
        int i4 = 1;
        while (true) {
            j3 >>>= 1;
            if (j3 == 0) {
                return;
            }
            if ((j3 & 1) != 0) {
                long jD = d(jArr3, 0, jArr, 0, i3, i4);
                if (jD != 0) {
                    jArr2[i2] = jArr2[i2] ^ jD;
                }
            }
            i4++;
            i3 = i2;
            jArr3 = jArr2;
        }
    }

    public static int x(long[] jArr, int i2, int i3, int[] iArr) {
        int i4 = (i3 + 63) >>> 6;
        if (i2 < i4) {
            return i2;
        }
        int i5 = i2 << 6;
        int iMin = Math.min(i5, (i3 << 1) - 1);
        int i6 = i5 - iMin;
        while (i6 >= 64) {
            i2--;
            i6 -= 64;
        }
        int length = iArr.length;
        int i7 = iArr[length - 1];
        int i8 = length > 1 ? iArr[length - 2] : 0;
        int iMax = Math.max(i3, i7 + 64);
        int iMin2 = (Math.min(iMin - iMax, i3 - i8) + i6) >> 6;
        if (iMin2 > 1) {
            int i9 = i2 - iMin2;
            iMin = i9 << 6;
            int i10 = iMin - i3;
            int length2 = iArr.length;
            while (true) {
                length2--;
                if (length2 < 0) {
                    break;
                }
                i(i9, jArr, i2 - i9, jArr, iArr[length2] + i10);
            }
            i(i9, jArr, i2 - i9, jArr, i10);
            while (i2 > i9) {
                i2--;
                jArr[i2] = 0;
            }
        }
        if (iMin > iMax) {
            int i11 = iMax >>> 6;
            while (true) {
                i2--;
                if (i2 <= i11) {
                    break;
                }
                long j2 = jArr[i2];
                if (j2 != 0) {
                    jArr[i2] = 0;
                    int i12 = (i2 << 6) - i3;
                    int length3 = iArr.length;
                    while (true) {
                        length3--;
                        if (length3 < 0) {
                            break;
                        }
                        j(j2, jArr, iArr[length3] + i12);
                    }
                    j(j2, jArr, i12);
                }
            }
            int i13 = iMax & 63;
            long j3 = jArr[i11];
            long j4 = j3 >>> i13;
            if (j4 != 0) {
                jArr[i11] = j3 ^ (j4 << i13);
                int i14 = iMax - i3;
                int length4 = iArr.length;
                while (true) {
                    length4--;
                    if (length4 < 0) {
                        break;
                    }
                    j(j4, jArr, iArr[length4] + i14);
                }
                j(j4, jArr, i14);
            }
        } else {
            iMax = iMin;
        }
        if (iMax > i3) {
            while (true) {
                iMax--;
                if (iMax < i3) {
                    break;
                }
                if (((1 << (iMax & 63)) & jArr[iMax >>> 6]) != 0) {
                    h(jArr, iMax);
                    int i15 = iMax - i3;
                    int length5 = iArr.length;
                    while (true) {
                        length5--;
                        if (length5 < 0) {
                            break;
                        }
                        h(jArr, iArr[length5] + i15);
                    }
                    h(jArr, i15);
                }
            }
        }
        return i4;
    }

    public static void y(long[] jArr, int i2, long[] jArr2, int i3, int i4, int i5) {
        int i6 = 64 - i5;
        long j2 = 0;
        for (int i7 = 0; i7 < i4; i7++) {
            long j3 = jArr[i2 + i7];
            jArr2[i3 + i7] = j2 | (j3 << i5);
            j2 = j3 >>> i6;
        }
    }

    public final void b(LongArray longArray, int i2, int i3) {
        int i4 = (i2 + 63) >>> 6;
        int i5 = i3 >>> 6;
        int i6 = i3 & 63;
        long[] jArr = this.f77943b;
        if (i6 == 0) {
            a(jArr, i5, longArray.f77943b, 0, i4);
            return;
        }
        long jD = d(jArr, i5, longArray.f77943b, 0, i4, i6);
        if (jD != 0) {
            long[] jArr2 = this.f77943b;
            int i7 = i4 + i5;
            jArr2[i7] = jD ^ jArr2[i7];
        }
    }

    public final void c(LongArray longArray) {
        int iK = longArray.k();
        if (iK == 0) {
            return;
        }
        long[] jArr = this.f77943b;
        if (iK > jArr.length) {
            long[] jArr2 = new long[iK];
            System.arraycopy(jArr, 0, jArr2, 0, Math.min(jArr.length, iK));
            this.f77943b = jArr2;
        }
        a(this.f77943b, 0, longArray.f77943b, 0, iK);
    }

    public final Object clone() {
        long[] jArr;
        long[] jArr2 = this.f77943b;
        if (jArr2 == null) {
            jArr = null;
        } else {
            long[] jArr3 = new long[jArr2.length];
            System.arraycopy(jArr2, 0, jArr3, 0, jArr2.length);
            jArr = jArr3;
        }
        return new LongArray(jArr);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof LongArray)) {
            return false;
        }
        LongArray longArray = (LongArray) obj;
        int iK = k();
        if (longArray.k() != iK) {
            return false;
        }
        for (int i2 = 0; i2 < iK; i2++) {
            if (this.f77943b[i2] != longArray.f77943b[i2]) {
                return false;
            }
        }
        return true;
    }

    public final int f() {
        int length = this.f77943b.length;
        while (length != 0) {
            length--;
            long j2 = this.f77943b[length];
            if (j2 != 0) {
                return (length << 6) + e(j2);
            }
        }
        return 0;
    }

    public final int g(int i2) {
        int i3 = (i2 + 62) >>> 6;
        while (i3 != 0) {
            i3--;
            long j2 = this.f77943b[i3];
            if (j2 != 0) {
                return (i3 << 6) + e(j2);
            }
        }
        return 0;
    }

    public final int hashCode() {
        int iK = k();
        int i2 = 1;
        for (int i3 = 0; i3 < iK; i3++) {
            long j2 = this.f77943b[i3];
            i2 = (((i2 * 31) ^ ((int) j2)) * 31) ^ ((int) (j2 >>> 32));
        }
        return i2;
    }

    public final int k() {
        long[] jArr = this.f77943b;
        int iMin = Math.min(jArr.length, jArr.length);
        if (iMin >= 1) {
            if (jArr[0] != 0) {
                while (true) {
                    int i2 = iMin - 1;
                    if (jArr[i2] != 0) {
                        return iMin;
                    }
                    iMin = i2;
                }
            } else {
                while (true) {
                    int i3 = iMin - 1;
                    if (jArr[i3] != 0) {
                        return iMin;
                    }
                    if (i3 > 0) {
                        iMin = i3;
                    }
                }
            }
        }
        return 0;
    }

    public final String toString() {
        int iK = k();
        if (iK == 0) {
            return ContentTree.ROOT_ID;
        }
        int i2 = iK - 1;
        StringBuffer stringBuffer = new StringBuffer(Long.toBinaryString(this.f77943b[i2]));
        while (true) {
            i2--;
            if (i2 < 0) {
                return stringBuffer.toString();
            }
            String binaryString = Long.toBinaryString(this.f77943b[i2]);
            int length = binaryString.length();
            if (length < 64) {
                stringBuffer.append("0000000000000000000000000000000000000000000000000000000000000000".substring(length));
            }
            stringBuffer.append(binaryString);
        }
    }

    public final boolean u() {
        long[] jArr = this.f77943b;
        if (jArr[0] != 1) {
            return false;
        }
        for (int i2 = 1; i2 < jArr.length; i2++) {
            if (jArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public final LongArray v(LongArray longArray) {
        int i2;
        int i3;
        LongArray longArray2;
        LongArray longArray3;
        long[] jArr;
        int iF = f();
        if (iF == 0) {
            return this;
        }
        int iF2 = longArray.f();
        if (iF2 == 0) {
            return longArray;
        }
        if (iF > iF2) {
            i3 = iF;
            i2 = iF2;
            longArray3 = this;
            longArray2 = longArray;
        } else {
            i2 = iF;
            i3 = iF2;
            longArray2 = this;
            longArray3 = longArray;
        }
        int i4 = (i2 + 63) >>> 6;
        int i5 = (i3 + 63) >>> 6;
        int i6 = ((i2 + i3) + 62) >>> 6;
        if (i4 == 1) {
            long j2 = longArray2.f77943b[0];
            if (j2 == 1) {
                return longArray3;
            }
            long[] jArr2 = new long[i6];
            w(j2, longArray3.f77943b, i5, jArr2);
            return new LongArray(jArr2, 0, i6);
        }
        int i7 = (i3 + 70) >>> 6;
        int[] iArr = new int[16];
        int i8 = i7 << 4;
        long[] jArr3 = new long[i8];
        iArr[1] = i7;
        System.arraycopy(longArray3.f77943b, 0, jArr3, i7, i5);
        int i9 = 2;
        int i10 = i7;
        while (i9 < 16) {
            int i11 = i10 + i7;
            iArr[i9] = i11;
            if ((i9 & 1) == 0) {
                y(jArr3, i11 >>> 1, jArr3, i11, i7, 1);
                jArr = jArr3;
            } else {
                jArr = jArr3;
                int i12 = i11 - i7;
                for (int i13 = 0; i13 < i7; i13++) {
                    jArr[i11 + i13] = jArr[i7 + i13] ^ jArr[i12 + i13];
                }
            }
            i9++;
            i10 = i11;
            jArr3 = jArr;
        }
        long[] jArr4 = jArr3;
        long[] jArr5 = new long[i8];
        y(jArr4, 0, jArr5, 0, i8, 4);
        long[] jArr6 = longArray2.f77943b;
        int i14 = i6 << 3;
        long[] jArr7 = new long[i14];
        for (int i15 = 0; i15 < i4; i15++) {
            long j3 = jArr6[i15];
            int i16 = i15;
            while (true) {
                int i17 = iArr[((int) j3) & 15];
                int i18 = iArr[((int) (j3 >>> 4)) & 15];
                for (int i19 = 0; i19 < i7; i19++) {
                    int i20 = i16 + i19;
                    jArr7[i20] = jArr7[i20] ^ (jArr4[i17 + i19] ^ jArr5[i18 + i19]);
                }
                j3 >>>= 8;
                if (j3 == 0) {
                    break;
                }
                i16 += i6;
            }
        }
        while (true) {
            int i21 = i14 - i6;
            if (i21 == 0) {
                return new LongArray(jArr7, 0, i6);
            }
            d(jArr7, i21 - i6, jArr7, i21, i6, 8);
            i14 = i21;
        }
    }

    public LongArray(long[] jArr) {
        this.f77943b = jArr;
    }

    public LongArray(long[] jArr, int i2, int i3) {
        if (i2 == 0 && i3 == jArr.length) {
            this.f77943b = jArr;
            return;
        }
        long[] jArr2 = new long[i3];
        this.f77943b = jArr2;
        System.arraycopy(jArr, i2, jArr2, 0, i3);
    }

    public LongArray(int i2) {
        this.f77943b = new long[i2];
    }
}
