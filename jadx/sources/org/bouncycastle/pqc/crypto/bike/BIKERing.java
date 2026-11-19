package org.bouncycastle.pqc.crypto.bike;

import defpackage.ct0;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
class BIKERing {
    private static final int PERMUTATION_CUTOFF = 64;
    private final int bits;
    private final Map<Integer, Integer> halfPowers;
    private final int size;
    private final int sizeExt;

    public BIKERing(int i2) {
        HashMap map = new HashMap();
        this.halfPowers = map;
        if (((-65535) & i2) != 1) {
            ct0.c();
            throw null;
        }
        this.bits = i2;
        int i3 = (i2 + 63) >>> 6;
        this.size = i3;
        this.sizeExt = i3 * 2;
        generateHalfPowersInv(map, i2);
    }

    private static int generateHalfPower(int i2, int i3, int i4) {
        int i5 = 1;
        while (i4 >= 32) {
            i5 = (int) ((((BodyPartID.bodyIdMax & ((long) (i3 * i5))) * ((long) i2)) + ((long) i5)) >>> 32);
            i4 -= 32;
        }
        if (i4 <= 0) {
            return i5;
        }
        return (int) ((((BodyPartID.bodyIdMax & ((long) ((i3 * i5) & ((-1) >>> (-i4))))) * ((long) i2)) + ((long) i5)) >>> i4);
    }

    private static void generateHalfPowersInv(Map<Integer, Integer> map, int i2) {
        int i3;
        int i4 = i2 - 2;
        int iNumberOfLeadingZeros = 32 - Integers.numberOfLeadingZeros(i4);
        int iInverse32 = Mod.inverse32(-i2);
        for (int i5 = 1; i5 < iNumberOfLeadingZeros; i5++) {
            int i6 = 1 << (i5 - 1);
            if (i6 >= 64 && !map.containsKey(Integers.valueOf(i6))) {
                map.put(Integers.valueOf(i6), Integers.valueOf(generateHalfPower(i2, iInverse32, i6)));
            }
            int i7 = 1 << i5;
            if ((i4 & i7) != 0 && (i3 = (i7 - 1) & i4) >= 64 && !map.containsKey(Integers.valueOf(i3))) {
                map.put(Integers.valueOf(i3), Integers.valueOf(generateHalfPower(i2, iInverse32, i3)));
            }
        }
    }

    private static int implModAdd(int i2, int i3, int i4) {
        int i5 = (i3 + i4) - i2;
        return i5 + (i2 & (i5 >> 31));
    }

    private static void implMulwAcc(long[] jArr, long j2, long j3, long[] jArr2, int i2) {
        long j4 = j2;
        jArr[1] = j3;
        for (int i3 = 2; i3 < 16; i3 += 2) {
            long j5 = jArr[i3 >>> 1] << 1;
            jArr[i3] = j5;
            jArr[i3 + 1] = j5 ^ j3;
        }
        int i4 = (int) j4;
        long j6 = jArr[i4 & 15] ^ (jArr[(i4 >>> 4) & 15] << 4);
        long j7 = 0;
        int i5 = 56;
        do {
            int i6 = (int) (j4 >>> i5);
            long j8 = jArr[i6 & 15] ^ (jArr[(i6 >>> 4) & 15] << 4);
            j6 ^= j8 << i5;
            j7 ^= j8 >>> (-i5);
            i5 -= 8;
        } while (i5 > 0);
        for (int i7 = 0; i7 < 7; i7++) {
            j4 = (j4 & (-72340172838076674L)) >>> 1;
            j7 ^= ((j3 << i7) >> 63) & j4;
        }
        jArr2[i2] = jArr2[i2] ^ j6;
        int i8 = i2 + 1;
        jArr2[i8] = jArr2[i8] ^ j7;
    }

    private void implPermute(long[] jArr, int i2, long[] jArr2) {
        int i3 = this.bits;
        int iIntValue = this.halfPowers.get(Integers.valueOf(i2)).intValue();
        int iImplModAdd = implModAdd(i3, iIntValue, iIntValue);
        int iImplModAdd2 = implModAdd(i3, iImplModAdd, iImplModAdd);
        int iImplModAdd3 = implModAdd(i3, iImplModAdd2, iImplModAdd2);
        int iImplModAdd4 = i3 - iImplModAdd3;
        int iImplModAdd5 = implModAdd(i3, iImplModAdd4, iIntValue);
        int iImplModAdd6 = implModAdd(i3, iImplModAdd4, iImplModAdd);
        int iImplModAdd7 = implModAdd(i3, iImplModAdd5, iImplModAdd);
        int iImplModAdd8 = implModAdd(i3, iImplModAdd4, iImplModAdd2);
        int iImplModAdd9 = implModAdd(i3, iImplModAdd5, iImplModAdd2);
        int iImplModAdd10 = implModAdd(i3, iImplModAdd6, iImplModAdd2);
        int iImplModAdd11 = implModAdd(i3, iImplModAdd7, iImplModAdd2);
        int i4 = 0;
        while (true) {
            int i5 = this.size;
            if (i4 >= i5) {
                int i6 = i5 - 1;
                jArr2[i6] = ((-1) >>> (-i3)) & jArr2[i6];
                return;
            }
            long j2 = 0;
            for (int i7 = 0; i7 < 64; i7 += 8) {
                iImplModAdd4 = implModAdd(i3, iImplModAdd4, iImplModAdd3);
                iImplModAdd5 = implModAdd(i3, iImplModAdd5, iImplModAdd3);
                iImplModAdd6 = implModAdd(i3, iImplModAdd6, iImplModAdd3);
                iImplModAdd7 = implModAdd(i3, iImplModAdd7, iImplModAdd3);
                iImplModAdd8 = implModAdd(i3, iImplModAdd8, iImplModAdd3);
                iImplModAdd9 = implModAdd(i3, iImplModAdd9, iImplModAdd3);
                iImplModAdd10 = implModAdd(i3, iImplModAdd10, iImplModAdd3);
                iImplModAdd11 = implModAdd(i3, iImplModAdd11, iImplModAdd3);
                j2 = j2 | (((jArr[iImplModAdd4 >>> 6] >>> iImplModAdd4) & 1) << i7) | (((jArr[iImplModAdd5 >>> 6] >>> iImplModAdd5) & 1) << (i7 + 1)) | (((jArr[iImplModAdd6 >>> 6] >>> iImplModAdd6) & 1) << (i7 + 2)) | (((jArr[iImplModAdd7 >>> 6] >>> iImplModAdd7) & 1) << (i7 + 3)) | (((jArr[iImplModAdd8 >>> 6] >>> iImplModAdd8) & 1) << (i7 + 4)) | (((jArr[iImplModAdd9 >>> 6] >>> iImplModAdd9) & 1) << (i7 + 5)) | (((jArr[iImplModAdd10 >>> 6] >>> iImplModAdd10) & 1) << (i7 + 6)) | (((jArr[iImplModAdd11 >>> 6] >>> iImplModAdd11) & 1) << (i7 + 7));
            }
            jArr2[i4] = j2;
            i4++;
        }
    }

    private void implSquare(long[] jArr, long[] jArr2) {
        Interleave.expand64To128(jArr, 0, this.size, jArr2, 0);
    }

    public void add(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i2 = 0; i2 < this.size; i2++) {
            jArr3[i2] = jArr[i2] ^ jArr2[i2];
        }
    }

    public void addTo(long[] jArr, long[] jArr2) {
        for (int i2 = 0; i2 < this.size; i2++) {
            jArr2[i2] = jArr2[i2] ^ jArr[i2];
        }
    }

    public void copy(long[] jArr, long[] jArr2) {
        for (int i2 = 0; i2 < this.size; i2++) {
            jArr2[i2] = jArr[i2];
        }
    }

    public long[] create() {
        return new long[this.size];
    }

    public long[] createExt() {
        return new long[this.sizeExt];
    }

    public void decodeBytes(byte[] bArr, long[] jArr) {
        int i2 = this.bits & 63;
        Pack.littleEndianToLong(bArr, 0, jArr, 0, this.size - 1);
        byte[] bArr2 = new byte[8];
        System.arraycopy(bArr, (this.size - 1) << 3, bArr2, 0, (i2 + 7) >>> 3);
        jArr[this.size - 1] = Pack.littleEndianToLong(bArr2, 0);
    }

    public byte[] encodeBitsTransposed(long[] jArr) {
        byte[] bArr = new byte[this.bits];
        bArr[0] = (byte) (jArr[0] & 1);
        int i2 = 1;
        while (true) {
            int i3 = this.bits;
            if (i2 >= i3) {
                return bArr;
            }
            bArr[i3 - i2] = (byte) ((jArr[i2 >>> 6] >>> (i2 & 63)) & 1);
            i2++;
        }
    }

    public void encodeBytes(long[] jArr, byte[] bArr) {
        int i2 = this.bits & 63;
        Pack.longToLittleEndian(jArr, 0, this.size - 1, bArr, 0);
        byte[] bArr2 = new byte[8];
        Pack.longToLittleEndian(jArr[this.size - 1], bArr2, 0);
        System.arraycopy(bArr2, 0, bArr, (this.size - 1) << 3, (i2 + 7) >>> 3);
    }

    public int getSize() {
        return this.size;
    }

    public int getSizeExt() {
        return this.sizeExt;
    }

    public void implMultiplyAcc(long[] jArr, long[] jArr2, long[] jArr3) {
        int i2;
        long[] jArr4 = new long[16];
        int i3 = 0;
        for (int i4 = 0; i4 < this.size; i4++) {
            implMulwAcc(jArr4, jArr[i4], jArr2[i4], jArr3, i4 << 1);
        }
        long j2 = jArr3[0];
        long j3 = jArr3[1];
        for (int i5 = 1; i5 < this.size; i5++) {
            int i6 = i5 << 1;
            j2 ^= jArr3[i6];
            jArr3[i5] = j2 ^ j3;
            j3 ^= jArr3[i6 + 1];
        }
        long j4 = j2 ^ j3;
        while (true) {
            i2 = this.size;
            if (i3 >= i2) {
                break;
            }
            jArr3[i2 + i3] = jArr3[i3] ^ j4;
            i3++;
        }
        int i7 = i2 - 1;
        for (int i8 = 1; i8 < i7 * 2; i8++) {
            int iMin = Math.min(i7, i8);
            int i9 = i8 - iMin;
            while (i9 < iMin) {
                implMulwAcc(jArr4, jArr[i9] ^ jArr[iMin], jArr2[i9] ^ jArr2[iMin], jArr3, i8);
                i9++;
                iMin--;
            }
        }
    }

    public void inv(long[] jArr, long[] jArr2) {
        long[] jArrCreate = create();
        long[] jArrCreate2 = create();
        long[] jArrCreate3 = create();
        copy(jArr, jArrCreate);
        copy(jArr, jArrCreate3);
        int i2 = this.bits - 2;
        int iNumberOfLeadingZeros = 32 - Integers.numberOfLeadingZeros(i2);
        for (int i3 = 1; i3 < iNumberOfLeadingZeros; i3++) {
            squareN(jArrCreate, 1 << (i3 - 1), jArrCreate2);
            multiply(jArrCreate, jArrCreate2, jArrCreate);
            int i4 = 1 << i3;
            if ((i2 & i4) != 0) {
                squareN(jArrCreate, (i4 - 1) & i2, jArrCreate2);
                multiply(jArrCreate3, jArrCreate2, jArrCreate3);
            }
        }
        square(jArrCreate3, jArr2);
    }

    public void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrCreateExt = createExt();
        implMultiplyAcc(jArr, jArr2, jArrCreateExt);
        reduce(jArrCreateExt, jArr3);
    }

    public void reduce(long[] jArr, long[] jArr2) {
        int i2 = 64 - (this.bits & 63);
        int i3 = this.size;
        Nat.shiftUpBits64(i3, jArr, i3, i2, jArr[i3 - 1], jArr2, 0);
        addTo(jArr, jArr2);
        int i4 = this.size - 1;
        jArr2[i4] = jArr2[i4] & ((-1) >>> i2);
    }

    public void square(long[] jArr, long[] jArr2) {
        long[] jArrCreateExt = createExt();
        implSquare(jArr, jArrCreateExt);
        reduce(jArrCreateExt, jArr2);
    }

    public void squareN(long[] jArr, int i2, long[] jArr2) {
        if (i2 >= 64) {
            implPermute(jArr, i2, jArr2);
            return;
        }
        long[] jArrCreateExt = createExt();
        implSquare(jArr, jArrCreateExt);
        while (true) {
            reduce(jArrCreateExt, jArr2);
            i2--;
            if (i2 <= 0) {
                return;
            } else {
                implSquare(jArr2, jArrCreateExt);
            }
        }
    }
}
