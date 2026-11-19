package org.bouncycastle.pqc.math.ntru;

import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUParameterSet;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Polynomial {
    public short[] coeffs;
    protected NTRUParameterSet params;

    public Polynomial(NTRUParameterSet nTRUParameterSet) {
        this.coeffs = new short[nTRUParameterSet.n()];
        this.params = nTRUParameterSet;
    }

    public static short bothNegativeMask(short s, short s2) {
        return (short) ((s & s2) >>> 15);
    }

    public static short mod3(short s) {
        return (short) ((s & HPKE.aead_EXPORT_ONLY) % 3);
    }

    public static int modQ(int i2, int i3) {
        return i2 % i3;
    }

    private void r2InvToRqInv(Polynomial polynomial, Polynomial polynomial2, Polynomial polynomial3, Polynomial polynomial4, Polynomial polynomial5) {
        int length = this.coeffs.length;
        for (int i2 = 0; i2 < length; i2++) {
            polynomial3.coeffs[i2] = (short) (-polynomial2.coeffs[i2]);
        }
        for (int i3 = 0; i3 < length; i3++) {
            this.coeffs[i3] = polynomial.coeffs[i3];
        }
        polynomial4.rqMul(this, polynomial3);
        short[] sArr = polynomial4.coeffs;
        sArr[0] = (short) (sArr[0] + 2);
        polynomial5.rqMul(polynomial4, this);
        polynomial4.rqMul(polynomial5, polynomial3);
        short[] sArr2 = polynomial4.coeffs;
        sArr2[0] = (short) (sArr2[0] + 2);
        rqMul(polynomial4, polynomial5);
        polynomial4.rqMul(this, polynomial3);
        short[] sArr3 = polynomial4.coeffs;
        sArr3[0] = (short) (sArr3[0] + 2);
        polynomial5.rqMul(polynomial4, this);
        polynomial4.rqMul(polynomial5, polynomial3);
        short[] sArr4 = polynomial4.coeffs;
        sArr4[0] = (short) (sArr4[0] + 2);
        rqMul(polynomial4, polynomial5);
    }

    public abstract void lift(Polynomial polynomial);

    public void mod3PhiN() {
        int iN = this.params.n();
        for (int i2 = 0; i2 < iN; i2++) {
            short[] sArr = this.coeffs;
            sArr[i2] = mod3((short) ((sArr[iN - 1] * 2) + sArr[i2]));
        }
    }

    public void modQPhiN() {
        int iN = this.params.n();
        for (int i2 = 0; i2 < iN; i2++) {
            short[] sArr = this.coeffs;
            sArr[i2] = (short) (sArr[i2] - sArr[iN - 1]);
        }
    }

    public void r2Inv(Polynomial polynomial, Polynomial polynomial2, Polynomial polynomial3, Polynomial polynomial4, Polynomial polynomial5) {
        int i2;
        short[] sArr;
        int length = this.coeffs.length;
        short s = 0;
        polynomial5.coeffs[0] = 1;
        for (int i3 = 0; i3 < length; i3++) {
            polynomial2.coeffs[i3] = 1;
        }
        int i4 = 0;
        while (true) {
            i2 = length - 1;
            if (i4 >= i2) {
                break;
            }
            short[] sArr2 = polynomial.coeffs;
            polynomial3.coeffs[(length - 2) - i4] = (short) ((sArr2[i2] ^ sArr2[i4]) & 1);
            i4++;
        }
        polynomial3.coeffs[i2] = 0;
        int i5 = 0;
        short s2 = 1;
        for (short s3 = 1; i5 < (i2 * 2) - s3; s3 = 1) {
            for (int i6 = i2; i6 > 0; i6--) {
                short[] sArr3 = polynomial4.coeffs;
                sArr3[i6] = sArr3[i6 - 1];
            }
            polynomial4.coeffs[s] = s;
            short s4 = polynomial3.coeffs[s];
            short s5 = (short) (polynomial2.coeffs[s] & s4);
            int i7 = -s2;
            short sBothNegativeMask = bothNegativeMask((short) i7, (short) (-s4));
            s2 = (short) (((short) (s2 ^ ((i7 ^ s2) & sBothNegativeMask))) + s3);
            int i8 = s;
            short s6 = s;
            while (i8 < length) {
                short[] sArr4 = polynomial2.coeffs;
                short s7 = sArr4[i8];
                short s8 = s6;
                short[] sArr5 = polynomial3.coeffs;
                short s9 = (short) (sBothNegativeMask & (s7 ^ sArr5[i8]));
                sArr4[i8] = (short) (s7 ^ s9);
                sArr5[i8] = (short) (s9 ^ sArr5[i8]);
                short[] sArr6 = polynomial4.coeffs;
                short s10 = sArr6[i8];
                short[] sArr7 = polynomial5.coeffs;
                short s11 = (short) ((sArr7[i8] ^ s10) & sBothNegativeMask);
                sArr6[i8] = (short) (s10 ^ s11);
                sArr7[i8] = (short) (sArr7[i8] ^ s11);
                i8++;
                s6 = s8 == true ? 1 : 0;
            }
            short s12 = s6;
            for (int i9 = s6; i9 < length; i9++) {
                short[] sArr8 = polynomial3.coeffs;
                sArr8[i9] = (short) (sArr8[i9] ^ (polynomial2.coeffs[i9] & s5));
            }
            for (int i10 = s12; i10 < length; i10++) {
                short[] sArr9 = polynomial5.coeffs;
                sArr9[i10] = (short) (sArr9[i10] ^ (polynomial4.coeffs[i10] & s5));
            }
            int i11 = s12;
            while (true) {
                sArr = polynomial3.coeffs;
                if (i11 < i2) {
                    int i12 = i11 + 1;
                    sArr[i11] = sArr[i12];
                    i11 = i12;
                }
            }
            sArr[i2] = s12;
            i5++;
            s = s12;
        }
        short s13 = s;
        int i13 = s13;
        while (true) {
            short[] sArr10 = this.coeffs;
            if (i13 >= i2) {
                sArr10[i2] = s13;
                return;
            } else {
                sArr10[i13] = polynomial4.coeffs[(length - 2) - i13];
                i13++;
            }
        }
    }

    public void rqInv(Polynomial polynomial) {
        rqInv(polynomial, this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial());
    }

    public void rqMul(Polynomial polynomial, Polynomial polynomial2) {
        int i2;
        int length = this.coeffs.length;
        int i3 = 0;
        while (i3 < length) {
            this.coeffs[i3] = 0;
            for (int i4 = 1; i4 < length - i3; i4++) {
                short[] sArr = this.coeffs;
                sArr[i3] = (short) ((polynomial.coeffs[i3 + i4] * polynomial2.coeffs[length - i4]) + sArr[i3]);
            }
            int i5 = 0;
            while (true) {
                i2 = i3 + 1;
                if (i5 < i2) {
                    short[] sArr2 = this.coeffs;
                    sArr2[i3] = (short) ((polynomial.coeffs[i3 - i5] * polynomial2.coeffs[i5]) + sArr2[i3]);
                    i5++;
                }
            }
            i3 = i2;
        }
    }

    public void rqSumZeroFromBytes(byte[] bArr) {
        int length = this.coeffs.length;
        sqFromBytes(bArr);
        int i2 = length - 1;
        this.coeffs[i2] = 0;
        for (int i3 = 0; i3 < this.params.packDegree(); i3++) {
            short[] sArr = this.coeffs;
            sArr[i2] = (short) (sArr[i2] - sArr[i3]);
        }
    }

    public byte[] rqSumZeroToBytes(int i2) {
        return sqToBytes(i2);
    }

    public void rqToS3(Polynomial polynomial) {
        int length = this.coeffs.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.coeffs[i2] = (short) modQ(polynomial.coeffs[i2] & HPKE.aead_EXPORT_ONLY, this.params.q());
            short sLogQ = (short) (this.coeffs[i2] >>> (this.params.logQ() - 1));
            short[] sArr = this.coeffs;
            sArr[i2] = (short) (sArr[i2] + (sLogQ << (1 - (this.params.logQ() & 1))));
        }
        mod3PhiN();
    }

    public void s3FromBytes(byte[] bArr) {
        int length = this.coeffs.length;
        for (int i2 = 0; i2 < this.params.packDegree() / 5; i2++) {
            byte b2 = bArr[i2];
            short[] sArr = this.coeffs;
            int i3 = i2 * 5;
            sArr[i3] = b2;
            int i4 = b2 & 255;
            sArr[i3 + 1] = (short) ((i4 * 171) >>> 9);
            sArr[i3 + 2] = (short) ((i4 * 57) >>> 9);
            sArr[i3 + 3] = (short) ((i4 * 19) >>> 9);
            sArr[i3 + 4] = (short) ((i4 * 203) >>> 14);
        }
        if (this.params.packDegree() > (this.params.packDegree() / 5) * 5) {
            int iPackDegree = this.params.packDegree() / 5;
            byte b3 = bArr[iPackDegree];
            int i5 = 0;
            while (true) {
                int i6 = (iPackDegree * 5) + i5;
                if (i6 >= this.params.packDegree()) {
                    break;
                }
                this.coeffs[i6] = b3;
                b3 = (byte) (((b3 & 255) * 171) >> 9);
                i5++;
            }
        }
        this.coeffs[length - 1] = 0;
        mod3PhiN();
    }

    public void s3Inv(Polynomial polynomial, Polynomial polynomial2, Polynomial polynomial3, Polynomial polynomial4, Polynomial polynomial5) {
        int i2;
        short[] sArr;
        int length = this.coeffs.length;
        short s = 0;
        polynomial5.coeffs[0] = 1;
        for (int i3 = 0; i3 < length; i3++) {
            polynomial2.coeffs[i3] = 1;
        }
        int i4 = 0;
        while (true) {
            i2 = length - 1;
            if (i4 >= i2) {
                break;
            }
            short[] sArr2 = polynomial.coeffs;
            polynomial3.coeffs[(length - 2) - i4] = mod3((short) (((sArr2[i2] & 3) * 2) + (sArr2[i4] & 3)));
            i4++;
        }
        polynomial3.coeffs[i2] = 0;
        int i5 = 0;
        short s2 = 1;
        for (short s3 = 1; i5 < (i2 * 2) - s3; s3 = 1) {
            for (int i6 = i2; i6 > 0; i6--) {
                short[] sArr3 = polynomial4.coeffs;
                sArr3[i6] = sArr3[i6 - 1];
            }
            polynomial4.coeffs[s] = s;
            short sMod3 = mod3((byte) (polynomial3.coeffs[s] * 2 * polynomial2.coeffs[s]));
            int i7 = -s2;
            short sBothNegativeMask = bothNegativeMask((short) i7, (short) (-polynomial3.coeffs[s]));
            s2 = (short) (((short) (s2 ^ ((i7 ^ s2) & sBothNegativeMask))) + s3);
            int i8 = s;
            short s4 = s;
            while (i8 < length) {
                short[] sArr4 = polynomial2.coeffs;
                short s5 = sArr4[i8];
                short s6 = s4;
                short[] sArr5 = polynomial3.coeffs;
                short s7 = (short) (sBothNegativeMask & (s5 ^ sArr5[i8]));
                sArr4[i8] = (short) (s5 ^ s7);
                sArr5[i8] = (short) (s7 ^ sArr5[i8]);
                short[] sArr6 = polynomial4.coeffs;
                short s8 = sArr6[i8];
                short[] sArr7 = polynomial5.coeffs;
                short s9 = (short) ((sArr7[i8] ^ s8) & sBothNegativeMask);
                sArr6[i8] = (short) (s8 ^ s9);
                sArr7[i8] = (short) (sArr7[i8] ^ s9);
                i8++;
                s4 = s6 == true ? 1 : 0;
            }
            short s10 = s4;
            for (int i9 = s4; i9 < length; i9++) {
                short[] sArr8 = polynomial3.coeffs;
                sArr8[i9] = mod3((byte) ((polynomial2.coeffs[i9] * sMod3) + sArr8[i9]));
            }
            for (int i10 = s10; i10 < length; i10++) {
                short[] sArr9 = polynomial5.coeffs;
                sArr9[i10] = mod3((byte) ((polynomial4.coeffs[i10] * sMod3) + sArr9[i10]));
            }
            int i11 = s10;
            while (true) {
                sArr = polynomial3.coeffs;
                if (i11 < i2) {
                    int i12 = i11 + 1;
                    sArr[i11] = sArr[i12];
                    i11 = i12;
                }
            }
            sArr[i2] = s10;
            i5++;
            s = s10;
        }
        short s11 = s;
        short s12 = polynomial2.coeffs[s11];
        int i13 = s11;
        while (true) {
            short[] sArr10 = this.coeffs;
            if (i13 >= i2) {
                sArr10[i2] = s11;
                return;
            } else {
                sArr10[i13] = mod3((byte) (polynomial4.coeffs[(length - 2) - i13] * s12));
                i13++;
            }
        }
    }

    public void s3Mul(Polynomial polynomial, Polynomial polynomial2) {
        rqMul(polynomial, polynomial2);
        mod3PhiN();
    }

    public byte[] s3ToBytes(int i2) {
        byte[] bArr = new byte[i2];
        byte b2 = 0;
        for (int i3 = 0; i3 < this.params.packDegree() / 5; i3++) {
            short[] sArr = this.coeffs;
            int i4 = i3 * 5;
            bArr[i3] = (byte) (((((byte) (((((byte) (((((byte) (((((byte) (sArr[i4 + 4] & 255)) * 3) + sArr[i4 + 3]) & 255)) * 3) + sArr[i4 + 2]) & 255)) * 3) + sArr[i4 + 1]) & 255)) * 3) + sArr[i4]) & 255);
        }
        if (this.params.packDegree() > (this.params.packDegree() / 5) * 5) {
            int iPackDegree = this.params.packDegree() / 5;
            int i5 = iPackDegree * 5;
            for (int iPackDegree2 = (this.params.packDegree() - i5) - 1; iPackDegree2 >= 0; iPackDegree2--) {
                b2 = (byte) (((b2 * 3) + this.coeffs[i5 + iPackDegree2]) & 255);
            }
            bArr[iPackDegree] = b2;
        }
        return bArr;
    }

    public abstract void sqFromBytes(byte[] bArr);

    public void sqMul(Polynomial polynomial, Polynomial polynomial2) {
        rqMul(polynomial, polynomial2);
        modQPhiN();
    }

    public abstract byte[] sqToBytes(int i2);

    public void trinaryZqToZ3() {
        int length = this.coeffs.length;
        for (int i2 = 0; i2 < length; i2++) {
            short[] sArr = this.coeffs;
            sArr[i2] = (short) modQ(sArr[i2] & HPKE.aead_EXPORT_ONLY, this.params.q());
            short[] sArr2 = this.coeffs;
            short s = sArr2[i2];
            sArr2[i2] = (short) ((s ^ (s >>> (this.params.logQ() - 1))) & 3);
        }
    }

    public void z3ToZq() {
        int length = this.coeffs.length;
        for (int i2 = 0; i2 < length; i2++) {
            short[] sArr = this.coeffs;
            short s = sArr[i2];
            sArr[i2] = (short) (s | ((-(s >>> 1)) & (this.params.q() - 1)));
        }
    }

    public static byte mod3(byte b2) {
        return (byte) ((b2 & 255) % 3);
    }

    public void rqInv(Polynomial polynomial, Polynomial polynomial2, Polynomial polynomial3, Polynomial polynomial4, Polynomial polynomial5) {
        polynomial2.r2Inv(polynomial);
        r2InvToRqInv(polynomial2, polynomial, polynomial3, polynomial4, polynomial5);
    }

    public void r2Inv(Polynomial polynomial) {
        r2Inv(polynomial, this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial());
    }

    public void s3Inv(Polynomial polynomial) {
        s3Inv(polynomial, this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial(), this.params.createPolynomial());
    }
}
