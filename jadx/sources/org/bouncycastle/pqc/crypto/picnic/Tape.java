package org.bouncycastle.pqc.crypto.picnic;

import java.lang.reflect.Array;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
class Tape {
    private PicnicEngine engine;
    int nTapes;
    int pos = 0;
    byte[][] tapes;

    public Tape(PicnicEngine picnicEngine) {
        this.engine = picnicEngine;
        this.tapes = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, picnicEngine.numMPCParties, picnicEngine.andSizeBytes * 2);
        this.nTapes = picnicEngine.numMPCParties;
    }

    private void tapesToParityBits(int[] iArr, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            Utils.setBitInWordArray(iArr, i3, Utils.parity16(tapesToWord()));
        }
    }

    public void computeAuxTape(byte[] bArr) {
        int[] iArr = new int[16];
        int[] iArr2 = new int[16];
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[16];
        int[] iArr5 = new int[16];
        PicnicEngine picnicEngine = this.engine;
        iArr5[picnicEngine.stateSizeWords - 1] = 0;
        tapesToParityBits(iArr5, picnicEngine.stateSizeBits);
        PicnicEngine picnicEngine2 = this.engine;
        KMatricesWithPointer kMatricesWithPointerKMatrixInv = picnicEngine2.lowmcConstants.KMatrixInv(picnicEngine2);
        this.engine.matrix_mul(iArr4, iArr5, kMatricesWithPointerKMatrixInv.getData(), kMatricesWithPointerKMatrixInv.getMatrixPointer());
        if (bArr != null) {
            Pack.intToLittleEndian(iArr4, 0, this.engine.stateSizeWords, bArr, 0);
        }
        for (int i2 = this.engine.numRounds; i2 > 0; i2--) {
            PicnicEngine picnicEngine3 = this.engine;
            KMatricesWithPointer kMatricesWithPointerKMatrix = picnicEngine3.lowmcConstants.KMatrix(picnicEngine3, i2);
            this.engine.matrix_mul(iArr, iArr4, kMatricesWithPointerKMatrix.getData(), kMatricesWithPointerKMatrix.getMatrixPointer());
            this.engine.xor_array(iArr2, iArr2, iArr, 0);
            PicnicEngine picnicEngine4 = this.engine;
            int i3 = i2 - 1;
            KMatricesWithPointer kMatricesWithPointerLMatrixInv = picnicEngine4.lowmcConstants.LMatrixInv(picnicEngine4, i3);
            this.engine.matrix_mul(iArr3, iArr2, kMatricesWithPointerLMatrixInv.getData(), kMatricesWithPointerLMatrixInv.getMatrixPointer());
            if (i2 == 1) {
                System.arraycopy(iArr5, 0, iArr2, 0, 16);
            } else {
                int i4 = this.engine.stateSizeBits;
                this.pos = i4 * 2 * i3;
                tapesToParityBits(iArr2, i4);
            }
            PicnicEngine picnicEngine5 = this.engine;
            int i5 = picnicEngine5.stateSizeBits;
            this.pos = (i5 * 2 * i3) + i5;
            picnicEngine5.aux_mpc_sbox(iArr2, iArr3, this);
        }
        this.pos = 0;
    }

    public void setAuxBits(byte[] bArr) {
        PicnicEngine picnicEngine = this.engine;
        int i2 = picnicEngine.numMPCParties - 1;
        int i3 = picnicEngine.stateSizeBits;
        int i4 = 0;
        for (int i5 = 0; i5 < this.engine.numRounds; i5++) {
            int i6 = 0;
            while (i6 < i3) {
                Utils.setBit(this.tapes[i2], (i3 * 2 * i5) + i3 + i6, Utils.getBit(bArr, i4));
                i6++;
                i4++;
            }
        }
    }

    public int tapesToWord() {
        int i2 = this.pos;
        int i3 = i2 >>> 3;
        int i4 = (i2 & 7) ^ 7;
        int i5 = 1 << i4;
        byte[][] bArr = this.tapes;
        int i6 = ((bArr[15][i3] & i5) << 8) | (bArr[7][i3] & i5) | ((bArr[0][i3] & i5) << 7) | ((bArr[1][i3] & i5) << 6) | ((bArr[2][i3] & i5) << 5) | ((bArr[3][i3] & i5) << 4) | ((bArr[4][i3] & i5) << 3) | ((bArr[5][i3] & i5) << 2) | ((bArr[6][i3] & i5) << 1) | ((bArr[8][i3] & i5) << 15) | ((bArr[9][i3] & i5) << 14) | ((bArr[10][i3] & i5) << 13) | ((bArr[11][i3] & i5) << 12) | ((bArr[12][i3] & i5) << 11) | ((bArr[13][i3] & i5) << 10) | ((bArr[14][i3] & i5) << 9);
        this.pos = i2 + 1;
        return i6 >>> i4;
    }
}
