package org.bouncycastle.pqc.crypto.gemss;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes5.dex */
class PointerUnion extends Pointer {
    protected int remainder;

    public PointerUnion(byte[] bArr) {
        super((bArr.length >> 3) + ((bArr.length & 7) != 0 ? 1 : 0));
        int i2 = 0;
        for (int i3 = 0; i2 < bArr.length && i3 < this.array.length; i3++) {
            int i4 = 0;
            while (i4 < 8 && i2 < bArr.length) {
                long[] jArr = this.array;
                jArr[i3] = jArr[i3] | ((((long) bArr[i2]) & 255) << (i4 << 3));
                i4++;
                i2++;
            }
        }
        this.remainder = 0;
    }

    public void changeIndex(PointerUnion pointerUnion) {
        this.array = pointerUnion.array;
        this.cp = pointerUnion.cp;
        this.remainder = pointerUnion.remainder;
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void fill(int i2, byte[] bArr, int i3, int i4) {
        int i5 = this.remainder;
        if (i5 != 0) {
            int i6 = this.cp + i2;
            long[] jArr = this.array;
            jArr[i6] = jArr[i6] & (~((-1) << (i5 << 3)));
            int i7 = 0;
            while (i5 < 8 && i7 < i4) {
                long[] jArr2 = this.array;
                jArr2[i6] = jArr2[i6] | ((((long) bArr[i3]) & 255) << (i5 << 3));
                i3++;
                i7++;
                i5++;
            }
            i2++;
            i4 -= 8 - this.remainder;
        }
        super.fill(i2, bArr, i3, i4);
    }

    public void fillBytes(int i2, byte[] bArr, int i3, int i4) {
        int i5 = i2 + this.remainder;
        int i6 = this.cp + (i5 >>> 3);
        int i7 = i5 & 7;
        if (i7 != 0) {
            long[] jArr = this.array;
            jArr[i6] = jArr[i6] & (~((-1) << (i7 << 3)));
            int i8 = 0;
            while (i7 < 8 && i8 < i4) {
                long[] jArr2 = this.array;
                jArr2[i6] = jArr2[i6] | ((((long) bArr[i3]) & 255) << (i7 << 3));
                i3++;
                i8++;
                i7++;
            }
            i6++;
            i4 -= i8;
        }
        super.fill(i6 - this.cp, bArr, i3, i4);
    }

    public void fillRandomBytes(int i2, SecureRandom secureRandom, int i3) {
        byte[] bArr = new byte[i3];
        secureRandom.nextBytes(bArr);
        fillBytes(i2, bArr, 0, i3);
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public long get(int i2) {
        int i3 = this.remainder;
        long[] jArr = this.array;
        int i4 = this.cp;
        if (i3 == 0) {
            return jArr[i4 + i2];
        }
        return (jArr[(i4 + i2) + 1] << ((8 - i3) << 3)) | (jArr[i4 + i2] >>> (i3 << 3));
    }

    public byte getByte(int i2) {
        int i3 = this.cp;
        int i4 = this.remainder;
        return (byte) (this.array[i3 + ((i2 + i4) >>> 3)] >>> (((i4 + i2) & 7) << 3));
    }

    public long getWithCheck(int i2) {
        int i3 = i2 + this.cp;
        long[] jArr = this.array;
        if (i3 >= jArr.length) {
            return 0L;
        }
        int i4 = this.remainder;
        if (i4 == 0) {
            return jArr[i3];
        }
        if (i3 == jArr.length - 1) {
            return jArr[i3] >>> (i4 << 3);
        }
        return (jArr[i3 + 1] << ((8 - i4) << 3)) | (jArr[i3] >>> (i4 << 3));
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void indexReset() {
        this.cp = 0;
        this.remainder = 0;
    }

    public void moveNextByte() {
        int i2 = this.remainder + 1;
        this.cp += i2 >>> 3;
        this.remainder = i2 & 7;
    }

    public void moveNextBytes(int i2) {
        int i3 = this.remainder + i2;
        this.cp += i3 >>> 3;
        this.remainder = i3 & 7;
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void set(int i2, long j2) {
        int i3 = this.remainder;
        if (i3 == 0) {
            super.setXor(i2, j2);
            return;
        }
        int i4 = i3 << 3;
        int i5 = (8 - i3) << 3;
        long[] jArr = this.array;
        int i6 = this.cp;
        jArr[i6 + i2] = (j2 << i4) | (jArr[i6 + i2] & ((-1) >>> i5));
        jArr[i6 + i2 + 1] = (jArr[i6 + i2 + 1] & ((-1) << i4)) | (j2 >>> i5);
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void setAnd(int i2, long j2) {
        int i3 = this.remainder;
        if (i3 == 0) {
            super.setAnd(i2, j2);
            return;
        }
        int i4 = i3 << 3;
        int i5 = (8 - i3) << 3;
        long[] jArr = this.array;
        int i6 = this.cp;
        int i7 = i6 + i2;
        jArr[i7] = jArr[i7] & ((j2 << i4) | ((-1) >>> i5));
        int i8 = i6 + i2 + 1;
        jArr[i8] = ((j2 >>> i5) | ((-1) << i4)) & jArr[i8];
    }

    public void setAndByte(int i2, long j2) {
        int i3 = i2 + this.remainder + (this.cp << 3);
        int i4 = i3 >>> 3;
        long[] jArr = this.array;
        int i5 = (i3 & 7) << 3;
        jArr[i4] = (((j2 & 255) << i5) | (~(255 << i5))) & jArr[i4];
    }

    public void setAndThenXorByte(int i2, long j2, long j3) {
        int i3 = i2 + this.remainder + (this.cp << 3);
        int i4 = i3 >>> 3;
        long[] jArr = this.array;
        int i5 = (i3 & 7) << 3;
        long j4 = (((j2 & 255) << i5) | (~(255 << i5))) & jArr[i4];
        jArr[i4] = j4;
        jArr[i4] = j4 ^ ((j3 & 255) << i5);
    }

    public void setByte(int i2) {
        long[] jArr = this.array;
        int i3 = this.cp;
        int i4 = this.remainder;
        jArr[i3] = (((-1) >>> ((8 - i4) << 3)) & jArr[i3]) | ((((long) i2) & 255) << (i4 << 3));
    }

    public void setByteIndex(int i2) {
        this.remainder = i2 & 7;
        this.cp = i2 >>> 3;
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void setRangeClear(int i2, int i3) {
        int i4 = this.remainder;
        if (i4 == 0) {
            super.setRangeClear(i2, i3);
            return;
        }
        long[] jArr = this.array;
        int i5 = this.cp + i2;
        jArr[i5] = jArr[i5] & ((-1) >>> ((8 - i4) << 3));
        super.setRangeClear(i2 + 1, i3);
        long[] jArr2 = this.array;
        int i6 = this.cp + i3 + 1;
        jArr2[i6] = jArr2[i6] & ((-1) << (this.remainder << 3));
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void setXor(int i2, long j2) {
        int i3 = this.remainder;
        if (i3 == 0) {
            super.setXor(i2, j2);
            return;
        }
        long[] jArr = this.array;
        int i4 = this.cp;
        int i5 = i4 + i2;
        jArr[i5] = jArr[i5] ^ (j2 << (i3 << 3));
        int i6 = i4 + i2 + 1;
        jArr[i6] = (j2 >>> ((8 - i3) << 3)) ^ jArr[i6];
    }

    public void setXorByte(int i2) {
        long[] jArr = this.array;
        int i3 = this.cp;
        jArr[i3] = ((((long) i2) & 255) << (this.remainder << 3)) ^ jArr[i3];
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void setXorRangeAndMask(Pointer pointer, int i2, long j2) {
        int i3 = this.remainder;
        if (i3 == 0) {
            super.setXorRangeAndMask(pointer, i2, j2);
            return;
        }
        int i4 = this.cp;
        int i5 = pointer.cp;
        int i6 = i3 << 3;
        int i7 = (8 - i3) << 3;
        int i8 = 0;
        while (i8 < i2) {
            int i9 = i5 + 1;
            long j3 = pointer.array[i5] & j2;
            long[] jArr = this.array;
            jArr[i4] = jArr[i4] ^ (j3 << i6);
            i4++;
            jArr[i4] = (j3 >>> i7) ^ jArr[i4];
            i8++;
            i5 = i9;
        }
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public byte[] toBytes(int i2) {
        byte[] bArr = new byte[i2];
        int i3 = this.remainder;
        while (true) {
            int i4 = this.remainder;
            if (i3 >= i2 + i4) {
                return bArr;
            }
            bArr[i3 - i4] = (byte) (this.array[this.cp + (i3 >>> 3)] >>> ((i3 & 7) << 3));
            i3++;
        }
    }

    public int toBytesMove(byte[] bArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < i3) {
            int i5 = i2 + 1;
            long[] jArr = this.array;
            int i6 = this.cp;
            long j2 = jArr[i6];
            int i7 = this.remainder;
            int i8 = i7 + 1;
            this.remainder = i8;
            bArr[i2] = (byte) (j2 >>> (i7 << 3));
            if (i8 == 8) {
                this.remainder = 0;
                this.cp = i6 + 1;
            }
            i4++;
            i2 = i5;
        }
        return i2;
    }

    public byte getByte() {
        return (byte) (this.array[this.cp] >>> (this.remainder << 3));
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public long get() {
        int i2 = this.remainder;
        long[] jArr = this.array;
        int i3 = this.cp;
        if (i2 == 0) {
            return jArr[i3];
        }
        return (jArr[i3 + 1] << ((8 - i2) << 3)) | (jArr[i3] >>> (i2 << 3));
    }

    @Override // org.bouncycastle.pqc.crypto.gemss.Pointer
    public void setXor(long j2) {
        int i2 = this.remainder;
        if (i2 == 0) {
            super.setXor(j2);
            return;
        }
        long[] jArr = this.array;
        int i3 = this.cp;
        jArr[i3] = jArr[i3] ^ (j2 << (i2 << 3));
        int i4 = i3 + 1;
        jArr[i4] = (j2 >>> ((8 - i2) << 3)) ^ jArr[i4];
    }

    public long getWithCheck() {
        int i2 = this.cp;
        long[] jArr = this.array;
        if (i2 >= jArr.length) {
            return 0L;
        }
        int i3 = this.remainder;
        if (i3 == 0) {
            return jArr[i2];
        }
        if (i2 == jArr.length - 1) {
            return jArr[i2] >>> (i3 << 3);
        }
        return (jArr[i2 + 1] << ((8 - i3) << 3)) | (jArr[i2] >>> (i3 << 3));
    }

    public PointerUnion(Pointer pointer) {
        super(pointer);
        this.remainder = 0;
    }

    public PointerUnion(PointerUnion pointerUnion) {
        super(pointerUnion);
        this.remainder = pointerUnion.remainder;
    }

    public PointerUnion(int i2) {
        super((i2 >>> 3) + ((i2 & 7) != 0 ? 1 : 0));
        this.remainder = 0;
    }
}
