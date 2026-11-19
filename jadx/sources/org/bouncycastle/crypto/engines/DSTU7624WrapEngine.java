package org.bouncycastle.crypto.engines;

import defpackage.az;
import defpackage.b21;
import defpackage.md;
import java.util.ArrayList;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class DSTU7624WrapEngine implements Wrapper {
    private static final int BYTES_IN_INTEGER = 4;
    private byte[] B;
    private ArrayList<byte[]> Btemp;
    private byte[] checkSumArray;
    private DSTU7624Engine engine;
    private boolean forWrapping;
    private byte[] intArray;
    private byte[] zeroArray;

    public DSTU7624WrapEngine(int i2) {
        DSTU7624Engine dSTU7624Engine = new DSTU7624Engine(i2);
        this.engine = dSTU7624Engine;
        this.B = new byte[dSTU7624Engine.getBlockSize() / 2];
        this.checkSumArray = new byte[this.engine.getBlockSize()];
        this.zeroArray = new byte[this.engine.getBlockSize()];
        this.Btemp = new ArrayList<>();
        this.intArray = new byte[4];
    }

    private void intToBytes(int i2, byte[] bArr, int i3) {
        bArr[i3 + 3] = (byte) (i2 >> 24);
        bArr[i3 + 2] = (byte) (i2 >> 16);
        bArr[i3 + 1] = (byte) (i2 >> 8);
        bArr[i3] = (byte) i2;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return "DSTU7624WrapEngine";
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        this.forWrapping = z;
        if (cipherParameters instanceof KeyParameter) {
            this.engine.init(z, cipherParameters);
        } else {
            md.n("invalid parameters passed to DSTU7624WrapEngine");
        }
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i2, int i3) throws InvalidCipherTextException {
        DSTU7624Engine dSTU7624Engine;
        if (this.forWrapping) {
            md.k("not set for unwrapping");
            return null;
        }
        int blockSize = i3 % this.engine.getBlockSize();
        DSTU7624Engine dSTU7624Engine2 = this.engine;
        if (blockSize != 0) {
            throw new DataLengthException("unwrap data must be a multiple of " + dSTU7624Engine2.getBlockSize() + " bytes");
        }
        int blockSize2 = (i3 * 2) / dSTU7624Engine2.getBlockSize();
        int i4 = blockSize2 - 1;
        int i5 = i4 * 6;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        byte[] bArr3 = new byte[this.engine.getBlockSize() / 2];
        System.arraycopy(bArr2, 0, bArr3, 0, this.engine.getBlockSize() / 2);
        this.Btemp.clear();
        int blockSize3 = i3 - (this.engine.getBlockSize() / 2);
        int blockSize4 = this.engine.getBlockSize() / 2;
        while (blockSize3 != 0) {
            byte[] bArr4 = new byte[this.engine.getBlockSize() / 2];
            System.arraycopy(bArr2, blockSize4, bArr4, 0, this.engine.getBlockSize() / 2);
            this.Btemp.add(bArr4);
            blockSize3 -= this.engine.getBlockSize() / 2;
            blockSize4 += this.engine.getBlockSize() / 2;
        }
        for (int i6 = 0; i6 < i5; i6++) {
            System.arraycopy(this.Btemp.get(blockSize2 - 2), 0, bArr2, 0, this.engine.getBlockSize() / 2);
            System.arraycopy(bArr3, 0, bArr2, this.engine.getBlockSize() / 2, this.engine.getBlockSize() / 2);
            intToBytes(i5 - i6, this.intArray, 0);
            int i7 = 0;
            while (true) {
                dSTU7624Engine = this.engine;
                if (i7 >= 4) {
                    break;
                }
                int blockSize5 = (dSTU7624Engine.getBlockSize() / 2) + i7;
                bArr2[blockSize5] = (byte) (bArr2[blockSize5] ^ this.intArray[i7]);
                i7++;
            }
            dSTU7624Engine.processBlock(bArr2, 0, bArr2, 0);
            System.arraycopy(bArr2, 0, bArr3, 0, this.engine.getBlockSize() / 2);
            for (int i8 = 2; i8 < blockSize2; i8++) {
                int i9 = blockSize2 - i8;
                System.arraycopy(this.Btemp.get(i9 - 1), 0, this.Btemp.get(i9), 0, this.engine.getBlockSize() / 2);
            }
            System.arraycopy(bArr2, this.engine.getBlockSize() / 2, this.Btemp.get(0), 0, this.engine.getBlockSize() / 2);
        }
        System.arraycopy(bArr3, 0, bArr2, 0, this.engine.getBlockSize() / 2);
        int blockSize6 = this.engine.getBlockSize() / 2;
        for (int i10 = 0; i10 < i4; i10++) {
            System.arraycopy(this.Btemp.get(i10), 0, bArr2, blockSize6, this.engine.getBlockSize() / 2);
            blockSize6 += this.engine.getBlockSize() / 2;
        }
        System.arraycopy(bArr2, i3 - this.engine.getBlockSize(), this.checkSumArray, 0, this.engine.getBlockSize());
        byte[] bArr5 = new byte[i3 - this.engine.getBlockSize()];
        if (Arrays.areEqual(this.checkSumArray, this.zeroArray)) {
            System.arraycopy(bArr2, 0, bArr5, 0, i3 - this.engine.getBlockSize());
            return bArr5;
        }
        az.x("checksum failed");
        return null;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i2, int i3) {
        byte[] bArr2;
        DSTU7624Engine dSTU7624Engine;
        ArrayList<byte[]> arrayList;
        if (!this.forWrapping) {
            md.k("not set for wrapping");
            return null;
        }
        if (i3 % this.engine.getBlockSize() != 0) {
            throw new DataLengthException("wrap data must be a multiple of " + this.engine.getBlockSize() + " bytes");
        }
        if (i2 + i3 > bArr.length) {
            b21.q("input buffer too short");
            return null;
        }
        int blockSize = ((i3 / this.engine.getBlockSize()) + 1) * 2;
        int i4 = blockSize - 1;
        int i5 = i4 * 6;
        int blockSize2 = this.engine.getBlockSize() + i3;
        byte[] bArr3 = new byte[blockSize2];
        System.arraycopy(bArr, i2, bArr3, 0, i3);
        System.arraycopy(bArr3, 0, this.B, 0, this.engine.getBlockSize() / 2);
        this.Btemp.clear();
        int blockSize3 = blockSize2 - (this.engine.getBlockSize() / 2);
        int blockSize4 = this.engine.getBlockSize() / 2;
        while (blockSize3 != 0) {
            byte[] bArr4 = new byte[this.engine.getBlockSize() / 2];
            System.arraycopy(bArr3, blockSize4, bArr4, 0, this.engine.getBlockSize() / 2);
            this.Btemp.add(bArr4);
            blockSize3 -= this.engine.getBlockSize() / 2;
            blockSize4 += this.engine.getBlockSize() / 2;
        }
        int i6 = 0;
        while (true) {
            bArr2 = this.B;
            if (i6 >= i5) {
                break;
            }
            System.arraycopy(bArr2, 0, bArr3, 0, this.engine.getBlockSize() / 2);
            System.arraycopy(this.Btemp.get(0), 0, bArr3, this.engine.getBlockSize() / 2, this.engine.getBlockSize() / 2);
            this.engine.processBlock(bArr3, 0, bArr3, 0);
            i6++;
            intToBytes(i6, this.intArray, 0);
            int i7 = 0;
            while (true) {
                dSTU7624Engine = this.engine;
                if (i7 >= 4) {
                    break;
                }
                int blockSize5 = (dSTU7624Engine.getBlockSize() / 2) + i7;
                bArr3[blockSize5] = (byte) (bArr3[blockSize5] ^ this.intArray[i7]);
                i7++;
            }
            System.arraycopy(bArr3, dSTU7624Engine.getBlockSize() / 2, this.B, 0, this.engine.getBlockSize() / 2);
            int i8 = 2;
            while (true) {
                arrayList = this.Btemp;
                if (i8 < blockSize) {
                    System.arraycopy(arrayList.get(i8 - 1), 0, this.Btemp.get(i8 - 2), 0, this.engine.getBlockSize() / 2);
                    i8++;
                }
            }
            System.arraycopy(bArr3, 0, arrayList.get(blockSize - 2), 0, this.engine.getBlockSize() / 2);
        }
        System.arraycopy(bArr2, 0, bArr3, 0, this.engine.getBlockSize() / 2);
        int blockSize6 = this.engine.getBlockSize() / 2;
        for (int i9 = 0; i9 < i4; i9++) {
            System.arraycopy(this.Btemp.get(i9), 0, bArr3, blockSize6, this.engine.getBlockSize() / 2);
            blockSize6 += this.engine.getBlockSize() / 2;
        }
        return bArr3;
    }
}
