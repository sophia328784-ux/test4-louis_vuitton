package org.bouncycastle.crypto.engines;

import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import defpackage.no0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class Grain128AEADEngine implements AEADCipher {
    private static final int STATE_SIZE = 4;
    private int[] authAcc;
    private int[] authSr;
    private int[] lfsr;
    private byte[] mac;
    private int[] nfsr;
    private byte[] workingIV;
    private byte[] workingKey;
    private boolean initialised = false;
    private boolean aadFinished = false;
    private ErasableOutputStream aadData = new ErasableOutputStream();

    public static final class ErasableOutputStream extends ByteArrayOutputStream {
        public byte[] getBuf() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    private void accumulate() {
        int[] iArr = this.authAcc;
        int i2 = iArr[0];
        int[] iArr2 = this.authSr;
        iArr[0] = i2 ^ iArr2[0];
        iArr[1] = iArr2[1] ^ iArr[1];
    }

    private void authShift(int i2) {
        int[] iArr = this.authSr;
        int i3 = iArr[0] >>> 1;
        int i4 = iArr[1];
        iArr[0] = i3 | (i4 << 31);
        iArr[1] = (i2 << 31) | (i4 >>> 1);
    }

    private void doProcessAADBytes(byte[] bArr, int i2, int i3) {
        int i4;
        byte[] bArr2;
        if (i3 < 128) {
            bArr2 = new byte[i3 + 1];
            bArr2[0] = (byte) i3;
            i4 = 0;
        } else {
            int iLen_length = len_length(i3);
            byte[] bArr3 = new byte[iLen_length + 1 + i3];
            bArr3[0] = (byte) (iLen_length | 128);
            int i5 = i3;
            int i6 = 0;
            while (i6 < iLen_length) {
                i6++;
                bArr3[i6] = (byte) i5;
                i5 >>>= 8;
            }
            i4 = iLen_length;
            bArr2 = bArr3;
        }
        for (int i7 = 0; i7 < i3; i7++) {
            bArr2[1 + i4 + i7] = bArr[i2 + i7];
        }
        for (byte b2 : bArr2) {
            for (int i8 = 0; i8 < 8; i8++) {
                this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) & 1);
                this.lfsr = shift(this.lfsr, getOutputLFSR() & 1);
                int i9 = -((b2 >> i8) & 1);
                int[] iArr = this.authAcc;
                int i10 = iArr[0];
                int[] iArr2 = this.authSr;
                iArr[0] = i10 ^ (iArr2[0] & i9);
                iArr[1] = (i9 & iArr2[1]) ^ iArr[1];
                authShift(getOutput());
                this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) & 1);
                this.lfsr = shift(this.lfsr, getOutputLFSR() & 1);
            }
        }
    }

    private byte[] getKeyStream(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        for (int i5 = 0; i5 < i3; i5++) {
            byte b2 = bArr[i2 + i5];
            byte b3 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                int output = getOutput();
                this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) & 1);
                this.lfsr = shift(this.lfsr, getOutputLFSR() & 1);
                int i7 = (b2 >> i6) & 1;
                b3 = (byte) (b3 | ((output ^ i7) << i6));
                int i8 = -i7;
                int[] iArr = this.authAcc;
                int i9 = iArr[0];
                int[] iArr2 = this.authSr;
                iArr[0] = i9 ^ (iArr2[0] & i8);
                iArr[1] = (i8 & iArr2[1]) ^ iArr[1];
                authShift(getOutput());
                this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) & 1);
                this.lfsr = shift(this.lfsr, getOutputLFSR() & 1);
            }
            bArr2[i4 + i5] = b3;
        }
        return bArr2;
    }

    private int getOutput() {
        int[] iArr = this.nfsr;
        int i2 = iArr[0];
        int i3 = i2 >>> 12;
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = i5 >>> 31;
        int[] iArr2 = this.lfsr;
        int i7 = iArr2[0];
        int i8 = iArr2[1];
        int i9 = iArr2[2];
        int i10 = (i7 >>> 20) & (i7 >>> 13);
        return (((((((((((i9 >>> 30) & (i3 & i6)) ^ (((i10 ^ ((i7 >>> 8) & i3)) ^ (i6 & (i8 >>> 10))) ^ ((i9 >>> 15) & (i8 >>> 28)))) ^ (i9 >>> 29)) ^ (i2 >>> 2)) ^ (i2 >>> 15)) ^ (i4 >>> 4)) ^ (i4 >>> 13)) ^ i5) ^ (i5 >>> 9)) ^ (i5 >>> 25)) & 1;
    }

    private int getOutputLFSR() {
        int[] iArr = this.lfsr;
        int i2 = iArr[0];
        int i3 = iArr[1] >>> 6;
        int i4 = iArr[2];
        return (iArr[3] ^ ((((i2 ^ (i2 >>> 7)) ^ i3) ^ (i4 >>> 6)) ^ (i4 >>> 17))) & 1;
    }

    private int getOutputNFSR() {
        int[] iArr = this.nfsr;
        int i2 = iArr[0];
        int i3 = i2 >>> 25;
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = ((i2 >>> 26) ^ i2) ^ (i4 >>> 24);
        return (((((((((((iArr[3] ^ (i6 ^ (i5 >>> 27))) ^ ((i2 & i5) >>> 3)) ^ ((i2 >>> 11) & (i2 >>> 13))) ^ ((i2 >>> 17) & (i2 >>> 18))) ^ ((i2 & i4) >>> 27)) ^ ((i4 >>> 8) & (i4 >>> 16))) ^ ((i4 >>> 29) & (i5 >>> 1))) ^ ((i5 >>> 4) & (i5 >>> 20))) ^ (((i2 >>> 22) & (i2 >>> 24)) & i3)) ^ (((i5 >>> 6) & (i5 >>> 14)) & (i5 >>> 18))) ^ ((((i5 >>> 24) & (i5 >>> 28)) & (i5 >>> 29)) & (i5 >>> 31))) & 1;
    }

    private void initGrain() {
        for (int i2 = 0; i2 < 320; i2++) {
            int output = getOutput();
            this.nfsr = shift(this.nfsr, ((getOutputNFSR() ^ this.lfsr[0]) ^ output) & 1);
            this.lfsr = shift(this.lfsr, (output ^ getOutputLFSR()) & 1);
        }
        for (int i3 = 0; i3 < 8; i3++) {
            for (int i4 = 0; i4 < 8; i4++) {
                int output2 = getOutput();
                this.nfsr = shift(this.nfsr, (((getOutputNFSR() ^ this.lfsr[0]) ^ output2) ^ (this.workingKey[i3] >> i4)) & 1);
                this.lfsr = shift(this.lfsr, ((output2 ^ getOutputLFSR()) ^ (this.workingKey[i3 + 8] >> i4)) & 1);
            }
        }
        for (int i5 = 0; i5 < 2; i5++) {
            for (int i6 = 0; i6 < 32; i6++) {
                int output3 = getOutput();
                this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) & 1);
                this.lfsr = shift(this.lfsr, getOutputLFSR() & 1);
                int[] iArr = this.authAcc;
                iArr[i5] = (output3 << i6) | iArr[i5];
            }
        }
        for (int i7 = 0; i7 < 2; i7++) {
            for (int i8 = 0; i8 < 32; i8++) {
                int output4 = getOutput();
                this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) & 1);
                this.lfsr = shift(this.lfsr, getOutputLFSR() & 1);
                int[] iArr2 = this.authSr;
                iArr2[i7] = (output4 << i8) | iArr2[i7];
            }
        }
        this.initialised = true;
    }

    private static int len_length(int i2) {
        if ((i2 & 255) == i2) {
            return 1;
        }
        if ((65535 & i2) == i2) {
            return 2;
        }
        return (16777215 & i2) == i2 ? 3 : 4;
    }

    private void reset(boolean z) {
        if (z) {
            this.mac = null;
        }
        this.aadData.reset();
        this.aadFinished = false;
        setKey(this.workingKey, this.workingIV);
        initGrain();
    }

    private void setKey(byte[] bArr, byte[] bArr2) {
        bArr2[12] = -1;
        bArr2[13] = -1;
        bArr2[14] = -1;
        bArr2[15] = 127;
        this.workingKey = bArr;
        this.workingIV = bArr2;
        Pack.littleEndianToInt(bArr, 0, this.nfsr);
        Pack.littleEndianToInt(this.workingIV, 0, this.lfsr);
    }

    private int[] shift(int[] iArr, int i2) {
        int i3 = iArr[0] >>> 1;
        int i4 = iArr[1];
        iArr[0] = i3 | (i4 << 31);
        int i5 = i4 >>> 1;
        int i6 = iArr[2];
        iArr[1] = i5 | (i6 << 31);
        int i7 = iArr[3];
        iArr[2] = (i6 >>> 1) | (i7 << 31);
        iArr[3] = (i7 >>> 1) | (i2 << 31);
        return iArr;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i2) throws InvalidCipherTextException, IllegalStateException {
        if (!this.aadFinished) {
            doProcessAADBytes(this.aadData.getBuf(), 0, this.aadData.size());
            this.aadFinished = true;
        }
        accumulate();
        byte[] bArrIntToLittleEndian = Pack.intToLittleEndian(this.authAcc);
        this.mac = bArrIntToLittleEndian;
        System.arraycopy(bArrIntToLittleEndian, 0, bArr, i2, bArrIntToLittleEndian.length);
        reset(false);
        return this.mac.length;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return "Grain-128AEAD";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.mac;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i2) {
        return i2 + 8;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i2) {
        return i2;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            md.n("Grain-128AEAD init parameters must include an IV");
            return;
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] iv = parametersWithIV.getIV();
        if (iv == null || iv.length != 12) {
            md.n("Grain-128AEAD requires exactly 12 bytes of IV");
            return;
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            md.n("Grain-128AEAD init parameters must include a key");
            return;
        }
        byte[] key = ((KeyParameter) parametersWithIV.getParameters()).getKey();
        if (key.length != 16) {
            md.n("Grain-128AEAD key must be 128 bits long");
            return;
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z)));
        byte[] bArr = new byte[16];
        this.workingIV = bArr;
        this.workingKey = new byte[16];
        this.lfsr = new int[4];
        this.nfsr = new int[4];
        this.authAcc = new int[2];
        this.authSr = new int[2];
        System.arraycopy(iv, 0, bArr, 0, iv.length);
        System.arraycopy(key, 0, this.workingKey, 0, key.length);
        reset();
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b2) throws IOException {
        if (this.aadFinished) {
            md.k("associated data must be added before plaintext/ciphertext");
        } else {
            this.aadData.write(b2);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i2, int i3) throws IOException {
        if (this.aadFinished) {
            md.k("associated data must be added before plaintext/ciphertext");
        } else {
            this.aadData.write(bArr, i2, i3);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b2, byte[] bArr, int i2) throws DataLengthException {
        return processBytes(new byte[]{b2}, 0, 1, bArr, i2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws DataLengthException {
        if (!this.initialised) {
            no0.l(getAlgorithmName(), " not initialised");
            return 0;
        }
        if (!this.aadFinished) {
            doProcessAADBytes(this.aadData.getBuf(), 0, this.aadData.size());
            this.aadFinished = true;
        }
        if (i2 + i3 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        if (i4 + i3 <= bArr2.length) {
            getKeyStream(bArr, i2, i3, bArr2, i4);
            return i3;
        }
        mt.n("output buffer too short");
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
    }
}
