package org.bouncycastle.crypto.modes;

import defpackage.az;
import defpackage.md;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.modes.gcm.GCMMultiplier;
import org.bouncycastle.crypto.modes.gcm.Tables4kGCMMultiplier;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class GCMSIVBlockCipher implements AEADBlockCipher {
    private static final byte ADD = -31;
    private static final int AEAD_COMPLETE = 2;
    private static final int BUFLEN = 16;
    private static final int HALFBUFLEN = 8;
    private static final int INIT = 1;
    private static final byte MASK = -128;
    private static final int MAX_DATALEN = 2147483623;
    private static final int NONCELEN = 12;
    private boolean forEncryption;
    private byte[] macBlock;
    private final GCMSIVHasher theAEADHasher;
    private final BlockCipher theCipher;
    private final GCMSIVHasher theDataHasher;
    private GCMSIVCache theEncData;
    private int theFlags;
    private final byte[] theGHash;
    private byte[] theInitialAEAD;
    private final GCMMultiplier theMultiplier;
    private byte[] theNonce;
    private GCMSIVCache thePlain;
    private final byte[] theReverse;

    public static class GCMSIVCache extends ByteArrayOutputStream {
        public void clearBuffer() {
            Arrays.fill(getBuffer(), (byte) 0);
        }

        public byte[] getBuffer() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    public GCMSIVBlockCipher(BlockCipher blockCipher, GCMMultiplier gCMMultiplier) {
        this.theGHash = new byte[16];
        this.theReverse = new byte[16];
        this.macBlock = new byte[16];
        if (blockCipher.getBlockSize() != 16) {
            md.n("Cipher required with a block size of 16.");
            throw null;
        }
        this.theCipher = blockCipher;
        this.theMultiplier = gCMMultiplier;
        this.theAEADHasher = new GCMSIVHasher();
        this.theDataHasher = new GCMSIVHasher();
    }

    private static int bufLength(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    private byte[] calculateTag() {
        this.theDataHasher.completeHash();
        byte[] bArrCompletePolyVal = completePolyVal();
        byte[] bArr = new byte[16];
        for (int i2 = 0; i2 < 12; i2++) {
            bArrCompletePolyVal[i2] = (byte) (bArrCompletePolyVal[i2] ^ this.theNonce[i2]);
        }
        bArrCompletePolyVal[15] = (byte) (bArrCompletePolyVal[15] & (-129));
        this.theCipher.processBlock(bArrCompletePolyVal, 0, bArr, 0);
        return bArr;
    }

    private void checkAEADStatus(int i2) {
        String str;
        int i3 = this.theFlags;
        if ((i3 & 1) == 0) {
            str = "Cipher is not initialised";
        } else if ((i3 & 2) != 0) {
            str = "AEAD data cannot be processed after ordinary data";
        } else if (this.theAEADHasher.getBytesProcessed() - Long.MIN_VALUE <= ((long) (MAX_DATALEN - i2)) - Long.MIN_VALUE) {
            return;
        } else {
            str = "AEAD byte count exceeded";
        }
        md.k(str);
    }

    private static void checkBuffer(byte[] bArr, int i2, int i3, boolean z) {
        int iBufLength = bufLength(bArr);
        int i4 = i2 + i3;
        if (i3 < 0 || i2 < 0 || i4 < 0 || i4 > iBufLength) {
            if (!z) {
                throw new DataLengthException("Input buffer too short.");
            }
        }
    }

    private void checkStatus(int i2) {
        String str;
        long j2;
        int i3 = this.theFlags;
        if ((i3 & 1) != 0) {
            if ((i3 & 2) == 0) {
                this.theAEADHasher.completeHash();
                this.theFlags |= 2;
            }
            long size = this.thePlain.size();
            if (this.forEncryption) {
                j2 = 2147483623;
            } else {
                size = this.theEncData.size();
                j2 = 2147483639;
            }
            if (size - Long.MIN_VALUE <= (j2 - ((long) i2)) - Long.MIN_VALUE) {
                return;
            } else {
                str = "byte count exceeded";
            }
        } else {
            str = "Cipher is not initialised";
        }
        md.k(str);
    }

    private byte[] completePolyVal() {
        byte[] bArr = new byte[16];
        gHashLengths();
        fillReverse(this.theGHash, 0, 16, bArr);
        return bArr;
    }

    private void decryptPlain() throws InvalidCipherTextException, IOException {
        byte[] buffer = this.theEncData.getBuffer();
        int size = this.theEncData.size();
        int i2 = size - 16;
        if (i2 < 0) {
            az.x("Data too short");
            return;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(buffer, i2, size);
        byte[] bArrClone = Arrays.clone(bArrCopyOfRange);
        bArrClone[15] = (byte) (bArrClone[15] | (-128));
        byte[] bArr = new byte[16];
        int i3 = 0;
        while (i2 > 0) {
            this.theCipher.processBlock(bArrClone, 0, bArr, 0);
            int iMin = Math.min(16, i2);
            xorBlock(bArr, buffer, i3, iMin);
            this.thePlain.write(bArr, 0, iMin);
            this.theDataHasher.updateHash(bArr, 0, iMin);
            i2 -= iMin;
            i3 += iMin;
            incrementCounter(bArrClone);
        }
        byte[] bArrCalculateTag = calculateTag();
        if (Arrays.constantTimeAreEqual(bArrCalculateTag, bArrCopyOfRange)) {
            byte[] bArr2 = this.macBlock;
            System.arraycopy(bArrCalculateTag, 0, bArr2, 0, bArr2.length);
        } else {
            reset();
            az.x("mac check failed");
        }
    }

    private void deriveKeys(KeyParameter keyParameter) {
        byte[] bArr = new byte[16];
        byte[] bArr2 = new byte[16];
        byte[] bArr3 = new byte[16];
        int keyLength = keyParameter.getKeyLength();
        byte[] bArr4 = new byte[keyLength];
        System.arraycopy(this.theNonce, 0, bArr, 4, 12);
        this.theCipher.init(true, keyParameter);
        this.theCipher.processBlock(bArr, 0, bArr2, 0);
        System.arraycopy(bArr2, 0, bArr3, 0, 8);
        bArr[0] = (byte) (bArr[0] + 1);
        this.theCipher.processBlock(bArr, 0, bArr2, 0);
        System.arraycopy(bArr2, 0, bArr3, 8, 8);
        bArr[0] = (byte) (bArr[0] + 1);
        this.theCipher.processBlock(bArr, 0, bArr2, 0);
        System.arraycopy(bArr2, 0, bArr4, 0, 8);
        bArr[0] = (byte) (bArr[0] + 1);
        this.theCipher.processBlock(bArr, 0, bArr2, 0);
        System.arraycopy(bArr2, 0, bArr4, 8, 8);
        if (keyLength == 32) {
            bArr[0] = (byte) (bArr[0] + 1);
            this.theCipher.processBlock(bArr, 0, bArr2, 0);
            System.arraycopy(bArr2, 0, bArr4, 16, 8);
            bArr[0] = (byte) (bArr[0] + 1);
            this.theCipher.processBlock(bArr, 0, bArr2, 0);
            System.arraycopy(bArr2, 0, bArr4, 24, 8);
        }
        this.theCipher.init(true, new KeyParameter(bArr4));
        fillReverse(bArr3, 0, 16, bArr2);
        mulX(bArr2);
        this.theMultiplier.init(bArr2);
        this.theFlags |= 1;
    }

    private int encryptPlain(byte[] bArr, byte[] bArr2, int i2) {
        byte[] buffer = this.thePlain.getBuffer();
        byte[] bArrClone = Arrays.clone(bArr);
        bArrClone[15] = (byte) (bArrClone[15] | (-128));
        byte[] bArr3 = new byte[16];
        int size = this.thePlain.size();
        int i3 = 0;
        while (size > 0) {
            this.theCipher.processBlock(bArrClone, 0, bArr3, 0);
            int iMin = Math.min(16, size);
            xorBlock(bArr3, buffer, i3, iMin);
            System.arraycopy(bArr3, 0, bArr2, i2 + i3, iMin);
            size -= iMin;
            i3 += iMin;
            incrementCounter(bArrClone);
        }
        return this.thePlain.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fillReverse(byte[] bArr, int i2, int i3, byte[] bArr2) {
        int i4 = 0;
        int i5 = 15;
        while (i4 < i3) {
            bArr2[i5] = bArr[i2 + i4];
            i4++;
            i5--;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gHASH(byte[] bArr) {
        xorBlock(this.theGHash, bArr);
        this.theMultiplier.multiplyH(this.theGHash);
    }

    private void gHashLengths() {
        byte[] bArr = new byte[16];
        Pack.longToBigEndian(this.theDataHasher.getBytesProcessed() * 8, bArr, 0);
        Pack.longToBigEndian(this.theAEADHasher.getBytesProcessed() * 8, bArr, 8);
        gHASH(bArr);
    }

    private static void incrementCounter(byte[] bArr) {
        for (int i2 = 0; i2 < 4; i2++) {
            byte b2 = (byte) (bArr[i2] + 1);
            bArr[i2] = b2;
            if (b2 != 0) {
                return;
            }
        }
    }

    private static void mulX(byte[] bArr) {
        int i2 = 0;
        for (int i3 = 0; i3 < 16; i3++) {
            byte b2 = bArr[i3];
            bArr[i3] = (byte) (i2 | ((b2 >> 1) & CertificateBody.profileType));
            i2 = (b2 & 1) == 0 ? 0 : -128;
        }
        if (i2 != 0) {
            bArr[0] = (byte) (bArr[0] ^ ADD);
        }
    }

    private void resetStreams() {
        GCMSIVCache gCMSIVCache = this.thePlain;
        if (gCMSIVCache != null) {
            gCMSIVCache.clearBuffer();
        }
        this.theAEADHasher.reset();
        this.theDataHasher.reset();
        this.thePlain = new GCMSIVCache();
        this.theEncData = this.forEncryption ? null : new GCMSIVCache();
        this.theFlags &= -3;
        Arrays.fill(this.theGHash, (byte) 0);
        byte[] bArr = this.theInitialAEAD;
        if (bArr != null) {
            this.theAEADHasher.updateHash(bArr, 0, bArr.length);
        }
    }

    private static void xorBlock(byte[] bArr, byte[] bArr2) {
        for (int i2 = 0; i2 < 16; i2++) {
            bArr[i2] = (byte) (bArr[i2] ^ bArr2[i2]);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i2) throws InvalidCipherTextException, IllegalStateException, IOException {
        checkStatus(0);
        checkBuffer(bArr, i2, getOutputSize(0), true);
        if (!this.forEncryption) {
            decryptPlain();
            int size = this.thePlain.size();
            System.arraycopy(this.thePlain.getBuffer(), 0, bArr, i2, size);
            resetStreams();
            return size;
        }
        byte[] bArrCalculateTag = calculateTag();
        int iEncryptPlain = encryptPlain(bArrCalculateTag, bArr, i2) + 16;
        System.arraycopy(bArrCalculateTag, 0, bArr, this.thePlain.size() + i2, 16);
        byte[] bArr2 = this.macBlock;
        System.arraycopy(bArrCalculateTag, 0, bArr2, 0, bArr2.length);
        resetStreams();
        return iEncryptPlain;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.theCipher.getAlgorithmName() + "-GCM-SIV";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return Arrays.clone(this.macBlock);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i2) {
        if (this.forEncryption) {
            return this.thePlain.size() + i2 + 16;
        }
        int size = this.theEncData.size() + i2;
        if (size > 16) {
            return size - 16;
        }
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.theCipher;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i2) {
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        byte[] iv;
        KeyParameter key;
        byte[] associatedText;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            associatedText = aEADParameters.getAssociatedText();
            iv = aEADParameters.getNonce();
            key = aEADParameters.getKey();
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                md.n("invalid parameters passed to GCM-SIV");
                return;
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            iv = parametersWithIV.getIV();
            key = (KeyParameter) parametersWithIV.getParameters();
            associatedText = null;
        }
        if (iv == null || iv.length != 12) {
            md.n("Invalid nonce");
            return;
        }
        if (key == null || !(key.getKeyLength() == 16 || key.getKeyLength() == 32)) {
            md.n("Invalid key");
            return;
        }
        this.forEncryption = z;
        this.theInitialAEAD = associatedText;
        this.theNonce = iv;
        deriveKeys(key);
        resetStreams();
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b2) {
        checkAEADStatus(1);
        this.theAEADHasher.updateHash(b2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i2, int i3) {
        checkAEADStatus(i3);
        checkBuffer(bArr, i2, i3, false);
        this.theAEADHasher.updateHash(bArr, i2, i3);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b2, byte[] bArr, int i2) throws DataLengthException, IOException {
        checkStatus(1);
        if (!this.forEncryption) {
            this.theEncData.write(b2);
            return 0;
        }
        this.thePlain.write(b2);
        this.theDataHasher.updateHash(b2);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws DataLengthException, IOException {
        checkStatus(i3);
        checkBuffer(bArr, i2, i3, false);
        if (this.forEncryption) {
            this.thePlain.write(bArr, i2, i3);
            this.theDataHasher.updateHash(bArr, i2, i3);
        } else {
            this.theEncData.write(bArr, i2, i3);
        }
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        resetStreams();
    }

    private static void xorBlock(byte[] bArr, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[i4 + i2]);
        }
    }

    public GCMSIVBlockCipher(BlockCipher blockCipher) {
        this(blockCipher, new Tables4kGCMMultiplier());
    }

    public GCMSIVBlockCipher() {
        this(AESEngine.newInstance());
    }

    public class GCMSIVHasher {
        private int numActive;
        private long numHashed;
        private final byte[] theBuffer;
        private final byte[] theByte;

        private GCMSIVHasher() {
            this.theBuffer = new byte[16];
            this.theByte = new byte[1];
        }

        public void completeHash() {
            if (this.numActive > 0) {
                Arrays.fill(GCMSIVBlockCipher.this.theReverse, (byte) 0);
                GCMSIVBlockCipher.fillReverse(this.theBuffer, 0, this.numActive, GCMSIVBlockCipher.this.theReverse);
                GCMSIVBlockCipher gCMSIVBlockCipher = GCMSIVBlockCipher.this;
                gCMSIVBlockCipher.gHASH(gCMSIVBlockCipher.theReverse);
            }
        }

        public long getBytesProcessed() {
            return this.numHashed;
        }

        public void reset() {
            this.numActive = 0;
            this.numHashed = 0L;
        }

        public void updateHash(byte[] bArr, int i2, int i3) {
            int i4;
            int i5 = this.numActive;
            int i6 = 16 - i5;
            if (i5 <= 0 || i3 < i6) {
                i4 = i3;
                i6 = 0;
            } else {
                System.arraycopy(bArr, i2, this.theBuffer, i5, i6);
                GCMSIVBlockCipher.fillReverse(this.theBuffer, 0, 16, GCMSIVBlockCipher.this.theReverse);
                GCMSIVBlockCipher gCMSIVBlockCipher = GCMSIVBlockCipher.this;
                gCMSIVBlockCipher.gHASH(gCMSIVBlockCipher.theReverse);
                i4 = i3 - i6;
                this.numActive = 0;
            }
            while (i4 >= 16) {
                GCMSIVBlockCipher.fillReverse(bArr, i2 + i6, 16, GCMSIVBlockCipher.this.theReverse);
                GCMSIVBlockCipher gCMSIVBlockCipher2 = GCMSIVBlockCipher.this;
                gCMSIVBlockCipher2.gHASH(gCMSIVBlockCipher2.theReverse);
                i6 += 16;
                i4 -= 16;
            }
            if (i4 > 0) {
                System.arraycopy(bArr, i2 + i6, this.theBuffer, this.numActive, i4);
                this.numActive += i4;
            }
            this.numHashed += (long) i3;
        }

        public void updateHash(byte b2) {
            byte[] bArr = this.theByte;
            bArr[0] = b2;
            updateHash(bArr, 0, 1);
        }
    }
}
