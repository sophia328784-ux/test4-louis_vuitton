package org.bouncycastle.pqc.crypto.crystals.kyber;

import defpackage.v7;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class PolyVec {
    private KyberEngine engine;
    private int kyberK;
    private int polyVecBytes;
    Poly[] vec;

    public PolyVec(KyberEngine kyberEngine) {
        this.engine = kyberEngine;
        this.kyberK = kyberEngine.getKyberK();
        this.polyVecBytes = kyberEngine.getKyberPolyVecBytes();
        this.vec = new Poly[this.kyberK];
        for (int i2 = 0; i2 < this.kyberK; i2++) {
            this.vec[i2] = new Poly(kyberEngine);
        }
    }

    public static void pointwiseAccountMontgomery(Poly poly, PolyVec polyVec, PolyVec polyVec2, KyberEngine kyberEngine) {
        Poly poly2 = new Poly(kyberEngine);
        Poly.baseMultMontgomery(poly, polyVec.getVectorIndex(0), polyVec2.getVectorIndex(0));
        for (int i2 = 1; i2 < kyberEngine.getKyberK(); i2++) {
            Poly.baseMultMontgomery(poly2, polyVec.getVectorIndex(i2), polyVec2.getVectorIndex(i2));
            poly.addCoeffs(poly2);
        }
        poly.reduce();
    }

    public void addPoly(PolyVec polyVec) {
        for (int i2 = 0; i2 < this.kyberK; i2++) {
            getVectorIndex(i2).addCoeffs(polyVec.getVectorIndex(i2));
        }
    }

    public byte[] compressPolyVec() {
        conditionalSubQ();
        byte[] bArr = new byte[this.engine.getKyberPolyVecCompressedBytes()];
        int i2 = 32;
        if (this.engine.getKyberPolyVecCompressedBytes() == this.kyberK * DilithiumEngine.DilithiumPolyT1PackedBytes) {
            short[] sArr = new short[4];
            int i3 = 0;
            for (int i4 = 0; i4 < this.kyberK; i4++) {
                for (int i5 = 0; i5 < 64; i5++) {
                    for (int i6 = 0; i6 < 4; i6++) {
                        sArr[i6] = (short) (((((((long) getVectorIndex(i4).getCoeffIndex((i5 * 4) + i6)) << 10) + 1665) * 1290167) >> 32) & 1023);
                    }
                    short s = sArr[0];
                    bArr[i3] = (byte) s;
                    short s2 = sArr[1];
                    bArr[i3 + 1] = (byte) ((s >> 8) | (s2 << 2));
                    int i7 = s2 >> 6;
                    short s3 = sArr[2];
                    bArr[i3 + 2] = (byte) (i7 | (s3 << 4));
                    int i8 = s3 >> 4;
                    short s4 = sArr[3];
                    bArr[i3 + 3] = (byte) (i8 | (s4 << 6));
                    bArr[i3 + 4] = (byte) (s4 >> 2);
                    i3 += 5;
                }
            }
        } else {
            if (this.engine.getKyberPolyVecCompressedBytes() != this.kyberK * 352) {
                v7.h("Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!");
                return null;
            }
            short[] sArr2 = new short[8];
            int i9 = 0;
            int i10 = 0;
            while (i9 < this.kyberK) {
                int i11 = 0;
                while (i11 < i2) {
                    for (int i12 = 0; i12 < 8; i12++) {
                        sArr2[i12] = (short) (((((((long) getVectorIndex(i9).getCoeffIndex((i11 * 8) + i12)) << 11) + 1664) * 645084) >> 31) & 2047);
                    }
                    short s5 = sArr2[0];
                    bArr[i10] = (byte) s5;
                    short s6 = sArr2[1];
                    bArr[i10 + 1] = (byte) ((s5 >> 8) | (s6 << 3));
                    short s7 = sArr2[2];
                    bArr[i10 + 2] = (byte) ((s6 >> 5) | (s7 << 6));
                    bArr[i10 + 3] = (byte) (s7 >> 2);
                    int i13 = s7 >> 10;
                    short s8 = sArr2[3];
                    bArr[i10 + 4] = (byte) (i13 | (s8 << 1));
                    short s9 = sArr2[4];
                    bArr[i10 + 5] = (byte) ((s8 >> 7) | (s9 << 4));
                    short s10 = sArr2[5];
                    bArr[i10 + 6] = (byte) ((s9 >> 4) | (s10 << 7));
                    bArr[i10 + 7] = (byte) (s10 >> 1);
                    int i14 = s10 >> 9;
                    short s11 = sArr2[6];
                    bArr[i10 + 8] = (byte) (i14 | (s11 << 2));
                    int i15 = s11 >> 6;
                    short s12 = sArr2[7];
                    bArr[i10 + 9] = (byte) (i15 | (s12 << 5));
                    bArr[i10 + 10] = (byte) (s12 >> 3);
                    i10 += 11;
                    i11++;
                    i2 = 32;
                }
                i9++;
                i2 = 32;
            }
        }
        return bArr;
    }

    public void conditionalSubQ() {
        for (int i2 = 0; i2 < this.kyberK; i2++) {
            getVectorIndex(i2).conditionalSubQ();
        }
    }

    public void decompressPolyVec(byte[] bArr) {
        int i2 = 3;
        int i3 = 6;
        short s = 2;
        short s2 = 4;
        short s3 = 1;
        if (this.engine.getKyberPolyVecCompressedBytes() == this.kyberK * DilithiumEngine.DilithiumPolyT1PackedBytes) {
            int i4 = 0;
            for (int i5 = 0; i5 < this.kyberK; i5++) {
                for (int i6 = 0; i6 < 64; i6++) {
                    int i7 = bArr[i4] & 255;
                    byte b2 = bArr[i4 + 1];
                    byte b3 = bArr[i4 + 2];
                    byte b4 = bArr[i4 + 3];
                    short[] sArr = {(short) (i7 | ((short) ((b2 & 255) << 8))), (short) (((b2 & 255) >> 2) | ((short) ((b3 & 255) << 6))), (short) (((b3 & 255) >> 4) | ((short) ((b4 & 255) << 4))), (short) (((b4 & 255) >> 6) | ((short) ((bArr[i4 + 4] & 255) << 2)))};
                    i4 += 5;
                    for (int i8 = 0; i8 < 4; i8++) {
                        this.vec[i5].setCoeffIndex((i6 * 4) + i8, (short) ((((sArr[i8] & 1023) * KyberEngine.KyberQ) + 512) >> 10));
                    }
                }
            }
            return;
        }
        if (this.engine.getKyberPolyVecCompressedBytes() != this.kyberK * 352) {
            v7.h("Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!");
            return;
        }
        int i9 = 0;
        for (int i10 = 0; i10 < this.kyberK; i10++) {
            int i11 = 0;
            while (i11 < 32) {
                int i12 = bArr[i9] & 255;
                byte b5 = bArr[i9 + 1];
                short s4 = (short) (i12 | (((short) (b5 & 255)) << 8));
                byte b6 = bArr[i9 + 2];
                short s5 = (short) (((b5 & 255) >> i2) | (((short) (b6 & 255)) << 5));
                int i13 = ((b6 & 255) >> i3) | (((short) (bArr[i9 + 3] & 255)) << s);
                byte b7 = bArr[i9 + 4];
                int i14 = i2;
                short s6 = (short) (((short) ((b7 & 255) << 10)) | i13);
                int i15 = (b7 & 255) >> s3;
                byte b8 = bArr[i9 + 5];
                int i16 = i3;
                short s7 = (short) ((((short) (b8 & 255)) << 7) | i15);
                int i17 = (b8 & 255) >> s2;
                byte b9 = bArr[i9 + 6];
                short s8 = s;
                short s9 = (short) ((((short) (b9 & 255)) << s2) | i17);
                int i18 = ((b9 & 255) >> 7) | (((short) (bArr[i9 + 7] & 255)) << s3);
                byte b10 = bArr[i9 + 8];
                short s10 = s2;
                short s11 = (short) (((short) ((b10 & 255) << 9)) | i18);
                int i19 = (b10 & 255) >> 2;
                byte b11 = bArr[i9 + 9];
                short s12 = s3;
                short s13 = (short) ((((short) (b11 & 255)) << 6) | i19);
                short s14 = (short) (((b11 & 255) >> 5) | (((short) (bArr[i9 + 10] & 255)) << 3));
                short[] sArr2 = new short[8];
                sArr2[0] = s4;
                sArr2[s12] = s5;
                sArr2[s8] = s6;
                sArr2[i14] = s7;
                sArr2[s10] = s9;
                sArr2[5] = s11;
                sArr2[i16] = s13;
                sArr2[7] = s14;
                i9 += 11;
                for (int i20 = 0; i20 < 8; i20++) {
                    this.vec[i10].setCoeffIndex((i11 * 8) + i20, (short) ((((sArr2[i20] & 2047) * KyberEngine.KyberQ) + 1024) >> 11));
                }
                i11++;
                i2 = i14;
                i3 = i16;
                s = s8;
                s2 = s10;
                s3 = s12;
            }
        }
    }

    public void fromBytes(byte[] bArr) {
        int i2 = 0;
        while (i2 < this.kyberK) {
            Poly vectorIndex = getVectorIndex(i2);
            int i3 = i2 * KyberEngine.KyberPolyBytes;
            i2++;
            vectorIndex.fromBytes(Arrays.copyOfRange(bArr, i3, i2 * KyberEngine.KyberPolyBytes));
        }
    }

    public Poly getVectorIndex(int i2) {
        return this.vec[i2];
    }

    public void polyVecInverseNttToMont() {
        for (int i2 = 0; i2 < this.kyberK; i2++) {
            getVectorIndex(i2).polyInverseNttToMont();
        }
    }

    public void polyVecNtt() {
        for (int i2 = 0; i2 < this.kyberK; i2++) {
            getVectorIndex(i2).polyNtt();
        }
    }

    public void reducePoly() {
        for (int i2 = 0; i2 < this.kyberK; i2++) {
            getVectorIndex(i2).reduce();
        }
    }

    public byte[] toBytes() {
        byte[] bArr = new byte[this.polyVecBytes];
        for (int i2 = 0; i2 < this.kyberK; i2++) {
            System.arraycopy(this.vec[i2].toBytes(), 0, bArr, i2 * KyberEngine.KyberPolyBytes, KyberEngine.KyberPolyBytes);
        }
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        for (int i2 = 0; i2 < this.kyberK; i2++) {
            stringBuffer.append(this.vec[i2].toString());
            if (i2 != this.kyberK - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public PolyVec() throws Exception {
        throw new Exception("Requires Parameter");
    }
}
