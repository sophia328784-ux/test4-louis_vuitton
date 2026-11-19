package org.bouncycastle.crypto.modes;

import defpackage.az;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import defpackage.pq0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier;
import org.bouncycastle.crypto.modes.kgcm.Tables16kKGCMMultiplier_512;
import org.bouncycastle.crypto.modes.kgcm.Tables4kKGCMMultiplier_128;
import org.bouncycastle.crypto.modes.kgcm.Tables8kKGCMMultiplier_256;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class KGCMBlockCipher implements AEADBlockCipher {
    private static final int MIN_MAC_BITS = 64;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long[] f77628b;
    private final int blockSize;
    private BufferedBlockCipher ctrEngine;
    private BlockCipher engine;
    private boolean forEncryption;
    private byte[] initialAssociatedText;
    private byte[] iv;
    private byte[] macBlock;
    private KGCMMultiplier multiplier;
    private ExposedByteArrayOutputStream associatedText = new ExposedByteArrayOutputStream();
    private ExposedByteArrayOutputStream data = new ExposedByteArrayOutputStream();
    private int macSize = -1;

    public static class ExposedByteArrayOutputStream extends ByteArrayOutputStream {
        public byte[] getBuffer() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    public KGCMBlockCipher(BlockCipher blockCipher) {
        this.engine = blockCipher;
        this.ctrEngine = new BufferedBlockCipher(new KCTRBlockCipher(blockCipher));
        int blockSize = this.engine.getBlockSize();
        this.blockSize = blockSize;
        this.initialAssociatedText = new byte[blockSize];
        this.iv = new byte[blockSize];
        this.multiplier = createDefaultMultiplier(blockSize);
        this.f77628b = new long[blockSize >>> 3];
        this.macBlock = null;
    }

    private void calculateMac(byte[] bArr, int i2, int i3, int i4) {
        int i5 = i2 + i3;
        while (true) {
            long[] jArr = this.f77628b;
            if (i2 >= i5) {
                long j2 = (((long) i4) & BodyPartID.bodyIdMax) << 3;
                long j3 = (BodyPartID.bodyIdMax & ((long) i3)) << 3;
                jArr[0] = j2 ^ jArr[0];
                int i6 = this.blockSize >>> 4;
                jArr[i6] = jArr[i6] ^ j3;
                byte[] bArrLongToLittleEndian = Pack.longToLittleEndian(jArr);
                this.macBlock = bArrLongToLittleEndian;
                this.engine.processBlock(bArrLongToLittleEndian, 0, bArrLongToLittleEndian, 0);
                return;
            }
            xorWithInput(jArr, bArr, i2);
            this.multiplier.multiplyH(this.f77628b);
            i2 += this.blockSize;
        }
    }

    private static KGCMMultiplier createDefaultMultiplier(int i2) {
        if (i2 == 16) {
            return new Tables4kKGCMMultiplier_128();
        }
        if (i2 == 32) {
            return new Tables8kKGCMMultiplier_256();
        }
        if (i2 == 64) {
            return new Tables16kKGCMMultiplier_512();
        }
        md.n("Only 128, 256, and 512 -bit block sizes supported");
        return null;
    }

    private void processAAD(byte[] bArr, int i2, int i3) {
        int i4 = i3 + i2;
        while (i2 < i4) {
            xorWithInput(this.f77628b, bArr, i2);
            this.multiplier.multiplyH(this.f77628b);
            i2 += this.blockSize;
        }
    }

    private static void xorWithInput(long[] jArr, byte[] bArr, int i2) {
        for (int i3 = 0; i3 < jArr.length; i3++) {
            jArr[i3] = jArr[i3] ^ Pack.littleEndianToLong(bArr, i2);
            i2 += 8;
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i2) throws InvalidCipherTextException, IllegalStateException, IOException {
        int i3;
        int iDoFinal;
        int size = this.data.size();
        if (!this.forEncryption && size < this.macSize) {
            az.x("data too short");
            return 0;
        }
        byte[] bArr2 = new byte[this.blockSize];
        this.engine.processBlock(bArr2, 0, bArr2, 0);
        long[] jArr = new long[this.blockSize >>> 3];
        Pack.littleEndianToLong(bArr2, 0, jArr);
        this.multiplier.init(jArr);
        Arrays.fill(bArr2, (byte) 0);
        Arrays.fill(jArr, 0L);
        int size2 = this.associatedText.size();
        if (size2 > 0) {
            processAAD(this.associatedText.getBuffer(), 0, size2);
        }
        if (!this.forEncryption) {
            i3 = size;
            int i4 = i3 - this.macSize;
            if (bArr.length - i2 < i4) {
                mt.n("Output buffer too short");
                return 0;
            }
            calculateMac(this.data.getBuffer(), 0, i4, size2);
            int iProcessBytes = this.ctrEngine.processBytes(this.data.getBuffer(), 0, i4, bArr, i2);
            iDoFinal = this.ctrEngine.doFinal(bArr, i2 + iProcessBytes) + iProcessBytes;
        } else {
            if ((bArr.length - i2) - this.macSize < size) {
                mt.n("Output buffer too short");
                return 0;
            }
            int iProcessBytes2 = this.ctrEngine.processBytes(this.data.getBuffer(), 0, size, bArr, i2);
            i3 = size;
            iDoFinal = this.ctrEngine.doFinal(bArr, i2 + iProcessBytes2) + iProcessBytes2;
            calculateMac(bArr, i2, i3, size2);
        }
        byte[] bArr3 = this.macBlock;
        if (bArr3 == null) {
            md.k("mac is not calculated");
            return 0;
        }
        boolean z = this.forEncryption;
        int i5 = this.macSize;
        if (z) {
            System.arraycopy(bArr3, 0, bArr, i2 + iDoFinal, i5);
            reset();
            return iDoFinal + this.macSize;
        }
        byte[] bArr4 = new byte[i5];
        byte[] buffer = this.data.getBuffer();
        int i6 = this.macSize;
        System.arraycopy(buffer, i3 - i6, bArr4, 0, i6);
        int i7 = this.macSize;
        byte[] bArr5 = new byte[i7];
        System.arraycopy(this.macBlock, 0, bArr5, 0, i7);
        if (Arrays.constantTimeAreEqual(bArr4, bArr5)) {
            reset();
            return iDoFinal;
        }
        az.x("mac verification failed");
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.engine.getAlgorithmName() + "/KGCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        int i2 = this.macSize;
        byte[] bArr = new byte[i2];
        System.arraycopy(this.macBlock, 0, bArr, 0, i2);
        return bArr;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i2) {
        int size = this.data.size() + i2;
        boolean z = this.forEncryption;
        int i3 = this.macSize;
        if (z) {
            return size + i3;
        }
        if (size < i3) {
            return 0;
        }
        return size - i3;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i2) {
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IOException, IllegalArgumentException {
        KeyParameter key;
        this.forEncryption = z;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            byte[] nonce = aEADParameters.getNonce();
            byte[] bArr = this.iv;
            int length = bArr.length - nonce.length;
            Arrays.fill(bArr, (byte) 0);
            System.arraycopy(nonce, 0, this.iv, length, nonce.length);
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize < 64 || macSize > (this.blockSize << 3) || (macSize & 7) != 0) {
                md.n(pq0.k(macSize, "Invalid value for MAC size: "));
                return;
            }
            this.macSize = macSize >>> 3;
            key = aEADParameters.getKey();
            byte[] bArr2 = this.initialAssociatedText;
            if (bArr2 != null) {
                processAADBytes(bArr2, 0, bArr2.length);
            }
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                md.n("Invalid parameter passed");
                return;
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            byte[] bArr3 = this.iv;
            int length2 = bArr3.length - iv.length;
            Arrays.fill(bArr3, (byte) 0);
            System.arraycopy(iv, 0, this.iv, length2, iv.length);
            this.initialAssociatedText = null;
            this.macSize = this.blockSize;
            key = (KeyParameter) parametersWithIV.getParameters();
        }
        this.macBlock = new byte[this.blockSize];
        this.ctrEngine.init(true, new ParametersWithIV(key, this.iv));
        this.engine.init(true, key);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b2) throws IOException {
        this.associatedText.write(b2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i2, int i3) throws IOException {
        this.associatedText.write(bArr, i2, i3);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b2, byte[] bArr, int i2) throws IllegalStateException, DataLengthException, IOException {
        this.data.write(b2);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws IllegalStateException, DataLengthException, IOException {
        if (bArr.length >= i2 + i3) {
            this.data.write(bArr, i2, i3);
            return 0;
        }
        b21.q("input buffer too short");
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() throws IOException {
        Arrays.fill(this.f77628b, 0L);
        this.engine.reset();
        this.data.reset();
        this.associatedText.reset();
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }
}
