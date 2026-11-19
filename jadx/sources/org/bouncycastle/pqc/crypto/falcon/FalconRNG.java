package org.bouncycastle.pqc.crypto.falcon;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes5.dex */
class FalconRNG {
    byte[] bd = new byte[512];
    long bdummy_u64 = 0;
    int ptr = 0;
    byte[] sd = new byte[256];
    long sdummy_u64 = 0;
    int type = 0;
    FalconConversions convertor = new FalconConversions();

    private void QROUND(int i2, int i3, int i4, int i5, int[] iArr) {
        int i6 = iArr[i2] + iArr[i3];
        iArr[i2] = i6;
        int i7 = i6 ^ iArr[i5];
        iArr[i5] = i7;
        int i8 = (i7 >>> 16) | (i7 << 16);
        iArr[i5] = i8;
        int i9 = iArr[i4] + i8;
        iArr[i4] = i9;
        int i10 = iArr[i3] ^ i9;
        iArr[i3] = i10;
        int i11 = (i10 >>> 20) | (i10 << 12);
        iArr[i3] = i11;
        int i12 = iArr[i2] + i11;
        iArr[i2] = i12;
        int i13 = iArr[i5] ^ i12;
        iArr[i5] = i13;
        int i14 = (i13 >>> 24) | (i13 << 8);
        iArr[i5] = i14;
        int i15 = iArr[i4] + i14;
        iArr[i4] = i15;
        int i16 = iArr[i3] ^ i15;
        iArr[i3] = i16;
        iArr[i3] = (i16 >>> 25) | (i16 << 7);
    }

    public void prng_get_bytes(byte[] bArr, int i2, int i3) {
        while (i3 > 0) {
            byte[] bArr2 = this.bd;
            int length = bArr2.length - this.ptr;
            if (length > i3) {
                length = i3;
            }
            System.arraycopy(bArr2, 0, bArr, i2, length);
            i2 += length;
            i3 -= length;
            int i4 = this.ptr + length;
            this.ptr = i4;
            if (i4 == this.bd.length) {
                prng_refill();
            }
        }
    }

    public long prng_get_u64() {
        int i2 = this.ptr;
        if (i2 >= this.bd.length - 9) {
            prng_refill();
            i2 = 0;
        }
        this.ptr = i2 + 8;
        byte[] bArr = this.bd;
        return (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48) | ((255 & ((long) bArr[i2 + 7])) << 56);
    }

    public byte prng_get_u8() {
        byte[] bArr = this.bd;
        int i2 = this.ptr;
        int i3 = i2 + 1;
        this.ptr = i3;
        byte b2 = bArr[i2];
        if (i3 == bArr.length) {
            prng_refill();
        }
        return b2;
    }

    public void prng_init(SHAKE256 shake256) {
        byte[] bArr = new byte[56];
        shake256.inner_shake256_extract(bArr, 0, 56);
        for (int i2 = 0; i2 < 14; i2++) {
            int i3 = i2 << 2;
            System.arraycopy(this.convertor.int_to_bytes(((bArr[i3 + 1] & 255) << 8) | (bArr[i3] & 255) | ((bArr[i3 + 2] & 255) << 16) | ((bArr[i3 + 3] & 255) << 24)), 0, this.sd, i3, 4);
        }
        System.arraycopy(this.convertor.long_to_bytes((((long) this.convertor.bytes_to_int(this.sd, 48)) & BodyPartID.bodyIdMax) + ((BodyPartID.bodyIdMax & ((long) this.convertor.bytes_to_int(this.sd, 52))) << 32)), 0, this.sd, 48, 8);
        prng_refill();
    }

    public void prng_refill() {
        FalconRNG falconRNG = this;
        int[] iArr = {1634760805, 857760878, 2036477234, 1797285236};
        long jBytes_to_long = falconRNG.convertor.bytes_to_long(falconRNG.sd, 48);
        for (int i2 = 0; i2 < 8; i2++) {
            int[] iArr2 = new int[16];
            System.arraycopy(iArr, 0, iArr2, 0, 4);
            System.arraycopy(falconRNG.convertor.bytes_to_int_array(falconRNG.sd, 0, 12), 0, iArr2, 4, 12);
            int i3 = (int) jBytes_to_long;
            iArr2[14] = iArr2[14] ^ i3;
            int i4 = (int) (jBytes_to_long >>> 32);
            iArr2[15] = iArr2[15] ^ i4;
            int i5 = 0;
            while (i5 < 10) {
                falconRNG.QROUND(0, 4, 8, 12, iArr2);
                falconRNG = this;
                falconRNG.QROUND(1, 5, 9, 13, iArr2);
                falconRNG.QROUND(2, 6, 10, 14, iArr2);
                falconRNG.QROUND(3, 7, 11, 15, iArr2);
                falconRNG.QROUND(0, 5, 10, 15, iArr2);
                falconRNG.QROUND(1, 6, 11, 12, iArr2);
                falconRNG.QROUND(2, 7, 8, 13, iArr2);
                falconRNG.QROUND(3, 4, 9, 14, iArr2);
                i5++;
                i4 = i4;
            }
            int i6 = i4;
            for (int i7 = 0; i7 < 4; i7++) {
                iArr2[i7] = iArr2[i7] + iArr[i7];
            }
            for (int i8 = 4; i8 < 14; i8++) {
                iArr2[i8] = iArr2[i8] + falconRNG.convertor.bytes_to_int(falconRNG.sd, (i8 * 4) - 16);
            }
            iArr2[14] = iArr2[14] + (falconRNG.convertor.bytes_to_int(falconRNG.sd, 40) ^ i3);
            iArr2[15] = iArr2[15] + (falconRNG.convertor.bytes_to_int(falconRNG.sd, 44) ^ i6);
            jBytes_to_long++;
            for (int i9 = 0; i9 < 16; i9++) {
                byte[] bArr = falconRNG.bd;
                int i10 = (i2 << 2) + (i9 << 5);
                int i11 = iArr2[i9];
                bArr[i10] = (byte) i11;
                bArr[i10 + 1] = (byte) (i11 >>> 8);
                bArr[i10 + 2] = (byte) (i11 >>> 16);
                bArr[i10 + 3] = (byte) (i11 >>> 24);
            }
        }
        System.arraycopy(falconRNG.convertor.long_to_bytes(jBytes_to_long), 0, falconRNG.sd, 48, 8);
        falconRNG.ptr = 0;
    }
}
