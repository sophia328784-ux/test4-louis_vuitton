package org.bouncycastle.pqc.crypto.crystals.kyber;

import defpackage.v7;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes5.dex */
class Poly {
    private KyberEngine engine;
    private int eta1;
    private int polyCompressedBytes;
    private Symmetric symmetric;
    private short[] coeffs = new short[256];
    private int eta2 = KyberEngine.getKyberEta2();

    public Poly(KyberEngine kyberEngine) {
        this.engine = kyberEngine;
        this.polyCompressedBytes = kyberEngine.getKyberPolyCompressedBytes();
        this.eta1 = kyberEngine.getKyberEta1();
        this.symmetric = kyberEngine.getSymmetric();
    }

    public static void baseMultMontgomery(Poly poly, Poly poly2, Poly poly3) {
        for (int i2 = 0; i2 < 64; i2++) {
            int i3 = i2 * 4;
            short coeffIndex = poly2.getCoeffIndex(i3);
            int i4 = i3 + 1;
            short coeffIndex2 = poly2.getCoeffIndex(i4);
            short coeffIndex3 = poly3.getCoeffIndex(i3);
            short coeffIndex4 = poly3.getCoeffIndex(i4);
            short[] sArr = Ntt.nttZetas;
            int i5 = i2 + 64;
            Ntt.baseMult(poly, i3, coeffIndex, coeffIndex2, coeffIndex3, coeffIndex4, sArr[i5]);
            int i6 = i3 + 2;
            int i7 = i3 + 3;
            Ntt.baseMult(poly, i6, poly2.getCoeffIndex(i6), poly2.getCoeffIndex(i7), poly3.getCoeffIndex(i6), poly3.getCoeffIndex(i7), (short) (sArr[i5] * (-1)));
        }
    }

    public void addCoeffs(Poly poly) {
        for (int i2 = 0; i2 < 256; i2++) {
            setCoeffIndex(i2, (short) (getCoeffIndex(i2) + poly.getCoeffIndex(i2)));
        }
    }

    public byte[] compressPoly() {
        byte[] bArr = new byte[8];
        byte[] bArr2 = new byte[this.polyCompressedBytes];
        conditionalSubQ();
        int i2 = this.polyCompressedBytes;
        if (i2 == 128) {
            int i3 = 0;
            for (int i4 = 0; i4 < 32; i4++) {
                for (int i5 = 0; i5 < 8; i5++) {
                    bArr[i5] = (byte) (((((getCoeffIndex((i4 * 8) + i5) << 4) + 1665) * 80635) >> 28) & 15);
                }
                bArr2[i3] = (byte) (bArr[0] | (bArr[1] << 4));
                bArr2[i3 + 1] = (byte) (bArr[2] | (bArr[3] << 4));
                bArr2[i3 + 2] = (byte) (bArr[4] | (bArr[5] << 4));
                bArr2[i3 + 3] = (byte) (bArr[6] | (bArr[7] << 4));
                i3 += 4;
            }
        } else {
            if (i2 != 160) {
                v7.h("PolyCompressedBytes is neither 128 or 160!");
                return null;
            }
            int i6 = 0;
            for (int i7 = 0; i7 < 32; i7++) {
                for (int i8 = 0; i8 < 8; i8++) {
                    bArr[i8] = (byte) (((((getCoeffIndex((i7 * 8) + i8) << 5) + 1664) * 40318) >> 27) & 31);
                }
                bArr2[i6] = (byte) (bArr[0] | (bArr[1] << 5));
                bArr2[i6 + 1] = (byte) ((bArr[1] >> 3) | (bArr[2] << 2) | (bArr[3] << 7));
                bArr2[i6 + 2] = (byte) ((bArr[3] >> 1) | (bArr[4] << 4));
                bArr2[i6 + 3] = (byte) ((bArr[4] >> 4) | (bArr[5] << 1) | (bArr[6] << 6));
                bArr2[i6 + 4] = (byte) ((bArr[6] >> 2) | (bArr[7] << 3));
                i6 += 5;
            }
        }
        return bArr2;
    }

    public void conditionalSubQ() {
        for (int i2 = 0; i2 < 256; i2++) {
            setCoeffIndex(i2, Reduce.conditionalSubQ(getCoeffIndex(i2)));
        }
    }

    public void convertToMont() {
        for (int i2 = 0; i2 < 256; i2++) {
            setCoeffIndex(i2, Reduce.montgomeryReduce(getCoeffIndex(i2) * 1353));
        }
    }

    public void decompressPoly(byte[] bArr) {
        char c2 = 4;
        int i2 = 1;
        if (this.engine.getKyberPolyCompressedBytes() == 128) {
            int i3 = 0;
            for (int i4 = 0; i4 < 128; i4++) {
                int i5 = i4 * 2;
                setCoeffIndex(i5, (short) (((((short) (bArr[i3] & 15)) * 3329) + 8) >> 4));
                setCoeffIndex(i5 + 1, (short) (((((short) ((bArr[i3] & 255) >> 4)) * 3329) + 8) >> 4));
                i3++;
            }
            return;
        }
        if (this.engine.getKyberPolyCompressedBytes() != 160) {
            v7.h("PolyCompressedBytes is neither 128 or 160!");
            return;
        }
        int i6 = 0;
        int i7 = 0;
        while (i6 < 32) {
            byte b2 = bArr[i7];
            byte b3 = (byte) (b2 & 255);
            byte b4 = bArr[i7 + 1];
            byte b5 = (byte) (((b2 & 255) >> 5) | ((b4 & 255) << 3));
            byte b6 = (byte) ((b4 & 255) >> 2);
            byte b7 = bArr[i7 + 2];
            char c3 = c2;
            byte b8 = (byte) (((b7 & 255) << i2) | ((b4 & 255) >> 7));
            int i8 = (b7 & 255) >> 4;
            byte b9 = bArr[i7 + 3];
            int i9 = i2;
            byte b10 = (byte) (((b9 & 255) << 4) | i8);
            byte b11 = (byte) ((b9 & 255) >> 1);
            byte b12 = bArr[i7 + 4];
            byte b13 = (byte) (((b12 & 255) << 2) | ((b9 & 255) >> 6));
            byte[] bArr2 = new byte[8];
            bArr2[0] = b3;
            bArr2[i9] = b5;
            bArr2[2] = b6;
            bArr2[3] = b8;
            bArr2[c3] = b10;
            bArr2[5] = b11;
            bArr2[6] = b13;
            bArr2[7] = (byte) ((b12 & 255) >> 3);
            i7 += 5;
            for (int i10 = 0; i10 < 8; i10++) {
                setCoeffIndex((i6 * 8) + i10, (short) ((((bArr2[i10] & 31) * KyberEngine.KyberQ) + 16) >> 5));
            }
            i6++;
            c2 = c3;
            i2 = i9;
        }
    }

    public void fromBytes(byte[] bArr) {
        for (int i2 = 0; i2 < 128; i2++) {
            int i3 = i2 * 2;
            int i4 = i2 * 3;
            int i5 = i4 + 1;
            setCoeffIndex(i3, (short) (((bArr[i4] & 255) | ((bArr[i5] & 255) << 8)) & 4095));
            setCoeffIndex(i3 + 1, (short) ((((long) ((bArr[i5] & 255) >> 4)) | ((long) ((bArr[i4 + 2] & 255) << 4))) & 4095));
        }
    }

    public void fromMsg(byte[] bArr) {
        if (bArr.length != 32) {
            v7.h("KYBER_INDCPA_MSGBYTES must be equal to KYBER_N/8 bytes!");
            return;
        }
        for (int i2 = 0; i2 < 32; i2++) {
            for (int i3 = 0; i3 < 8; i3++) {
                setCoeffIndex((i2 * 8) + i3, (short) (((short) (((short) (((bArr[i2] & 255) >> i3) & 1)) * (-1))) & 1665));
            }
        }
    }

    public short getCoeffIndex(int i2) {
        return this.coeffs[i2];
    }

    public short[] getCoeffs() {
        return this.coeffs;
    }

    public void getEta1Noise(byte[] bArr, byte b2) {
        byte[] bArr2 = new byte[(this.eta1 * 256) / 4];
        this.symmetric.prf(bArr2, bArr, b2);
        CBD.kyberCBD(this, bArr2, this.eta1);
    }

    public void getEta2Noise(byte[] bArr, byte b2) {
        byte[] bArr2 = new byte[(this.eta2 * 256) / 4];
        this.symmetric.prf(bArr2, bArr, b2);
        CBD.kyberCBD(this, bArr2, this.eta2);
    }

    public void polyInverseNttToMont() {
        setCoeffs(Ntt.invNtt(getCoeffs()));
    }

    public void polyNtt() {
        setCoeffs(Ntt.ntt(getCoeffs()));
        reduce();
    }

    public void polySubtract(Poly poly) {
        for (int i2 = 0; i2 < 256; i2++) {
            setCoeffIndex(i2, (short) (poly.getCoeffIndex(i2) - getCoeffIndex(i2)));
        }
    }

    public void reduce() {
        for (int i2 = 0; i2 < 256; i2++) {
            setCoeffIndex(i2, Reduce.barretReduce(getCoeffIndex(i2)));
        }
    }

    public void setCoeffIndex(int i2, short s) {
        this.coeffs[i2] = s;
    }

    public void setCoeffs(short[] sArr) {
        this.coeffs = sArr;
    }

    public byte[] toBytes() {
        byte[] bArr = new byte[KyberEngine.KyberPolyBytes];
        conditionalSubQ();
        for (int i2 = 0; i2 < 128; i2++) {
            int i3 = i2 * 2;
            short coeffIndex = getCoeffIndex(i3);
            short coeffIndex2 = getCoeffIndex(i3 + 1);
            int i4 = i2 * 3;
            bArr[i4] = (byte) coeffIndex;
            bArr[i4 + 1] = (byte) ((coeffIndex >> 8) | (coeffIndex2 << 4));
            bArr[i4 + 2] = (byte) (coeffIndex2 >> 4);
        }
        return bArr;
    }

    public byte[] toMsg() {
        byte[] bArr = new byte[KyberEngine.getKyberIndCpaMsgBytes()];
        conditionalSubQ();
        for (int i2 = 0; i2 < 32; i2++) {
            bArr[i2] = 0;
            for (int i3 = 0; i3 < 8; i3++) {
                bArr[i2] = (byte) (((byte) (((((((getCoeffIndex((i2 * 8) + i3) & HPKE.aead_EXPORT_ONLY) << 1) + 1665) * 80635) >> 28) & 1) << i3)) | bArr[i2]);
            }
        }
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        int i2 = 0;
        while (true) {
            short[] sArr = this.coeffs;
            if (i2 >= sArr.length) {
                stringBuffer.append("]");
                return stringBuffer.toString();
            }
            stringBuffer.append((int) sArr[i2]);
            if (i2 != this.coeffs.length - 1) {
                stringBuffer.append(", ");
            }
            i2++;
        }
    }
}
