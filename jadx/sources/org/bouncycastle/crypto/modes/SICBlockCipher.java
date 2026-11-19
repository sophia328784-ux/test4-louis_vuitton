package org.bouncycastle.crypto.modes;

import defpackage.a;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SICBlockCipher extends StreamBlockCipher implements CTRModeCipher {
    private byte[] IV;
    private final int blockSize;
    private int byteCount;
    private final BlockCipher cipher;
    private byte[] counter;
    private byte[] counterOut;

    public SICBlockCipher(BlockCipher blockCipher) {
        super(blockCipher);
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.IV = new byte[blockSize];
        this.counter = new byte[blockSize];
        this.counterOut = new byte[blockSize];
        this.byteCount = 0;
    }

    private void adjustCounter(long j2) {
        long j3;
        long j4;
        int i2 = this.byteCount;
        int i3 = 5;
        if (j2 >= 0) {
            long j5 = (((long) i2) + j2) / ((long) this.blockSize);
            if (j5 > 255) {
                j4 = j5;
                while (i3 >= 1) {
                    long j6 = 1 << (i3 * 8);
                    while (j4 >= j6) {
                        incrementCounterAt(i3);
                        j4 -= j6;
                    }
                    i3--;
                }
            } else {
                j4 = j5;
            }
            incrementCounter((int) j4);
            this.byteCount = (int) ((j2 + ((long) this.byteCount)) - (((long) this.blockSize) * j5));
            return;
        }
        long j7 = ((-j2) - ((long) i2)) / ((long) this.blockSize);
        if (j7 > 255) {
            j3 = j7;
            while (i3 >= 1) {
                long j8 = 1 << (i3 * 8);
                while (j3 > j8) {
                    decrementCounterAt(i3);
                    j3 -= j8;
                }
                i3--;
            }
        } else {
            j3 = j7;
        }
        for (long j9 = 0; j9 != j3; j9++) {
            decrementCounterAt(0);
        }
        int i4 = (int) ((((long) this.blockSize) * j7) + ((long) this.byteCount) + j2);
        if (i4 >= 0) {
            this.byteCount = 0;
        } else {
            decrementCounterAt(0);
            this.byteCount = this.blockSize + i4;
        }
    }

    private void checkCounter() {
        byte[] bArr = this.IV;
        if (bArr.length < this.blockSize) {
            for (int length = bArr.length - 1; length >= 0; length--) {
                if (this.counter[length] != this.IV[length]) {
                    md.k("Counter in CTR/SIC mode out of range.");
                    return;
                }
            }
        }
    }

    private void checkLastIncrement() {
        byte[] bArr = this.IV;
        if (bArr.length >= this.blockSize || this.counter[bArr.length - 1] == bArr[bArr.length - 1]) {
            return;
        }
        md.k("Counter in CTR/SIC mode out of range.");
    }

    private void decrementCounterAt(int i2) {
        byte b2;
        int length = this.counter.length - i2;
        do {
            length--;
            if (length < 0) {
                return;
            }
            byte[] bArr = this.counter;
            b2 = (byte) (bArr[length] - 1);
            bArr[length] = b2;
        } while (b2 == -1);
    }

    private void incrementCounter(int i2) {
        byte[] bArr = this.counter;
        byte b2 = bArr[bArr.length - 1];
        int length = bArr.length - 1;
        bArr[length] = (byte) (bArr[length] + i2);
        if (b2 == 0 || bArr[bArr.length - 1] >= b2) {
            return;
        }
        incrementCounterAt(1);
    }

    private void incrementCounterAt(int i2) {
        byte b2;
        int length = this.counter.length - i2;
        do {
            length--;
            if (length < 0) {
                return;
            }
            byte[] bArr = this.counter;
            b2 = (byte) (bArr[length] + 1);
            bArr[length] = b2;
        } while (b2 == 0);
    }

    public static CTRModeCipher newInstance(BlockCipher blockCipher) {
        return new SICBlockCipher(blockCipher);
    }

    @Override // org.bouncycastle.crypto.StreamBlockCipher
    public byte calculateByte(byte b2) throws IllegalStateException, DataLengthException {
        int i2 = this.byteCount;
        if (i2 == 0) {
            checkLastIncrement();
            this.cipher.processBlock(this.counter, 0, this.counterOut, 0);
            byte[] bArr = this.counterOut;
            int i3 = this.byteCount;
            this.byteCount = i3 + 1;
            return (byte) (bArr[i3] ^ b2);
        }
        byte[] bArr2 = this.counterOut;
        int i4 = i2 + 1;
        this.byteCount = i4;
        byte b3 = (byte) (b2 ^ bArr2[i2]);
        if (i4 == this.counter.length) {
            this.byteCount = 0;
            incrementCounter();
        }
        return b3;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/SIC";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long getPosition() {
        byte[] bArr = this.counter;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        int i2 = length - 1;
        while (i2 >= 1) {
            byte[] bArr3 = this.IV;
            int i3 = i2 < bArr3.length ? (bArr2[i2] & 255) - (bArr3[i2] & 255) : bArr2[i2] & 255;
            if (i3 < 0) {
                int i4 = i2 - 1;
                bArr2[i4] = (byte) (bArr2[i4] - 1);
                i3 += 256;
            }
            bArr2[i2] = (byte) i3;
            i2--;
        }
        return (Pack.bigEndianToLong(bArr2, length - 8) * ((long) this.blockSize)) + ((long) this.byteCount);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            md.n("CTR/SIC mode requires ParametersWithIV");
            return;
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] bArrClone = Arrays.clone(parametersWithIV.getIV());
        this.IV = bArrClone;
        int i2 = this.blockSize;
        if (i2 < bArrClone.length) {
            md.n(a.i(this.blockSize, " bytes.", new StringBuilder("CTR/SIC mode requires IV no greater than: ")));
            return;
        }
        int i3 = 8 > i2 / 2 ? i2 / 2 : 8;
        if (i2 - bArrClone.length > i3) {
            b21.r("CTR/SIC mode requires IV of at least: ", this.blockSize - i3, " bytes.");
            return;
        }
        if (parametersWithIV.getParameters() != null) {
            this.cipher.init(true, parametersWithIV.getParameters());
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i2, byte[] bArr2, int i3) throws IllegalStateException, DataLengthException {
        int i4 = this.byteCount;
        int i5 = this.blockSize;
        if (i4 != 0) {
            processBytes(bArr, i2, i5, bArr2, i3);
        } else {
            int i6 = i2 + i5;
            int length = bArr.length;
            if (i6 > length) {
                b21.q("input buffer too small");
                return 0;
            }
            if (i3 + i5 > bArr2.length) {
                mt.n("output buffer too short");
                return 0;
            }
            this.cipher.processBlock(this.counter, 0, this.counterOut, 0);
            for (int i7 = 0; i7 < this.blockSize; i7++) {
                bArr2[i3 + i7] = (byte) (bArr[i2 + i7] ^ this.counterOut[i7]);
            }
            incrementCounter();
        }
        return this.blockSize;
    }

    @Override // org.bouncycastle.crypto.StreamBlockCipher, org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws DataLengthException {
        byte b2;
        if (i2 + i3 > bArr.length) {
            b21.q("input buffer too small");
            return 0;
        }
        if (i4 + i3 > bArr2.length) {
            mt.n("output buffer too short");
            return 0;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = this.byteCount;
            if (i6 == 0) {
                checkLastIncrement();
                this.cipher.processBlock(this.counter, 0, this.counterOut, 0);
                byte b3 = bArr[i2 + i5];
                byte[] bArr3 = this.counterOut;
                int i7 = this.byteCount;
                this.byteCount = i7 + 1;
                b2 = (byte) (b3 ^ bArr3[i7]);
            } else {
                byte b4 = bArr[i2 + i5];
                byte[] bArr4 = this.counterOut;
                int i8 = i6 + 1;
                this.byteCount = i8;
                b2 = (byte) (bArr4[i6] ^ b4);
                if (i8 == this.counter.length) {
                    this.byteCount = 0;
                    incrementCounter();
                }
            }
            bArr2[i4 + i5] = b2;
        }
        return i3;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        Arrays.fill(this.counter, (byte) 0);
        byte[] bArr = this.IV;
        System.arraycopy(bArr, 0, this.counter, 0, bArr.length);
        this.cipher.reset();
        this.byteCount = 0;
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long seekTo(long j2) {
        reset();
        return skip(j2);
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long skip(long j2) {
        adjustCounter(j2);
        checkCounter();
        this.cipher.processBlock(this.counter, 0, this.counterOut, 0);
        return j2;
    }

    private void incrementCounter() {
        byte b2;
        int length = this.counter.length;
        do {
            length--;
            if (length < 0) {
                return;
            }
            byte[] bArr = this.counter;
            b2 = (byte) (bArr[length] + 1);
            bArr[length] = b2;
        } while (b2 == 0);
    }
}
