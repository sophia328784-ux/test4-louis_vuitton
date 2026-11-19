package org.bouncycastle.pqc.crypto.gemss;

import java.security.SecureRandom;
import java.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
class Pointer {
    protected long[] array;
    protected int cp;

    public Pointer(Pointer pointer, int i2) {
        this.array = pointer.array;
        this.cp = pointer.cp + i2;
    }

    public void changeIndex(Pointer pointer, int i2) {
        this.array = pointer.array;
        this.cp = pointer.cp + i2;
    }

    public void copyFrom(int i2, Pointer pointer, int i3, int i4) {
        System.arraycopy(pointer.array, pointer.cp + i3, this.array, this.cp + i2, i4);
    }

    public void fill(int i2, byte[] bArr, int i3, int i4) {
        long[] jArr;
        int i5;
        int i6 = this.cp + i2;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            jArr = this.array;
            if (i6 >= jArr.length || (i5 = i8 + 8) > i4) {
                break;
            }
            jArr[i6] = Pack.littleEndianToLong(bArr, i3);
            i3 += 8;
            i6++;
            i8 = i5;
        }
        if (i8 >= i4 || i6 >= jArr.length) {
            return;
        }
        jArr[i6] = 0;
        while (i7 < 8 && i8 < i4) {
            long[] jArr2 = this.array;
            jArr2[i6] = jArr2[i6] | ((((long) bArr[i3]) & 255) << (i7 << 3));
            i7++;
            i3++;
            i8++;
        }
    }

    public void fillRandom(int i2, SecureRandom secureRandom, int i3) {
        byte[] bArr = new byte[i3];
        secureRandom.nextBytes(bArr);
        fill(i2, bArr, 0, i3);
    }

    public long get(int i2) {
        return this.array[this.cp + i2];
    }

    public long[] getArray() {
        return this.array;
    }

    public int getD_for_not0_or_plus(int i2, int i3) {
        int i4 = this.cp;
        int i5 = 0;
        long jORBITS_UINT = 0;
        while (i3 > 0) {
            int i6 = i4 + 1;
            long j2 = this.array[i4];
            int i7 = 1;
            while (i7 < i2) {
                j2 |= this.array[i6];
                i7++;
                i6++;
            }
            jORBITS_UINT |= GeMSSUtils.ORBITS_UINT(j2);
            i5 = (int) (((long) i5) + jORBITS_UINT);
            i3--;
            i4 = i6;
        }
        return i5;
    }

    public long getDotProduct(int i2, Pointer pointer, int i3, int i4) {
        int i5 = i2 + this.cp;
        int i6 = i3 + pointer.cp;
        int i7 = i5 + 1;
        int i8 = i6 + 1;
        long j2 = this.array[i5] & pointer.array[i6];
        int i9 = 1;
        while (i9 < i4) {
            j2 ^= this.array[i7] & pointer.array[i8];
            i9++;
            i8++;
            i7++;
        }
        return j2;
    }

    public int getIndex() {
        return this.cp;
    }

    public int getLength() {
        return this.array.length - this.cp;
    }

    public void indexReset() {
        this.cp = 0;
    }

    public int is0_gf2n(int i2, int i3) {
        long j2 = get(i2);
        for (int i4 = 1; i4 < i3; i4++) {
            j2 |= get(i2 + i4);
        }
        return (int) GeMSSUtils.NORBITS_UINT(j2);
    }

    public int isEqual_nocst_gf2(Pointer pointer, int i2) {
        int i3 = pointer.cp;
        int i4 = this.cp;
        int i5 = 0;
        while (i5 < i2) {
            int i6 = i4 + 1;
            int i7 = i3 + 1;
            if (this.array[i4] != pointer.array[i3]) {
                return 0;
            }
            i5++;
            i3 = i7;
            i4 = i6;
        }
        return 1;
    }

    public void move(int i2) {
        this.cp += i2;
    }

    public void moveIncremental() {
        this.cp++;
    }

    public int searchDegree(int i2, int i3, int i4) {
        while (is0_gf2n(i2 * i4, i4) != 0 && i2 >= i3) {
            i2--;
        }
        return i2;
    }

    public void set(int i2, long j2) {
        this.array[this.cp + i2] = j2;
    }

    public void set1_gf2n(int i2, int i3) {
        int i4 = this.cp + i2;
        int i5 = i4 + 1;
        this.array[i4] = 1;
        int i6 = 1;
        while (i6 < i3) {
            this.array[i5] = 0;
            i6++;
            i5++;
        }
    }

    public void setAnd(int i2, long j2) {
        long[] jArr = this.array;
        int i3 = this.cp + i2;
        jArr[i3] = jArr[i3] & j2;
    }

    public void setClear(int i2) {
        this.array[this.cp + i2] = 0;
    }

    public void setRangeClear(int i2, int i3) {
        int i4 = i2 + this.cp;
        Arrays.fill(this.array, i4, i3 + i4, 0L);
    }

    public void setRangeFromXor(int i2, Pointer pointer, int i3, Pointer pointer2, int i4, int i5) {
        int i6 = i2 + this.cp;
        int i7 = i3 + pointer.cp;
        int i8 = i4 + pointer2.cp;
        int i9 = 0;
        while (i9 < i5) {
            this.array[i6] = pointer.array[i7] ^ pointer2.array[i8];
            i9++;
            i6++;
            i8++;
            i7++;
        }
    }

    public void setRangeFromXorAndMask_xor(Pointer pointer, Pointer pointer2, long j2, int i2) {
        int i3 = this.cp;
        int i4 = pointer.cp;
        int i5 = pointer2.cp;
        int i6 = 0;
        while (i6 < i2) {
            long[] jArr = this.array;
            long[] jArr2 = pointer.array;
            long j3 = jArr2[i4];
            long[] jArr3 = pointer2.array;
            long j4 = (j3 ^ jArr3[i5]) & j2;
            jArr[i3] = j4;
            jArr2[i4] = j4 ^ jArr2[i4];
            jArr3[i5] = jArr3[i5] ^ jArr[i3];
            i6++;
            i5++;
            i3++;
            i4++;
        }
    }

    public void setRangePointerUnion(PointerUnion pointerUnion, int i2, int i3) {
        int i4 = i3 & 63;
        int i5 = 64 - i4;
        int i6 = this.cp;
        int i7 = pointerUnion.cp;
        int i8 = pointerUnion.remainder;
        int i9 = 0;
        if (i8 == 0) {
            while (i9 < i2) {
                long[] jArr = this.array;
                long[] jArr2 = pointerUnion.array;
                long j2 = jArr2[i7] >>> i4;
                i7++;
                jArr[i6] = j2 ^ (jArr2[i7] << i5);
                i9++;
                i6++;
            }
            return;
        }
        int i10 = i8 << 3;
        int i11 = (8 - i8) << 3;
        while (i9 < i2) {
            long[] jArr3 = this.array;
            long[] jArr4 = pointerUnion.array;
            long j3 = jArr4[i7] >>> i10;
            int i12 = i7 + 1;
            long j4 = jArr4[i12];
            jArr3[i6] = ((j3 | (j4 << i11)) >>> i4) ^ (((j4 >>> i10) | (jArr4[i7 + 2] << i11)) << i5);
            i9++;
            i6++;
            i7 = i12;
        }
    }

    public void setRangePointerUnion_Check(PointerUnion pointerUnion, int i2, int i3) {
        int i4 = i3 & 63;
        int i5 = 64 - i4;
        int i6 = this.cp;
        int i7 = pointerUnion.cp;
        int i8 = pointerUnion.remainder;
        int i9 = 0;
        if (i8 == 0) {
            while (i9 < i2) {
                long[] jArr = pointerUnion.array;
                if (i7 >= jArr.length - 1) {
                    break;
                }
                long[] jArr2 = this.array;
                long j2 = jArr[i7] >>> i4;
                i7++;
                jArr2[i6] = j2 ^ (jArr[i7] << i5);
                i9++;
                i6++;
            }
            if (i9 < i2) {
                this.array[i6] = pointerUnion.array[i7] >>> i4;
                return;
            }
            return;
        }
        int i10 = i8 << 3;
        int i11 = (8 - i8) << 3;
        while (i9 < i2) {
            long[] jArr3 = pointerUnion.array;
            if (i7 >= jArr3.length - 2) {
                break;
            }
            long[] jArr4 = this.array;
            long j3 = jArr3[i7] >>> i10;
            int i12 = i7 + 1;
            long j4 = jArr3[i12];
            jArr4[i6] = ((j3 | (j4 << i11)) >>> i4) ^ (((j4 >>> i10) | (jArr3[i7 + 2] << i11)) << i5);
            i9++;
            i6++;
            i7 = i12;
        }
        if (i9 < i2) {
            long[] jArr5 = this.array;
            long[] jArr6 = pointerUnion.array;
            long j5 = jArr6[i7] >>> i10;
            long j6 = jArr6[i7 + 1];
            jArr5[i6] = ((j6 >>> i10) << i5) ^ (((j6 << i11) | j5) >>> i4);
        }
    }

    public void setRangeRotate(int i2, Pointer pointer, int i3, int i4, int i5) {
        int i6 = 64 - i5;
        int i7 = i2 + this.cp;
        int i8 = i3 + pointer.cp;
        int i9 = 0;
        while (i9 < i4) {
            long[] jArr = this.array;
            long[] jArr2 = pointer.array;
            long j2 = jArr2[i8] >>> i6;
            i8++;
            jArr[i7] = j2 ^ (jArr2[i8] << i5);
            i9++;
            i7++;
        }
    }

    public int setRange_xi(long j2, int i2, int i3) {
        int i4 = 0;
        while (i4 < i3) {
            this.array[this.cp + i2] = -((j2 >>> i4) & 1);
            i4++;
            i2++;
        }
        return i2;
    }

    public void setXor(int i2, long j2) {
        long[] jArr = this.array;
        int i3 = this.cp + i2;
        jArr[i3] = jArr[i3] ^ j2;
    }

    public void setXorMatrix(Pointer pointer, int i2, int i3) {
        int i4 = this.cp;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = i4;
            int i7 = 0;
            while (i7 < i2) {
                long[] jArr = this.array;
                long j2 = jArr[i6];
                long[] jArr2 = pointer.array;
                int i8 = pointer.cp;
                pointer.cp = i8 + 1;
                jArr[i6] = j2 ^ jArr2[i8];
                i7++;
                i6++;
            }
        }
        this.cp += i2;
    }

    public void setXorMatrix_NoMove(Pointer pointer, int i2, int i3) {
        int i4 = this.cp;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = i4;
            int i7 = 0;
            while (i7 < i2) {
                long[] jArr = this.array;
                long j2 = jArr[i6];
                long[] jArr2 = pointer.array;
                int i8 = pointer.cp;
                pointer.cp = i8 + 1;
                jArr[i6] = j2 ^ jArr2[i8];
                i7++;
                i6++;
            }
        }
    }

    public void setXorRange(int i2, PointerUnion pointerUnion, int i3, int i4) {
        int i5 = i2 + this.cp;
        int i6 = i3 + pointerUnion.cp;
        int i7 = pointerUnion.remainder;
        int i8 = 0;
        if (i7 == 0) {
            while (i8 < i4) {
                long[] jArr = this.array;
                jArr[i5] = jArr[i5] ^ pointerUnion.array[i6];
                i8++;
                i5++;
                i6++;
            }
            return;
        }
        int i9 = i7 << 3;
        int i10 = (8 - i7) << 3;
        while (i8 < i4) {
            long[] jArr2 = this.array;
            long j2 = jArr2[i5];
            long[] jArr3 = pointerUnion.array;
            long j3 = jArr3[i6] >>> i9;
            i6++;
            jArr2[i5] = j2 ^ (j3 | (jArr3[i6] << i10));
            i8++;
            i5++;
        }
    }

    public void setXorRangeAndMask(Pointer pointer, int i2, long j2) {
        int i3 = this.cp;
        int i4 = pointer.cp;
        int i5 = 0;
        while (i5 < i2) {
            long[] jArr = this.array;
            jArr[i3] = jArr[i3] ^ (pointer.array[i4] & j2);
            i5++;
            i3++;
            i4++;
        }
    }

    public void setXorRangeAndMaskMove(Pointer pointer, int i2, long j2) {
        int i3 = this.cp;
        int i4 = 0;
        while (i4 < i2) {
            long[] jArr = this.array;
            long j3 = jArr[i3];
            long[] jArr2 = pointer.array;
            int i5 = pointer.cp;
            pointer.cp = i5 + 1;
            jArr[i3] = j3 ^ (jArr2[i5] & j2);
            i4++;
            i3++;
        }
    }

    public void setXorRangeXor(int i2, Pointer pointer, int i3, Pointer pointer2, int i4, int i5) {
        int i6 = i2 + this.cp;
        int i7 = i3 + pointer.cp;
        int i8 = i4 + pointer2.cp;
        int i9 = 0;
        while (i9 < i5) {
            long[] jArr = this.array;
            jArr[i6] = (pointer2.array[i8] ^ pointer.array[i7]) ^ jArr[i6];
            i9++;
            i6++;
            i8++;
            i7++;
        }
    }

    public void setXorRange_SelfMove(Pointer pointer, int i2) {
        int i3 = pointer.cp;
        int i4 = 0;
        while (i4 < i2) {
            long[] jArr = this.array;
            int i5 = this.cp;
            this.cp = i5 + 1;
            jArr[i5] = jArr[i5] ^ pointer.array[i3];
            i4++;
            i3++;
        }
    }

    public void swap(Pointer pointer) {
        long[] jArr = pointer.array;
        int i2 = pointer.cp;
        pointer.array = this.array;
        pointer.cp = this.cp;
        this.array = jArr;
        this.cp = i2;
    }

    public byte[] toBytes(int i2) {
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i3] = (byte) (this.array[this.cp + (i3 >>> 3)] >>> ((i3 & 7) << 3));
        }
        return bArr;
    }

    public long get() {
        return this.array[this.cp];
    }

    public void set(long j2) {
        this.array[this.cp] = j2;
    }

    public void changeIndex(Pointer pointer) {
        this.array = pointer.array;
        this.cp = pointer.cp;
    }

    public void changeIndex(int i2) {
        this.cp = i2;
    }

    public void setAnd(long j2) {
        long[] jArr = this.array;
        int i2 = this.cp;
        jArr[i2] = j2 & jArr[i2];
    }

    public void setXor(long j2) {
        long[] jArr = this.array;
        int i2 = this.cp;
        jArr[i2] = j2 ^ jArr[i2];
    }

    public Pointer(int i2) {
        this.array = new long[i2];
        this.cp = 0;
    }

    public Pointer(Pointer pointer) {
        this.array = pointer.array;
        this.cp = pointer.cp;
    }

    public void copyFrom(Pointer pointer, int i2) {
        System.arraycopy(pointer.array, pointer.cp, this.array, this.cp, i2);
    }

    public Pointer() {
        this.cp = 0;
    }

    public void setRangeFromXor(Pointer pointer, Pointer pointer2, int i2) {
        int i3 = this.cp;
        int i4 = pointer.cp;
        int i5 = pointer2.cp;
        int i6 = 0;
        while (i6 < i2) {
            this.array[i3] = pointer2.array[i5] ^ pointer.array[i4];
            i6++;
            i3++;
            i5++;
            i4++;
        }
    }

    public void setXorRange(int i2, Pointer pointer, int i3, int i4) {
        int i5 = i2 + this.cp;
        int i6 = i3 + pointer.cp;
        int i7 = 0;
        while (i7 < i4) {
            long[] jArr = this.array;
            jArr[i5] = jArr[i5] ^ pointer.array[i6];
            i7++;
            i5++;
            i6++;
        }
    }

    public void setXorRange(Pointer pointer, int i2) {
        int i3 = this.cp;
        int i4 = pointer.cp;
        int i5 = 0;
        while (i5 < i2) {
            long[] jArr = this.array;
            jArr[i3] = jArr[i3] ^ pointer.array[i4];
            i5++;
            i3++;
            i4++;
        }
    }

    public void setXorRange(Pointer pointer, int i2, int i3) {
        int i4 = this.cp;
        int i5 = i2 + pointer.cp;
        int i6 = 0;
        while (i6 < i3) {
            long[] jArr = this.array;
            jArr[i4] = jArr[i4] ^ pointer.array[i5];
            i6++;
            i4++;
            i5++;
        }
    }

    public void setRangePointerUnion(PointerUnion pointerUnion, int i2) {
        int i3 = pointerUnion.remainder;
        if (i3 == 0) {
            System.arraycopy(pointerUnion.array, pointerUnion.cp, this.array, this.cp, i2);
            return;
        }
        int i4 = (8 - i3) << 3;
        int i5 = i3 << 3;
        int i6 = this.cp;
        int i7 = pointerUnion.cp;
        int i8 = 0;
        while (i8 < i2) {
            long[] jArr = this.array;
            long[] jArr2 = pointerUnion.array;
            long j2 = jArr2[i7] >>> i5;
            i7++;
            jArr[i6] = j2 ^ (jArr2[i7] << i4);
            i8++;
            i6++;
        }
    }
}
