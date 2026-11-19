package org.bouncycastle.crypto.engines;

import defpackage.a61;
import defpackage.ct0;
import defpackage.md;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class ChaChaEngine extends Salsa20Engine {
    public ChaChaEngine() {
    }

    public static void chachaCore(int i2, int[] iArr, int[] iArr2) {
        int i3 = 16;
        if (iArr.length != 16) {
            ct0.c();
            return;
        }
        if (iArr2.length != 16) {
            ct0.c();
            return;
        }
        if (i2 % 2 != 0) {
            md.n("Number of rounds must be even");
            return;
        }
        int i4 = iArr[0];
        int i5 = iArr[1];
        int i6 = iArr[2];
        char c2 = 3;
        int i7 = iArr[3];
        char c3 = 4;
        int i8 = iArr[4];
        char c4 = 5;
        int i9 = iArr[5];
        char c5 = 6;
        int i10 = iArr[6];
        int i11 = 7;
        int i12 = iArr[7];
        int i13 = 8;
        int i14 = iArr[8];
        int i15 = iArr[9];
        int i16 = iArr[10];
        int i17 = iArr[11];
        int i18 = 12;
        int i19 = iArr[12];
        int i20 = iArr[13];
        int i21 = iArr[14];
        int iRotateLeft = iArr[15];
        int iRotateLeft2 = i21;
        int iRotateLeft3 = i20;
        int iRotateLeft4 = i19;
        int i22 = i17;
        int i23 = i16;
        int i24 = i15;
        int i25 = i14;
        int iRotateLeft5 = i12;
        int iRotateLeft6 = i10;
        int iRotateLeft7 = i9;
        int iRotateLeft8 = i8;
        int i26 = i7;
        int i27 = i6;
        int i28 = i5;
        int i29 = i4;
        int i30 = i2;
        while (i30 > 0) {
            int i31 = i29 + iRotateLeft8;
            char c6 = c2;
            int iRotateLeft9 = Integers.rotateLeft(iRotateLeft4 ^ i31, i3);
            int i32 = i25 + iRotateLeft9;
            int iRotateLeft10 = Integers.rotateLeft(iRotateLeft8 ^ i32, i18);
            int i33 = i31 + iRotateLeft10;
            int iRotateLeft11 = Integers.rotateLeft(iRotateLeft9 ^ i33, i13);
            int i34 = i32 + iRotateLeft11;
            int iRotateLeft12 = Integers.rotateLeft(iRotateLeft10 ^ i34, i11);
            int i35 = i28 + iRotateLeft7;
            char c7 = c3;
            int iRotateLeft13 = Integers.rotateLeft(iRotateLeft3 ^ i35, i3);
            int i36 = i24 + iRotateLeft13;
            char c8 = c4;
            int iRotateLeft14 = Integers.rotateLeft(iRotateLeft7 ^ i36, i18);
            int i37 = i35 + iRotateLeft14;
            int iRotateLeft15 = Integers.rotateLeft(iRotateLeft13 ^ i37, i13);
            int i38 = i36 + iRotateLeft15;
            int iRotateLeft16 = Integers.rotateLeft(iRotateLeft14 ^ i38, i11);
            int i39 = i27 + iRotateLeft6;
            char c9 = c5;
            int iRotateLeft17 = Integers.rotateLeft(iRotateLeft2 ^ i39, i3);
            int i40 = i23 + iRotateLeft17;
            int iRotateLeft18 = Integers.rotateLeft(iRotateLeft6 ^ i40, i18);
            int i41 = i39 + iRotateLeft18;
            int iRotateLeft19 = Integers.rotateLeft(iRotateLeft17 ^ i41, i13);
            int i42 = i40 + iRotateLeft19;
            int iRotateLeft20 = Integers.rotateLeft(iRotateLeft18 ^ i42, i11);
            int i43 = i26 + iRotateLeft5;
            int iRotateLeft21 = Integers.rotateLeft(iRotateLeft ^ i43, 16);
            int i44 = i22 + iRotateLeft21;
            int iRotateLeft22 = Integers.rotateLeft(iRotateLeft5 ^ i44, i18);
            int i45 = i43 + iRotateLeft22;
            int iRotateLeft23 = Integers.rotateLeft(iRotateLeft21 ^ i45, 8);
            int i46 = i44 + iRotateLeft23;
            int iRotateLeft24 = Integers.rotateLeft(iRotateLeft22 ^ i46, 7);
            int i47 = i33 + iRotateLeft16;
            int iRotateLeft25 = Integers.rotateLeft(iRotateLeft23 ^ i47, 16);
            int i48 = i42 + iRotateLeft25;
            int iRotateLeft26 = Integers.rotateLeft(iRotateLeft16 ^ i48, 12);
            i29 = i47 + iRotateLeft26;
            iRotateLeft = Integers.rotateLeft(iRotateLeft25 ^ i29, 8);
            i23 = i48 + iRotateLeft;
            iRotateLeft7 = Integers.rotateLeft(iRotateLeft26 ^ i23, 7);
            int i49 = i37 + iRotateLeft20;
            int iRotateLeft27 = Integers.rotateLeft(iRotateLeft11 ^ i49, 16);
            int i50 = i46 + iRotateLeft27;
            int iRotateLeft28 = Integers.rotateLeft(iRotateLeft20 ^ i50, 12);
            i28 = i49 + iRotateLeft28;
            iRotateLeft4 = Integers.rotateLeft(iRotateLeft27 ^ i28, 8);
            i22 = i50 + iRotateLeft4;
            iRotateLeft6 = Integers.rotateLeft(iRotateLeft28 ^ i22, 7);
            int i51 = i41 + iRotateLeft24;
            int iRotateLeft29 = Integers.rotateLeft(iRotateLeft15 ^ i51, 16);
            int i52 = i34 + iRotateLeft29;
            int iRotateLeft30 = Integers.rotateLeft(iRotateLeft24 ^ i52, 12);
            i27 = i51 + iRotateLeft30;
            iRotateLeft3 = Integers.rotateLeft(iRotateLeft29 ^ i27, 8);
            i25 = i52 + iRotateLeft3;
            iRotateLeft5 = Integers.rotateLeft(iRotateLeft30 ^ i25, 7);
            int i53 = i45 + iRotateLeft12;
            int iRotateLeft31 = Integers.rotateLeft(iRotateLeft19 ^ i53, 16);
            int i54 = i38 + iRotateLeft31;
            int iRotateLeft32 = Integers.rotateLeft(iRotateLeft12 ^ i54, 12);
            i26 = i53 + iRotateLeft32;
            iRotateLeft2 = Integers.rotateLeft(iRotateLeft31 ^ i26, 8);
            i24 = i54 + iRotateLeft2;
            iRotateLeft8 = Integers.rotateLeft(iRotateLeft32 ^ i24, 7);
            i30 -= 2;
            i3 = 16;
            c2 = c6;
            c3 = c7;
            c4 = c8;
            c5 = c9;
            i11 = 7;
            i13 = 8;
            i18 = 12;
        }
        char c10 = c2;
        char c11 = c3;
        char c12 = c4;
        char c13 = c5;
        iArr2[0] = i29 + iArr[0];
        iArr2[1] = i28 + iArr[1];
        iArr2[2] = i27 + iArr[2];
        iArr2[c10] = i26 + iArr[c10];
        iArr2[c11] = iRotateLeft8 + iArr[c11];
        iArr2[c12] = iRotateLeft7 + iArr[c12];
        iArr2[c13] = iRotateLeft6 + iArr[c13];
        iArr2[7] = iRotateLeft5 + iArr[7];
        iArr2[8] = i25 + iArr[8];
        iArr2[9] = i24 + iArr[9];
        iArr2[10] = i23 + iArr[10];
        iArr2[11] = i22 + iArr[11];
        iArr2[12] = iRotateLeft4 + iArr[12];
        iArr2[13] = iRotateLeft3 + iArr[13];
        iArr2[14] = iRotateLeft2 + iArr[14];
        iArr2[15] = iRotateLeft + iArr[15];
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void advanceCounter(long j2) {
        int i2 = (int) (j2 >>> 32);
        int i3 = (int) j2;
        if (i2 > 0) {
            int[] iArr = this.engineState;
            iArr[13] = iArr[13] + i2;
        }
        int[] iArr2 = this.engineState;
        int i4 = iArr2[12];
        int i5 = i3 + i4;
        iArr2[12] = i5;
        if (i4 == 0 || i5 >= i4) {
            return;
        }
        iArr2[13] = iArr2[13] + 1;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void generateKeyStream(byte[] bArr) {
        chachaCore(this.rounds, this.engineState, this.x);
        Pack.intToLittleEndian(this.x, bArr, 0);
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine, org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "ChaCha" + this.rounds;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public long getCounter() {
        int[] iArr = this.engineState;
        return (((long) iArr[13]) << 32) | (((long) iArr[12]) & BodyPartID.bodyIdMax);
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void resetCounter() {
        int[] iArr = this.engineState;
        iArr[13] = 0;
        iArr[12] = 0;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void retreatCounter(long j2) {
        int i2 = (int) (j2 >>> 32);
        int i3 = (int) j2;
        if (i2 != 0) {
            int[] iArr = this.engineState;
            int i4 = iArr[13];
            if ((((long) i4) & BodyPartID.bodyIdMax) < (((long) i2) & BodyPartID.bodyIdMax)) {
                md.k("attempt to reduce counter past zero.");
                return;
            }
            iArr[13] = i4 - i2;
        }
        int[] iArr2 = this.engineState;
        int i5 = iArr2[12];
        if ((((long) i5) & BodyPartID.bodyIdMax) >= (BodyPartID.bodyIdMax & ((long) i3))) {
            iArr2[12] = i5 - i3;
            return;
        }
        int i6 = iArr2[13];
        if (i6 == 0) {
            md.k("attempt to reduce counter past zero.");
        } else {
            iArr2[13] = i6 - 1;
            iArr2[12] = i5 - i3;
        }
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void setKey(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 16 && bArr.length != 32) {
                a61.l(getAlgorithmName(), " requires 128 bit or 256 bit key");
                return;
            } else {
                packTauOrSigma(bArr.length, this.engineState, 0);
                Pack.littleEndianToInt(bArr, 0, this.engineState, 4, 4);
                Pack.littleEndianToInt(bArr, bArr.length - 16, this.engineState, 8, 4);
            }
        }
        Pack.littleEndianToInt(bArr2, 0, this.engineState, 14, 2);
    }

    public ChaChaEngine(int i2) {
        super(i2);
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void advanceCounter() {
        int[] iArr = this.engineState;
        int i2 = iArr[12] + 1;
        iArr[12] = i2;
        if (i2 == 0) {
            iArr[13] = iArr[13] + 1;
        }
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void retreatCounter() {
        int[] iArr = this.engineState;
        int i2 = iArr[12];
        if (i2 == 0 && iArr[13] == 0) {
            md.k("attempt to reduce counter past zero.");
            return;
        }
        int i3 = i2 - 1;
        iArr[12] = i3;
        if (i3 == -1) {
            iArr[13] = iArr[13] - 1;
        }
    }
}
