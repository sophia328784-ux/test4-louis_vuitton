package org.bouncycastle.crypto.engines;

import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class XoodyakEngine implements AEADCipher {
    private byte[] K;
    private int Rabsorb;
    private boolean aadFinished;
    private boolean encrypted;
    private boolean forEncryption;
    private byte[] iv;
    private MODE mode;
    private int phase;
    private byte[] state;
    private byte[] tag;
    private final int f_bPrime = 48;
    private final int Rkout = 24;
    private final int PhaseDown = 1;
    private final int PhaseUp = 2;
    private final int NLANES = 12;
    private final int NROWS = 3;
    private final int NCOLUMS = 4;
    private final int MAXROUNDS = 12;
    private final int TAGLEN = 16;
    final int Rkin = 44;
    private final int[] RC = {88, 56, 960, 208, 288, 20, 96, 44, 896, 240, DilithiumEngine.DilithiumPolyT0PackedBytes, 18};
    private boolean initialised = false;
    private final ByteArrayOutputStream aadData = new ByteArrayOutputStream();
    private final ByteArrayOutputStream message = new ByteArrayOutputStream();

    public enum MODE {
        ModeHash,
        ModeKeyed
    }

    private void AbsorbAny(byte[] bArr, int i2, int i3, int i4, int i5) {
        while (true) {
            if (this.phase != 2) {
                Up(null, 0, 0);
            }
            int iMin = Math.min(i3, i4);
            Down(bArr, i2, iMin, i5);
            i2 += iMin;
            i3 -= iMin;
            if (i3 == 0) {
                return;
            } else {
                i5 = 0;
            }
        }
    }

    private int ROTL32(int i2, int i3) {
        return (i2 << (i3 & 31)) ^ (i2 >>> ((32 - i3) & 31));
    }

    private void Up(byte[] bArr, int i2, int i3) {
        int i4;
        if (this.mode != MODE.ModeHash) {
            byte[] bArr2 = this.state;
            bArr2[47] = (byte) (bArr2[47] ^ i3);
        }
        int i5 = 12;
        int[] iArr = new int[12];
        Pack.littleEndianToInt(this.state, 0, iArr, 0, 12);
        int[] iArr2 = new int[12];
        int[] iArr3 = new int[4];
        int[] iArr4 = new int[4];
        for (int i6 = 0; i6 < i5; i6++) {
            for (int i7 = 0; i7 < 4; i7++) {
                iArr3[i7] = (iArr[index(i7, 1)] ^ iArr[index(i7, 0)]) ^ iArr[index(i7, 2)];
            }
            int i8 = 0;
            while (true) {
                i4 = 3;
                if (i8 >= 4) {
                    break;
                }
                int i9 = iArr3[3 & (i8 + 3)];
                iArr4[i8] = ROTL32(i9, 14) ^ ROTL32(i9, 5);
                i8++;
            }
            for (int i10 = 0; i10 < 4; i10++) {
                for (int i11 = 0; i11 < 3; i11++) {
                    int iIndex = index(i10, i11);
                    iArr[iIndex] = iArr[iIndex] ^ iArr4[i10];
                }
            }
            for (int i12 = 0; i12 < 4; i12++) {
                iArr2[index(i12, 0)] = iArr[index(i12, 0)];
                iArr2[index(i12, 1)] = iArr[index(i12 + 3, 1)];
                iArr2[index(i12, 2)] = ROTL32(iArr[index(i12, 2)], 11);
            }
            iArr2[0] = iArr2[0] ^ this.RC[i6];
            int i13 = 0;
            while (i13 < 4) {
                int i14 = 0;
                while (i14 < i4) {
                    int i15 = i14 + 1;
                    iArr[index(i13, i14)] = ((~iArr2[index(i13, i15)]) & iArr2[index(i13, i14 + 2)]) ^ iArr2[index(i13, i14)];
                    i14 = i15;
                    i4 = 3;
                }
                i13++;
                i4 = 3;
            }
            for (int i16 = 0; i16 < 4; i16++) {
                iArr2[index(i16, 0)] = iArr[index(i16, 0)];
                iArr2[index(i16, 1)] = ROTL32(iArr[index(i16, 1)], 1);
                iArr2[index(i16, 2)] = ROTL32(iArr[index(i16 + 2, 2)], 8);
            }
            i5 = 12;
            System.arraycopy(iArr2, 0, iArr, 0, 12);
        }
        Pack.intToLittleEndian(iArr, 0, i5, this.state, 0);
        this.phase = 2;
        if (bArr != null) {
            System.arraycopy(this.state, 0, bArr, 0, i2);
        }
    }

    private int encrypt(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        byte[] bArr3 = new byte[24];
        int i5 = this.encrypted ? 0 : 128;
        int i6 = i3;
        while (true) {
            if (i6 == 0 && this.encrypted) {
                return i3;
            }
            int iMin = Math.min(i6, 24);
            if (this.forEncryption) {
                System.arraycopy(bArr, i2, bArr3, 0, iMin);
            }
            Up(null, 0, i5);
            int i7 = 0;
            while (i7 < iMin) {
                bArr2[i4 + i7] = (byte) (bArr[i2] ^ this.state[i7]);
                i7++;
                i2++;
            }
            if (this.forEncryption) {
                Down(bArr3, 0, iMin, 0);
            } else {
                Down(bArr2, i4, iMin, 0);
            }
            i4 += iMin;
            i6 -= iMin;
            this.encrypted = true;
            i5 = 0;
        }
    }

    private int index(int i2, int i3) {
        return (i2 % 4) + ((i3 % 3) * 4);
    }

    private void processAAD() {
        if (this.aadFinished) {
            return;
        }
        byte[] byteArray = this.aadData.toByteArray();
        AbsorbAny(byteArray, 0, byteArray.length, this.Rabsorb, 3);
        this.aadFinished = true;
    }

    private void reset(boolean z) {
        if (z) {
            this.tag = null;
        }
        Arrays.fill(this.state, (byte) 0);
        this.aadFinished = false;
        this.encrypted = false;
        this.phase = 2;
        this.message.reset();
        this.aadData.reset();
        byte[] bArr = this.K;
        int length = bArr.length;
        int length2 = this.iv.length;
        byte[] bArr2 = new byte[44];
        this.mode = MODE.ModeKeyed;
        this.Rabsorb = 44;
        System.arraycopy(bArr, 0, bArr2, 0, length);
        System.arraycopy(this.iv, 0, bArr2, length, length2);
        int i2 = length + length2;
        bArr2[i2] = (byte) length2;
        AbsorbAny(bArr2, 0, i2 + 1, this.Rabsorb, 2);
    }

    public void Down(byte[] bArr, int i2, int i3, int i4) {
        byte[] bArr2;
        int i5 = 0;
        while (true) {
            bArr2 = this.state;
            if (i5 >= i3) {
                break;
            }
            bArr2[i5] = (byte) (bArr[i2] ^ bArr2[i5]);
            i5++;
            i2++;
        }
        bArr2[i3] = (byte) (bArr2[i3] ^ 1);
        byte b2 = bArr2[47];
        if (this.mode == MODE.ModeHash) {
            i4 &= 1;
        }
        bArr2[47] = (byte) (b2 ^ i4);
        this.phase = 1;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i2) throws InvalidCipherTextException, IllegalStateException {
        String str;
        XoodyakEngine xoodyakEngine;
        int i3;
        if (this.initialised) {
            byte[] byteArray = this.message.toByteArray();
            int size = this.message.size();
            boolean z = this.forEncryption;
            if ((z && size + 16 + i2 > bArr.length) || (!z && (size - 16) + i2 > bArr.length)) {
                mt.n("output buffer too short");
                return 0;
            }
            processAAD();
            if (this.forEncryption) {
                xoodyakEngine = this;
                xoodyakEngine.encrypt(byteArray, 0, size, bArr, i2);
                byte[] bArr2 = new byte[16];
                xoodyakEngine.tag = bArr2;
                xoodyakEngine.Up(bArr2, 16, 64);
                System.arraycopy(xoodyakEngine.tag, 0, bArr, i2 + size, 16);
                i3 = size + 16;
            } else {
                xoodyakEngine = this;
                i3 = size - 16;
                xoodyakEngine.encrypt(byteArray, 0, i3, bArr, i2);
                byte[] bArr3 = new byte[16];
                xoodyakEngine.tag = bArr3;
                xoodyakEngine.Up(bArr3, 16, 64);
                int i4 = i3;
                int i5 = 0;
                while (i5 < 16) {
                    int i6 = i4 + 1;
                    if (xoodyakEngine.tag[i5] == byteArray[i4]) {
                        i5++;
                        i4 = i6;
                    } else {
                        str = "Mac does not match";
                    }
                }
            }
            xoodyakEngine.reset(false);
            return i3;
        }
        str = "Need call init function before encryption/decryption";
        md.n(str);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return "Xoodyak AEAD";
    }

    public int getBlockSize() {
        return 24;
    }

    public int getIVBytesSize() {
        return 16;
    }

    public int getKeyBytesSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.tag;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i2) {
        return i2 + 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i2) {
        return i2;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z;
        if (!(cipherParameters instanceof ParametersWithIV)) {
            md.n("Xoodyak init parameters must include an IV");
            return;
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] iv = parametersWithIV.getIV();
        this.iv = iv;
        if (iv == null || iv.length != 16) {
            md.n("Xoodyak requires exactly 16 bytes of IV");
            return;
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            md.n("Xoodyak init parameters must include a key");
            return;
        }
        byte[] key = ((KeyParameter) parametersWithIV.getParameters()).getKey();
        this.K = key;
        if (key.length != 16) {
            md.n("Xoodyak key must be 128 bits long");
            return;
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z)));
        this.state = new byte[48];
        this.tag = new byte[16];
        this.initialised = true;
        reset();
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b2) {
        if (!this.aadFinished) {
            this.aadData.write(b2);
            return;
        }
        StringBuilder sb = new StringBuilder("AAD cannot be added after reading a full block(");
        sb.append(getBlockSize());
        sb.append(" bytes) of input for ");
        sb.append(this.forEncryption ? "encryption" : "decryption");
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i2, int i3) {
        if (this.aadFinished) {
            StringBuilder sb = new StringBuilder("AAD cannot be added after reading a full block(");
            sb.append(getBlockSize());
            sb.append(" bytes) of input for ");
            sb.append(this.forEncryption ? "encryption" : "decryption");
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 + i3 <= bArr.length) {
            this.aadData.write(bArr, i2, i3);
        } else {
            b21.q("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b2, byte[] bArr, int i2) throws DataLengthException {
        return processBytes(new byte[]{b2}, 0, 1, bArr, i2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws DataLengthException {
        if (!this.initialised) {
            md.n("Need call init function before encryption/decryption");
            return 0;
        }
        if (this.mode != MODE.ModeKeyed) {
            md.n("Xoodyak has not been initialised");
            return 0;
        }
        if (i2 + i3 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        this.message.write(bArr, i2, i3);
        int size = this.message.size() - (this.forEncryption ? 0 : 16);
        if (size >= getBlockSize()) {
            byte[] byteArray = this.message.toByteArray();
            int blockSize = getBlockSize() * (size / getBlockSize());
            if (blockSize + i4 <= bArr2.length) {
                processAAD();
                encrypt(byteArray, 0, blockSize, bArr2, i4);
                this.message.reset();
                this.message.write(byteArray, blockSize, byteArray.length - blockSize);
                return blockSize;
            }
            mt.n("output buffer is too short");
        }
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        if (this.initialised) {
            reset(true);
        } else {
            md.n("Need call init function before encryption/decryption");
        }
    }
}
