package org.bouncycastle.pqc.crypto.crystals.dilithium;

import defpackage.v7;
import org.bouncycastle.crypto.digests.SHAKEDigest;

/* JADX INFO: loaded from: classes5.dex */
class Poly {
    private final DilithiumEngine engine;
    private final int polyUniformNBlocks;
    private final Symmetric symmetric;
    private final int dilithiumN = 256;
    private int[] coeffs = new int[256];

    public Poly(DilithiumEngine dilithiumEngine) {
        this.engine = dilithiumEngine;
        Symmetric symmetricGetSymmetric = dilithiumEngine.GetSymmetric();
        this.symmetric = symmetricGetSymmetric;
        int i2 = symmetricGetSymmetric.stream128BlockBytes;
        this.polyUniformNBlocks = (i2 + 767) / i2;
    }

    private static int rejectEta(Poly poly, int i2, int i3, byte[] bArr, int i4, int i5) {
        int i6 = 0;
        int i7 = 0;
        while (i6 < i3 && i7 < i4) {
            byte b2 = bArr[i7];
            int i8 = b2 & 15;
            i7++;
            int i9 = (b2 & 255) >> 4;
            if (i5 == 2) {
                if (i8 < 15) {
                    poly.setCoeffIndex(i2 + i6, 2 - (i8 - (((i8 * 205) >> 10) * 5)));
                    i6++;
                }
                if (i9 < 15 && i6 < i3) {
                    poly.setCoeffIndex(i2 + i6, 2 - (i9 - (((i9 * 205) >> 10) * 5)));
                    i6++;
                }
            } else if (i5 == 4) {
                if (i8 < 9) {
                    poly.setCoeffIndex(i2 + i6, 4 - i8);
                    i6++;
                }
                if (i9 < 9 && i6 < i3) {
                    poly.setCoeffIndex(i2 + i6, 4 - i9);
                    i6++;
                }
            }
        }
        return i6;
    }

    private static int rejectUniform(Poly poly, int i2, int i3, byte[] bArr, int i4) {
        int i5 = 0;
        int i6 = 0;
        while (i5 < i3 && i6 + 3 <= i4) {
            int i7 = i6 + 2;
            int i8 = ((bArr[i6 + 1] & 255) << 8) | (bArr[i6] & 255);
            i6 += 3;
            int i9 = (i8 | ((bArr[i7] & 255) << 16)) & 8388607;
            if (i9 < 8380417) {
                poly.setCoeffIndex(i2 + i5, i9);
                i5++;
            }
        }
        return i5;
    }

    private void unpackZ(byte[] bArr) {
        int i2 = 0;
        if (this.engine.getDilithiumGamma1() != 131072) {
            if (this.engine.getDilithiumGamma1() != 524288) {
                v7.h("Wrong Dilithiumn Gamma1!");
                return;
            }
            while (i2 < this.dilithiumN / 2) {
                int i3 = i2 * 2;
                int i4 = i2 * 5;
                int i5 = i4 + 2;
                setCoeffIndex(i3, ((bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i5] & 255) << 16)) & 1048575);
                int i6 = i3 + 1;
                setCoeffIndex(i6, (((bArr[i4 + 4] & 255) << 12) | ((bArr[i5] & 255) >> 4) | ((bArr[i4 + 3] & 255) << 4)) & 1048575);
                setCoeffIndex(i3, this.engine.getDilithiumGamma1() - getCoeffIndex(i3));
                setCoeffIndex(i6, this.engine.getDilithiumGamma1() - getCoeffIndex(i6));
                i2++;
            }
            return;
        }
        while (i2 < this.dilithiumN / 4) {
            int i7 = i2 * 4;
            int i8 = i2 * 9;
            int i9 = i8 + 2;
            setCoeffIndex(i7, ((bArr[i8] & 255) | ((bArr[i8 + 1] & 255) << 8) | ((bArr[i9] & 255) << 16)) & 262143);
            int i10 = i7 + 1;
            int i11 = i8 + 4;
            setCoeffIndex(i10, (((bArr[i9] & 255) >> 2) | ((bArr[i8 + 3] & 255) << 6) | ((bArr[i11] & 255) << 14)) & 262143);
            int i12 = i7 + 2;
            int i13 = i8 + 6;
            setCoeffIndex(i12, (((bArr[i11] & 255) >> 4) | ((bArr[i8 + 5] & 255) << 4) | ((bArr[i13] & 255) << 12)) & 262143);
            int i14 = i7 + 3;
            setCoeffIndex(i14, (((bArr[i8 + 8] & 255) << 10) | ((bArr[i13] & 255) >> 6) | ((bArr[i8 + 7] & 255) << 2)) & 262143);
            setCoeffIndex(i7, this.engine.getDilithiumGamma1() - getCoeffIndex(i7));
            setCoeffIndex(i10, this.engine.getDilithiumGamma1() - getCoeffIndex(i10));
            setCoeffIndex(i12, this.engine.getDilithiumGamma1() - getCoeffIndex(i12));
            setCoeffIndex(i14, this.engine.getDilithiumGamma1() - getCoeffIndex(i14));
            i2++;
        }
    }

    public void addPoly(Poly poly) {
        for (int i2 = 0; i2 < this.dilithiumN; i2++) {
            setCoeffIndex(i2, getCoeffIndex(i2) + poly.getCoeffIndex(i2));
        }
    }

    public void challenge(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        byte[] bArr2 = new byte[this.symmetric.stream256BlockBytes];
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr, 0, 32);
        sHAKEDigest.doOutput(bArr2, 0, this.symmetric.stream256BlockBytes);
        long j2 = 0;
        int i6 = 0;
        while (true) {
            i2 = 8;
            if (i6 >= 8) {
                break;
            }
            j2 |= ((long) (bArr2[i6] & 255)) << (i6 * 8);
            i6++;
        }
        int i7 = 0;
        while (true) {
            i3 = this.dilithiumN;
            if (i7 >= i3) {
                break;
            }
            setCoeffIndex(i7, 0);
            i7++;
        }
        int dilithiumTau = i3 - this.engine.getDilithiumTau();
        while (dilithiumTau < this.dilithiumN) {
            while (true) {
                int i8 = this.symmetric.stream256BlockBytes;
                if (i2 >= i8) {
                    sHAKEDigest.doOutput(bArr2, 0, i8);
                    i2 = 0;
                }
                i4 = i2 + 1;
                i5 = bArr2[i2] & 255;
                if (i5 <= dilithiumTau) {
                    break;
                } else {
                    i2 = i4;
                }
            }
            setCoeffIndex(dilithiumTau, getCoeffIndex(i5));
            setCoeffIndex(i5, (int) (1 - ((j2 & 1) * 2)));
            j2 >>= 1;
            dilithiumTau++;
            i2 = i4;
        }
    }

    public boolean checkNorm(int i2) {
        if (i2 > 1047552) {
            return true;
        }
        for (int i3 = 0; i3 < this.dilithiumN; i3++) {
            if (getCoeffIndex(i3) - ((getCoeffIndex(i3) >> 31) & (getCoeffIndex(i3) * 2)) >= i2) {
                return true;
            }
        }
        return false;
    }

    public void conditionalAddQ() {
        for (int i2 = 0; i2 < this.dilithiumN; i2++) {
            setCoeffIndex(i2, Reduce.conditionalAddQ(getCoeffIndex(i2)));
        }
    }

    public void decompose(Poly poly) {
        for (int i2 = 0; i2 < this.dilithiumN; i2++) {
            int[] iArrDecompose = Rounding.decompose(getCoeffIndex(i2), this.engine.getDilithiumGamma2());
            setCoeffIndex(i2, iArrDecompose[1]);
            poly.setCoeffIndex(i2, iArrDecompose[0]);
        }
    }

    public int getCoeffIndex(int i2) {
        return this.coeffs[i2];
    }

    public int[] getCoeffs() {
        return this.coeffs;
    }

    public void invNttToMont() {
        setCoeffs(Ntt.invNttToMont(getCoeffs()));
    }

    public void pointwiseAccountMontgomery(PolyVecL polyVecL, PolyVecL polyVecL2) {
        Poly poly = new Poly(this.engine);
        pointwiseMontgomery(polyVecL.getVectorIndex(0), polyVecL2.getVectorIndex(0));
        for (int i2 = 1; i2 < this.engine.getDilithiumL(); i2++) {
            poly.pointwiseMontgomery(polyVecL.getVectorIndex(i2), polyVecL2.getVectorIndex(i2));
            addPoly(poly);
        }
    }

    public void pointwiseMontgomery(Poly poly, Poly poly2) {
        for (int i2 = 0; i2 < this.dilithiumN; i2++) {
            setCoeffIndex(i2, Reduce.montgomeryReduce(((long) poly.getCoeffIndex(i2)) * ((long) poly2.getCoeffIndex(i2))));
        }
    }

    public byte[] polyEtaPack(byte[] bArr, int i2) {
        byte[] bArr2 = new byte[8];
        if (this.engine.getDilithiumEta() == 2) {
            for (int i3 = 0; i3 < this.dilithiumN / 8; i3++) {
                int i4 = i3 * 8;
                bArr2[0] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(i4));
                bArr2[1] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(i4 + 1));
                bArr2[2] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(i4 + 2));
                bArr2[3] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(i4 + 3));
                bArr2[4] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(i4 + 4));
                bArr2[5] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(i4 + 5));
                bArr2[6] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(i4 + 6));
                bArr2[7] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(i4 + 7));
                int i5 = (i3 * 3) + i2;
                bArr[i5] = (byte) (bArr2[0] | (bArr2[1] << 3) | (bArr2[2] << 6));
                bArr[i5 + 1] = (byte) ((bArr2[3] << 1) | (bArr2[2] >> 2) | (bArr2[4] << 4) | (bArr2[5] << 7));
                bArr[i5 + 2] = (byte) ((bArr2[5] >> 1) | (bArr2[6] << 2) | (bArr2[7] << 5));
            }
        } else {
            if (this.engine.getDilithiumEta() != 4) {
                v7.h("Eta needs to be 2 or 4!");
                return null;
            }
            for (int i6 = 0; i6 < this.dilithiumN / 2; i6++) {
                int i7 = i6 * 2;
                bArr2[0] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(i7));
                byte dilithiumEta = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(i7 + 1));
                bArr2[1] = dilithiumEta;
                bArr[i2 + i6] = (byte) ((dilithiumEta << 4) | bArr2[0]);
            }
        }
        return bArr;
    }

    public void polyEtaUnpack(byte[] bArr, int i2) {
        int dilithiumEta = this.engine.getDilithiumEta();
        int i3 = 0;
        if (this.engine.getDilithiumEta() != 2) {
            if (this.engine.getDilithiumEta() == 4) {
                while (i3 < this.dilithiumN / 2) {
                    int i4 = i3 * 2;
                    int i5 = i2 + i3;
                    setCoeffIndex(i4, bArr[i5] & 15);
                    int i6 = i4 + 1;
                    setCoeffIndex(i6, (bArr[i5] & 255) >> 4);
                    setCoeffIndex(i4, dilithiumEta - getCoeffIndex(i4));
                    setCoeffIndex(i6, dilithiumEta - getCoeffIndex(i6));
                    i3++;
                }
                return;
            }
            return;
        }
        while (i3 < this.dilithiumN / 8) {
            int i7 = (i3 * 3) + i2;
            int i8 = i3 * 8;
            setCoeffIndex(i8, bArr[i7] & 7);
            int i9 = i8 + 1;
            setCoeffIndex(i9, ((bArr[i7] & 255) >> 3) & 7);
            int i10 = i8 + 2;
            int i11 = i7 + 1;
            setCoeffIndex(i10, ((bArr[i7] & 255) >> 6) | (((bArr[i11] & 255) << 2) & 7));
            int i12 = i8 + 3;
            setCoeffIndex(i12, ((bArr[i11] & 255) >> 1) & 7);
            int i13 = i8 + 4;
            setCoeffIndex(i13, ((bArr[i11] & 255) >> 4) & 7);
            int i14 = i8 + 5;
            int i15 = i7 + 2;
            setCoeffIndex(i14, ((bArr[i11] & 255) >> 7) | (((bArr[i15] & 255) << 1) & 7));
            int i16 = i8 + 6;
            setCoeffIndex(i16, ((bArr[i15] & 255) >> 2) & 7);
            int i17 = i8 + 7;
            setCoeffIndex(i17, ((bArr[i15] & 255) >> 5) & 7);
            setCoeffIndex(i8, dilithiumEta - getCoeffIndex(i8));
            setCoeffIndex(i9, dilithiumEta - getCoeffIndex(i9));
            setCoeffIndex(i10, dilithiumEta - getCoeffIndex(i10));
            setCoeffIndex(i12, dilithiumEta - getCoeffIndex(i12));
            setCoeffIndex(i13, dilithiumEta - getCoeffIndex(i13));
            setCoeffIndex(i14, dilithiumEta - getCoeffIndex(i14));
            setCoeffIndex(i16, dilithiumEta - getCoeffIndex(i16));
            setCoeffIndex(i17, dilithiumEta - getCoeffIndex(i17));
            i3++;
        }
    }

    public int polyMakeHint(Poly poly, Poly poly2) {
        int coeffIndex = 0;
        for (int i2 = 0; i2 < this.dilithiumN; i2++) {
            setCoeffIndex(i2, Rounding.makeHint(poly.getCoeffIndex(i2), poly2.getCoeffIndex(i2), this.engine));
            coeffIndex += getCoeffIndex(i2);
        }
        return coeffIndex;
    }

    public void polyNtt() {
        setCoeffs(Ntt.ntt(this.coeffs));
    }

    public void polyUseHint(Poly poly, Poly poly2) {
        for (int i2 = 0; i2 < this.dilithiumN; i2++) {
            setCoeffIndex(i2, Rounding.useHint(poly.getCoeffIndex(i2), poly2.getCoeffIndex(i2), this.engine.getDilithiumGamma2()));
        }
    }

    public byte[] polyt0Pack(byte[] bArr, int i2) {
        for (int i3 = 0; i3 < this.dilithiumN / 8; i3++) {
            int i4 = i3 * 8;
            int[] iArr = {4096 - getCoeffIndex(i4), 4096 - getCoeffIndex(i4 + 1), 4096 - getCoeffIndex(i4 + 2), 4096 - getCoeffIndex(i4 + 3), 4096 - getCoeffIndex(i4 + 4), 4096 - getCoeffIndex(i4 + 5), 4096 - getCoeffIndex(i4 + 6), 4096 - getCoeffIndex(i4 + 7)};
            int i5 = (i3 * 13) + i2;
            int i6 = iArr[0];
            bArr[i5] = (byte) i6;
            int i7 = i5 + 1;
            byte b2 = (byte) (i6 >> 8);
            bArr[i7] = b2;
            int i8 = iArr[1];
            bArr[i7] = (byte) (b2 | ((byte) (i8 << 5)));
            bArr[i5 + 2] = (byte) (i8 >> 3);
            int i9 = i5 + 3;
            byte b3 = (byte) (i8 >> 11);
            bArr[i9] = b3;
            int i10 = iArr[2];
            bArr[i9] = (byte) (b3 | ((byte) (i10 << 2)));
            int i11 = i5 + 4;
            byte b4 = (byte) (i10 >> 6);
            bArr[i11] = b4;
            int i12 = iArr[3];
            bArr[i11] = (byte) (b4 | ((byte) (i12 << 7)));
            bArr[i5 + 5] = (byte) (i12 >> 1);
            int i13 = i5 + 6;
            byte b5 = (byte) (i12 >> 9);
            bArr[i13] = b5;
            int i14 = iArr[4];
            bArr[i13] = (byte) (b5 | ((byte) (i14 << 4)));
            bArr[i5 + 7] = (byte) (i14 >> 4);
            int i15 = i5 + 8;
            byte b6 = (byte) (i14 >> 12);
            bArr[i15] = b6;
            int i16 = iArr[5];
            bArr[i15] = (byte) (b6 | ((byte) (i16 << 1)));
            int i17 = i5 + 9;
            byte b7 = (byte) (i16 >> 7);
            bArr[i17] = b7;
            int i18 = iArr[6];
            bArr[i17] = (byte) (b7 | ((byte) (i18 << 6)));
            bArr[i5 + 10] = (byte) (i18 >> 2);
            int i19 = i5 + 11;
            byte b8 = (byte) (i18 >> 10);
            bArr[i19] = b8;
            int i20 = iArr[7];
            bArr[i19] = (byte) (((byte) (i20 << 3)) | b8);
            bArr[i5 + 12] = (byte) (i20 >> 5);
        }
        return bArr;
    }

    public void polyt0Unpack(byte[] bArr, int i2) {
        for (int i3 = 0; i3 < this.dilithiumN / 8; i3++) {
            int i4 = (i3 * 13) + i2;
            int i5 = i3 * 8;
            int i6 = i4 + 1;
            setCoeffIndex(i5, ((bArr[i4] & 255) | ((bArr[i6] & 255) << 8)) & 8191);
            int i7 = i5 + 1;
            int i8 = i4 + 3;
            setCoeffIndex(i7, (((bArr[i6] & 255) >> 5) | ((bArr[i4 + 2] & 255) << 3) | ((bArr[i8] & 255) << 11)) & 8191);
            int i9 = i5 + 2;
            int i10 = i4 + 4;
            setCoeffIndex(i9, (((bArr[i8] & 255) >> 2) | ((bArr[i10] & 255) << 6)) & 8191);
            int i11 = i5 + 3;
            int i12 = i4 + 6;
            setCoeffIndex(i11, (((bArr[i10] & 255) >> 7) | ((bArr[i4 + 5] & 255) << 1) | ((bArr[i12] & 255) << 9)) & 8191);
            int i13 = i5 + 4;
            int i14 = i4 + 8;
            setCoeffIndex(i13, (((bArr[i12] & 255) >> 4) | ((bArr[i4 + 7] & 255) << 4) | ((bArr[i14] & 255) << 12)) & 8191);
            int i15 = i5 + 5;
            int i16 = i4 + 9;
            setCoeffIndex(i15, (((bArr[i14] & 255) >> 1) | ((bArr[i16] & 255) << 7)) & 8191);
            int i17 = i5 + 6;
            int i18 = i4 + 11;
            setCoeffIndex(i17, (((bArr[i16] & 255) >> 6) | ((bArr[i4 + 10] & 255) << 2) | ((bArr[i18] & 255) << 10)) & 8191);
            int i19 = i5 + 7;
            setCoeffIndex(i19, (((bArr[i4 + 12] & 255) << 5) | ((bArr[i18] & 255) >> 3)) & 8191);
            setCoeffIndex(i5, 4096 - getCoeffIndex(i5));
            setCoeffIndex(i7, 4096 - getCoeffIndex(i7));
            setCoeffIndex(i9, 4096 - getCoeffIndex(i9));
            setCoeffIndex(i11, 4096 - getCoeffIndex(i11));
            setCoeffIndex(i13, 4096 - getCoeffIndex(i13));
            setCoeffIndex(i15, 4096 - getCoeffIndex(i15));
            setCoeffIndex(i17, 4096 - getCoeffIndex(i17));
            setCoeffIndex(i19, 4096 - getCoeffIndex(i19));
        }
    }

    public byte[] polyt1Pack() {
        byte[] bArr = new byte[DilithiumEngine.DilithiumPolyT1PackedBytes];
        for (int i2 = 0; i2 < this.dilithiumN / 4; i2++) {
            int i3 = i2 * 5;
            int[] iArr = this.coeffs;
            int i4 = i2 * 4;
            int i5 = iArr[i4];
            bArr[i3] = (byte) i5;
            int i6 = iArr[i4 + 1];
            bArr[i3 + 1] = (byte) ((i5 >> 8) | (i6 << 2));
            int i7 = i6 >> 6;
            int i8 = iArr[i4 + 2];
            bArr[i3 + 2] = (byte) (i7 | (i8 << 4));
            int i9 = iArr[i4 + 3];
            bArr[i3 + 3] = (byte) ((i9 << 6) | (i8 >> 4));
            bArr[i3 + 4] = (byte) (i9 >> 2);
        }
        return bArr;
    }

    public void polyt1Unpack(byte[] bArr) {
        for (int i2 = 0; i2 < this.dilithiumN / 4; i2++) {
            int i3 = i2 * 4;
            int i4 = i2 * 5;
            int i5 = i4 + 1;
            setCoeffIndex(i3, ((bArr[i4] & 255) | ((bArr[i5] & 255) << 8)) & 1023);
            int i6 = i4 + 2;
            setCoeffIndex(i3 + 1, (((bArr[i5] & 255) >> 2) | ((bArr[i6] & 255) << 6)) & 1023);
            int i7 = (bArr[i6] & 255) >> 4;
            int i8 = i4 + 3;
            setCoeffIndex(i3 + 2, (i7 | ((bArr[i8] & 255) << 4)) & 1023);
            setCoeffIndex(i3 + 3, (((bArr[i4 + 4] & 255) << 2) | ((bArr[i8] & 255) >> 6)) & 1023);
        }
    }

    public void power2Round(Poly poly) {
        for (int i2 = 0; i2 < this.dilithiumN; i2++) {
            int[] iArrPower2Round = Rounding.power2Round(getCoeffIndex(i2));
            setCoeffIndex(i2, iArrPower2Round[0]);
            poly.setCoeffIndex(i2, iArrPower2Round[1]);
        }
    }

    public void reduce() {
        for (int i2 = 0; i2 < this.dilithiumN; i2++) {
            setCoeffIndex(i2, Reduce.reduce32(getCoeffIndex(i2)));
        }
    }

    public void setCoeffIndex(int i2, int i3) {
        this.coeffs[i2] = i3;
    }

    public void setCoeffs(int[] iArr) {
        this.coeffs = iArr;
    }

    public void shiftLeft() {
        for (int i2 = 0; i2 < this.dilithiumN; i2++) {
            setCoeffIndex(i2, getCoeffIndex(i2) << 13);
        }
    }

    public void subtract(Poly poly) {
        for (int i2 = 0; i2 < this.dilithiumN; i2++) {
            setCoeffIndex(i2, getCoeffIndex(i2) - poly.getCoeffIndex(i2));
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        int i2 = 0;
        while (true) {
            int[] iArr = this.coeffs;
            if (i2 >= iArr.length) {
                stringBuffer.append("]");
                return stringBuffer.toString();
            }
            stringBuffer.append(iArr[i2]);
            if (i2 != this.coeffs.length - 1) {
                stringBuffer.append(", ");
            }
            i2++;
        }
    }

    public void uniformBlocks(byte[] bArr, short s) {
        int i2 = this.polyUniformNBlocks;
        Symmetric symmetric = this.symmetric;
        int i3 = i2 * symmetric.stream128BlockBytes;
        byte[] bArr2 = new byte[i3 + 2];
        symmetric.stream128init(bArr, s);
        this.symmetric.stream128squeezeBlocks(bArr2, 0, i3);
        int iRejectUniform = rejectUniform(this, 0, this.dilithiumN, bArr2, i3);
        while (iRejectUniform < this.dilithiumN) {
            int i4 = i3 % 3;
            for (int i5 = 0; i5 < i4; i5++) {
                bArr2[i5] = bArr2[(i3 - i4) + i5];
            }
            Symmetric symmetric2 = this.symmetric;
            symmetric2.stream128squeezeBlocks(bArr2, i4, symmetric2.stream128BlockBytes);
            i3 = this.symmetric.stream128BlockBytes + i4;
            iRejectUniform += rejectUniform(this, iRejectUniform, this.dilithiumN - iRejectUniform, bArr2, i3);
        }
    }

    public void uniformEta(byte[] bArr, short s) {
        int i2;
        int i3;
        int dilithiumEta = this.engine.getDilithiumEta();
        if (this.engine.getDilithiumEta() == 2) {
            i2 = this.symmetric.stream256BlockBytes;
            i3 = i2 + 135;
        } else if (this.engine.getDilithiumEta() != 4) {
            v7.h("Wrong Dilithium Eta!");
            return;
        } else {
            i2 = this.symmetric.stream256BlockBytes;
            i3 = i2 + 226;
        }
        int i4 = i3 / i2;
        Symmetric symmetric = this.symmetric;
        int i5 = i4 * symmetric.stream256BlockBytes;
        byte[] bArr2 = new byte[i5];
        symmetric.stream256init(bArr, s);
        this.symmetric.stream256squeezeBlocks(bArr2, 0, i5);
        int iRejectEta = rejectEta(this, 0, this.dilithiumN, bArr2, i5, dilithiumEta);
        while (iRejectEta < 256) {
            Symmetric symmetric2 = this.symmetric;
            symmetric2.stream256squeezeBlocks(bArr2, 0, symmetric2.stream256BlockBytes);
            iRejectEta += rejectEta(this, iRejectEta, this.dilithiumN - iRejectEta, bArr2, this.symmetric.stream256BlockBytes, dilithiumEta);
        }
    }

    public void uniformGamma1(byte[] bArr, short s) {
        int polyUniformGamma1NBlocks = this.engine.getPolyUniformGamma1NBlocks();
        Symmetric symmetric = this.symmetric;
        byte[] bArr2 = new byte[polyUniformGamma1NBlocks * symmetric.stream256BlockBytes];
        symmetric.stream256init(bArr, s);
        this.symmetric.stream256squeezeBlocks(bArr2, 0, this.engine.getPolyUniformGamma1NBlocks() * this.symmetric.stream256BlockBytes);
        unpackZ(bArr2);
    }

    public byte[] w1Pack() {
        byte[] bArr = new byte[this.engine.getDilithiumPolyW1PackedBytes()];
        int i2 = 0;
        if (this.engine.getDilithiumGamma2() == 95232) {
            while (i2 < this.dilithiumN / 4) {
                int i3 = i2 * 3;
                int i4 = i2 * 4;
                int i5 = i4 + 1;
                bArr[i3] = (byte) (((byte) getCoeffIndex(i4)) | (getCoeffIndex(i5) << 6));
                int i6 = i4 + 2;
                bArr[i3 + 1] = (byte) (((byte) (getCoeffIndex(i5) >> 2)) | (getCoeffIndex(i6) << 4));
                bArr[i3 + 2] = (byte) ((getCoeffIndex(i4 + 3) << 2) | ((byte) (getCoeffIndex(i6) >> 4)));
                i2++;
            }
        } else if (this.engine.getDilithiumGamma2() == 261888) {
            while (i2 < this.dilithiumN / 2) {
                int i7 = i2 * 2;
                bArr[i2] = (byte) ((getCoeffIndex(i7 + 1) << 4) | getCoeffIndex(i7));
                i2++;
            }
        }
        return bArr;
    }

    public byte[] zPack() {
        byte[] bArr = new byte[this.engine.getDilithiumPolyZPackedBytes()];
        int[] iArr = new int[4];
        if (this.engine.getDilithiumGamma1() == 131072) {
            for (int i2 = 0; i2 < this.dilithiumN / 4; i2++) {
                int i3 = i2 * 4;
                iArr[0] = this.engine.getDilithiumGamma1() - getCoeffIndex(i3);
                iArr[1] = this.engine.getDilithiumGamma1() - getCoeffIndex(i3 + 1);
                iArr[2] = this.engine.getDilithiumGamma1() - getCoeffIndex(i3 + 2);
                int dilithiumGamma1 = this.engine.getDilithiumGamma1() - getCoeffIndex(i3 + 3);
                iArr[3] = dilithiumGamma1;
                int i4 = i2 * 9;
                int i5 = iArr[0];
                bArr[i4] = (byte) i5;
                bArr[i4 + 1] = (byte) (i5 >> 8);
                int i6 = iArr[1];
                bArr[i4 + 2] = (byte) (((byte) (i5 >> 16)) | (i6 << 2));
                bArr[i4 + 3] = (byte) (i6 >> 6);
                byte b2 = (byte) (i6 >> 14);
                int i7 = iArr[2];
                bArr[i4 + 4] = (byte) (b2 | (i7 << 4));
                bArr[i4 + 5] = (byte) (i7 >> 4);
                bArr[i4 + 6] = (byte) (((byte) (i7 >> 12)) | (dilithiumGamma1 << 6));
                bArr[i4 + 7] = (byte) (dilithiumGamma1 >> 2);
                bArr[i4 + 8] = (byte) (dilithiumGamma1 >> 10);
            }
        } else {
            if (this.engine.getDilithiumGamma1() != 524288) {
                v7.h("Wrong Dilithium Gamma1!");
                return null;
            }
            for (int i8 = 0; i8 < this.dilithiumN / 2; i8++) {
                int i9 = i8 * 2;
                iArr[0] = this.engine.getDilithiumGamma1() - getCoeffIndex(i9);
                int dilithiumGamma2 = this.engine.getDilithiumGamma1() - getCoeffIndex(i9 + 1);
                iArr[1] = dilithiumGamma2;
                int i10 = i8 * 5;
                int i11 = iArr[0];
                bArr[i10] = (byte) i11;
                bArr[i10 + 1] = (byte) (i11 >> 8);
                bArr[i10 + 2] = (byte) (((byte) (i11 >> 16)) | (dilithiumGamma2 << 4));
                bArr[i10 + 3] = (byte) (dilithiumGamma2 >> 4);
                bArr[i10 + 4] = (byte) (dilithiumGamma2 >> 12);
            }
        }
        return bArr;
    }

    public void zUnpack(byte[] bArr) {
        int i2 = 0;
        if (this.engine.getDilithiumGamma1() != 131072) {
            if (this.engine.getDilithiumGamma1() != 524288) {
                v7.h("Wrong Dilithium Gamma1!");
                return;
            }
            while (i2 < this.dilithiumN / 2) {
                int i3 = i2 * 2;
                int i4 = i2 * 5;
                int i5 = i4 + 2;
                setCoeffIndex(i3, ((bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i5] & 255) << 16)) & 1048575);
                int i6 = i3 + 1;
                setCoeffIndex(i6, (((bArr[i4 + 4] & 255) << 12) | ((bArr[i5] & 255) >>> 4) | ((bArr[i4 + 3] & 255) << 4)) & 1048575);
                setCoeffIndex(i3, this.engine.getDilithiumGamma1() - getCoeffIndex(i3));
                setCoeffIndex(i6, this.engine.getDilithiumGamma1() - getCoeffIndex(i6));
                i2++;
            }
            return;
        }
        while (i2 < this.dilithiumN / 4) {
            int i7 = i2 * 4;
            int i8 = i2 * 9;
            int i9 = i8 + 2;
            setCoeffIndex(i7, ((bArr[i8] & 255) | ((bArr[i8 + 1] & 255) << 8) | ((bArr[i9] & 255) << 16)) & 262143);
            int i10 = i7 + 1;
            int i11 = i8 + 4;
            setCoeffIndex(i10, (((bArr[i9] & 255) >>> 2) | ((bArr[i8 + 3] & 255) << 6) | ((bArr[i11] & 255) << 14)) & 262143);
            int i12 = i7 + 2;
            int i13 = i8 + 6;
            setCoeffIndex(i12, (((bArr[i11] & 255) >>> 4) | ((bArr[i8 + 5] & 255) << 4) | ((bArr[i13] & 255) << 12)) & 262143);
            int i14 = i7 + 3;
            setCoeffIndex(i14, (((bArr[i8 + 8] & 255) << 10) | ((bArr[i13] & 255) >>> 6) | ((bArr[i8 + 7] & 255) << 2)) & 262143);
            setCoeffIndex(i7, this.engine.getDilithiumGamma1() - getCoeffIndex(i7));
            setCoeffIndex(i10, this.engine.getDilithiumGamma1() - getCoeffIndex(i10));
            setCoeffIndex(i12, this.engine.getDilithiumGamma1() - getCoeffIndex(i12));
            setCoeffIndex(i14, this.engine.getDilithiumGamma1() - getCoeffIndex(i14));
            i2++;
        }
    }
}
