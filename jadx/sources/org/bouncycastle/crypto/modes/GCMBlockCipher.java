package org.bouncycastle.crypto.modes;

import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import defpackage.pq0;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.modes.gcm.GCMExponentiator;
import org.bouncycastle.crypto.modes.gcm.GCMMultiplier;
import org.bouncycastle.crypto.modes.gcm.GCMUtil;
import org.bouncycastle.crypto.modes.gcm.Tables4kGCMMultiplier;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class GCMBlockCipher implements GCMModeCipher {
    private static final int BLOCK_SIZE = 16;
    private byte[] H;
    private byte[] J0;
    private byte[] S;
    private byte[] S_at;
    private byte[] S_atPre;
    private byte[] atBlock;
    private int atBlockPos;
    private long atLength;
    private long atLengthPre;
    private int blocksRemaining;
    private byte[] bufBlock;
    private int bufOff;
    private BlockCipher cipher;
    private byte[] counter;
    private GCMExponentiator exp;
    private boolean forEncryption;
    private byte[] initialAssociatedText;
    private boolean initialised;
    private byte[] lastKey;
    private byte[] macBlock;
    private int macSize;
    private GCMMultiplier multiplier;
    private byte[] nonce;
    private long totalLength;

    public GCMBlockCipher(BlockCipher blockCipher, GCMMultiplier gCMMultiplier) {
        if (blockCipher.getBlockSize() != 16) {
            md.n("cipher required with a block size of 16.");
            throw null;
        }
        gCMMultiplier = gCMMultiplier == null ? new Tables4kGCMMultiplier() : gCMMultiplier;
        this.cipher = blockCipher;
        this.multiplier = gCMMultiplier;
    }

    private void checkStatus() {
        if (this.initialised) {
            return;
        }
        md.k(this.forEncryption ? "GCM cipher cannot be reused for encryption" : "GCM cipher needs to be initialised");
    }

    private void decryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3) {
        if (bArr2.length - i3 < 16) {
            mt.n("Output buffer too short");
            return;
        }
        if (this.totalLength == 0) {
            initCipher();
        }
        byte[] bArr3 = new byte[16];
        getNextCTRBlock(bArr3);
        gHASHBlock(this.S, bArr, i2);
        GCMUtil.xor(bArr3, 0, bArr, i2, bArr2, i3);
        this.totalLength += 16;
    }

    private void encryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3) {
        if (bArr2.length - i3 < 16) {
            mt.n("Output buffer too short");
            return;
        }
        if (this.totalLength == 0) {
            initCipher();
        }
        byte[] bArr3 = new byte[16];
        getNextCTRBlock(bArr3);
        GCMUtil.xor(bArr3, bArr, i2);
        gHASHBlock(this.S, bArr3);
        System.arraycopy(bArr3, 0, bArr2, i3, 16);
        this.totalLength += 16;
    }

    private void gHASH(byte[] bArr, byte[] bArr2, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 16) {
            gHASHPartial(bArr, bArr2, i3, Math.min(i2 - i3, 16));
        }
    }

    private void gHASHBlock(byte[] bArr, byte[] bArr2) {
        GCMUtil.xor(bArr, bArr2);
        this.multiplier.multiplyH(bArr);
    }

    private void gHASHPartial(byte[] bArr, byte[] bArr2, int i2, int i3) {
        GCMUtil.xor(bArr, bArr2, i2, i3);
        this.multiplier.multiplyH(bArr);
    }

    private void getNextCTRBlock(byte[] bArr) {
        int i2 = this.blocksRemaining;
        if (i2 == 0) {
            md.k("Attempt to process too many blocks");
            return;
        }
        this.blocksRemaining = i2 - 1;
        byte[] bArr2 = this.counter;
        int i3 = (bArr2[15] & 255) + 1;
        bArr2[15] = (byte) i3;
        int i4 = (i3 >>> 8) + (bArr2[14] & 255);
        bArr2[14] = (byte) i4;
        int i5 = (i4 >>> 8) + (bArr2[13] & 255);
        bArr2[13] = (byte) i5;
        bArr2[12] = (byte) ((i5 >>> 8) + (bArr2[12] & 255));
        this.cipher.processBlock(bArr2, 0, bArr, 0);
    }

    private void initCipher() {
        if (this.atLength > 0) {
            System.arraycopy(this.S_at, 0, this.S_atPre, 0, 16);
            this.atLengthPre = this.atLength;
        }
        int i2 = this.atBlockPos;
        if (i2 > 0) {
            gHASHPartial(this.S_atPre, this.atBlock, 0, i2);
            this.atLengthPre += (long) this.atBlockPos;
        }
        if (this.atLengthPre > 0) {
            System.arraycopy(this.S_atPre, 0, this.S, 0, 16);
        }
    }

    public static GCMModeCipher newInstance(BlockCipher blockCipher) {
        return new GCMBlockCipher(blockCipher);
    }

    private void processPartial(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        byte[] bArr3 = new byte[16];
        getNextCTRBlock(bArr3);
        if (this.forEncryption) {
            GCMUtil.xor(bArr, i2, bArr3, 0, i3);
            gHASHPartial(this.S, bArr, i2, i3);
        } else {
            gHASHPartial(this.S, bArr, i2, i3);
            GCMUtil.xor(bArr, i2, bArr3, 0, i3);
        }
        System.arraycopy(bArr, i2, bArr2, i4, i3);
        this.totalLength += (long) i3;
    }

    private void reset(boolean z) {
        this.cipher.reset();
        this.S = new byte[16];
        this.S_at = new byte[16];
        this.S_atPre = new byte[16];
        this.atBlock = new byte[16];
        this.atBlockPos = 0;
        this.atLength = 0L;
        this.atLengthPre = 0L;
        this.counter = Arrays.clone(this.J0);
        this.blocksRemaining = -2;
        this.bufOff = 0;
        this.totalLength = 0L;
        byte[] bArr = this.bufBlock;
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
        if (z) {
            this.macBlock = null;
        }
        if (this.forEncryption) {
            this.initialised = false;
            return;
        }
        byte[] bArr2 = this.initialAssociatedText;
        if (bArr2 != null) {
            processAADBytes(bArr2, 0, bArr2.length);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        defpackage.mt.n("Output buffer too short");
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
    
        if ((r12.length - r13) >= r0) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002e, code lost:
    
        if (r8 <= 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0030, code lost:
    
        r5 = r11;
        r9 = r12;
        r10 = r13;
        r5.processPartial(r11.bufBlock, 0, r8, r9, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003a, code lost:
    
        r5 = r11;
        r9 = r12;
        r10 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
    
        r11 = r5.atLength;
        r13 = r5.atBlockPos;
        r11 = r11 + ((long) r13);
        r5.atLength = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004e, code lost:
    
        if (r11 <= r5.atLengthPre) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
    
        if (r13 <= 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
    
        r5.gHASHPartial(r5.S_at, r5.atBlock, 0, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005d, code lost:
    
        if (r5.atLengthPre <= 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005f, code lost:
    
        org.bouncycastle.crypto.modes.gcm.GCMUtil.xor(r5.S_at, r5.S_atPre);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
    
        r2 = ((r5.totalLength * 8) + 127) >>> 7;
        r11 = new byte[16];
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0072, code lost:
    
        if (r5.exp != null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
    
        r13 = new org.bouncycastle.crypto.modes.gcm.BasicGCMExponentiator();
        r5.exp = r13;
        r13.init(r5.H);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0080, code lost:
    
        r5.exp.exponentiateX(r2, r11);
        org.bouncycastle.crypto.modes.gcm.GCMUtil.multiply(r5.S_at, r11);
        org.bouncycastle.crypto.modes.gcm.GCMUtil.xor(r5.S, r5.S_at);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0091, code lost:
    
        r11 = new byte[16];
        org.bouncycastle.util.Pack.longToBigEndian(r5.atLength * 8, r11, 0);
        org.bouncycastle.util.Pack.longToBigEndian(r5.totalLength * 8, r11, 8);
        r5.gHASHBlock(r5.S, r11);
        r11 = new byte[16];
        r5.cipher.processBlock(r5.J0, 0, r11, 0);
        org.bouncycastle.crypto.modes.gcm.GCMUtil.xor(r11, r5.S);
        r12 = r5.macSize;
        r13 = new byte[r12];
        r5.macBlock = r13;
        java.lang.System.arraycopy(r11, 0, r13, 0, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bf, code lost:
    
        if (r5.forEncryption == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c1, code lost:
    
        java.lang.System.arraycopy(r5.macBlock, 0, r9, r10 + r5.bufOff, r5.macSize);
        r8 = r8 + r5.macSize;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d0, code lost:
    
        r11 = r5.macSize;
        r12 = new byte[r11];
        java.lang.System.arraycopy(r5.bufBlock, r8, r12, 0, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00df, code lost:
    
        if (org.bouncycastle.util.Arrays.constantTimeAreEqual(r5.macBlock, r12) == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e1, code lost:
    
        r5.reset(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e4, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00e5, code lost:
    
        r11 = "mac check in GCM failed";
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
    
        if ((r12.length - r13) >= (r11.macSize + r0)) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
    
        r8 = r0;
     */
    @Override // org.bouncycastle.crypto.modes.AEADCipher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int doFinal(byte[] r12, int r13) throws org.bouncycastle.crypto.InvalidCipherTextException, java.lang.IllegalStateException {
        /*
            Method dump skipped, instruction units count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.modes.GCMBlockCipher.doFinal(byte[], int):int");
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/GCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        byte[] bArr = this.macBlock;
        return bArr == null ? new byte[this.macSize] : Arrays.clone(bArr);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i2) {
        int i3 = i2 + this.bufOff;
        boolean z = this.forEncryption;
        int i4 = this.macSize;
        if (z) {
            return i3 + i4;
        }
        if (i3 < i4) {
            return 0;
        }
        return i3 - i4;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i2) {
        int i3 = i2 + this.bufOff;
        if (!this.forEncryption) {
            int i4 = this.macSize;
            if (i3 < i4) {
                return 0;
            }
            i3 -= i4;
        }
        return i3 - (i3 % 16);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        byte[] iv;
        KeyParameter key;
        byte[] bArr;
        this.forEncryption = z;
        this.macBlock = null;
        this.initialised = true;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            iv = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize < 32 || macSize > 128 || macSize % 8 != 0) {
                md.n(pq0.k(macSize, "Invalid value for MAC size: "));
                return;
            } else {
                this.macSize = macSize / 8;
                key = aEADParameters.getKey();
            }
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                md.n("invalid parameters passed to GCM");
                return;
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            iv = parametersWithIV.getIV();
            this.initialAssociatedText = null;
            this.macSize = 16;
            key = (KeyParameter) parametersWithIV.getParameters();
        }
        this.bufBlock = new byte[z ? 16 : this.macSize + 16];
        if (iv == null || iv.length < 1) {
            md.n("IV must be at least 1 byte");
            return;
        }
        if (z && (bArr = this.nonce) != null && Arrays.areEqual(bArr, iv)) {
            if (key == null) {
                md.n("cannot reuse nonce for GCM encryption");
                return;
            }
            byte[] bArr2 = this.lastKey;
            if (bArr2 != null && Arrays.areEqual(bArr2, key.getKey())) {
                md.n("cannot reuse nonce for GCM encryption");
                return;
            }
        }
        this.nonce = iv;
        if (key != null) {
            this.lastKey = key.getKey();
        }
        if (key != null) {
            this.cipher.init(true, key);
            byte[] bArr3 = new byte[16];
            this.H = bArr3;
            this.cipher.processBlock(bArr3, 0, bArr3, 0);
            this.multiplier.init(this.H);
            this.exp = null;
        } else if (this.H == null) {
            md.n("Key must be specified in initial init");
            return;
        }
        byte[] bArr4 = new byte[16];
        this.J0 = bArr4;
        byte[] bArr5 = this.nonce;
        if (bArr5.length == 12) {
            System.arraycopy(bArr5, 0, bArr4, 0, bArr5.length);
            this.J0[15] = 1;
        } else {
            gHASH(bArr4, bArr5, bArr5.length);
            byte[] bArr6 = new byte[16];
            Pack.longToBigEndian(((long) this.nonce.length) * 8, bArr6, 8);
            gHASHBlock(this.J0, bArr6);
        }
        this.S = new byte[16];
        this.S_at = new byte[16];
        this.S_atPre = new byte[16];
        this.atBlock = new byte[16];
        this.atBlockPos = 0;
        this.atLength = 0L;
        this.atLengthPre = 0L;
        this.counter = Arrays.clone(this.J0);
        this.blocksRemaining = -2;
        this.bufOff = 0;
        this.totalLength = 0L;
        byte[] bArr7 = this.initialAssociatedText;
        if (bArr7 != null) {
            processAADBytes(bArr7, 0, bArr7.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b2) {
        checkStatus();
        byte[] bArr = this.atBlock;
        int i2 = this.atBlockPos;
        bArr[i2] = b2;
        int i3 = i2 + 1;
        this.atBlockPos = i3;
        if (i3 == 16) {
            gHASHBlock(this.S_at, bArr);
            this.atBlockPos = 0;
            this.atLength += 16;
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i2, int i3) {
        checkStatus();
        int i4 = this.atBlockPos;
        if (i4 > 0) {
            int i5 = 16 - i4;
            byte[] bArr2 = this.atBlock;
            if (i3 < i5) {
                System.arraycopy(bArr, i2, bArr2, i4, i3);
                this.atBlockPos += i3;
                return;
            } else {
                System.arraycopy(bArr, i2, bArr2, i4, i5);
                gHASHBlock(this.S_at, this.atBlock);
                this.atLength += 16;
                i2 += i5;
                i3 -= i5;
            }
        }
        int i6 = i3 + i2;
        int i7 = i6 - 16;
        while (i2 <= i7) {
            gHASHBlock(this.S_at, bArr, i2);
            this.atLength += 16;
            i2 += 16;
        }
        int i8 = i6 - i2;
        this.atBlockPos = i8;
        System.arraycopy(bArr, i2, this.atBlock, 0, i8);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b2, byte[] bArr, int i2) throws DataLengthException {
        checkStatus();
        byte[] bArr2 = this.bufBlock;
        int i3 = this.bufOff;
        bArr2[i3] = b2;
        int i4 = i3 + 1;
        this.bufOff = i4;
        if (i4 != bArr2.length) {
            return 0;
        }
        if (this.forEncryption) {
            encryptBlock(bArr2, 0, bArr, i2);
            this.bufOff = 0;
        } else {
            decryptBlock(bArr2, 0, bArr, i2);
            byte[] bArr3 = this.bufBlock;
            System.arraycopy(bArr3, 16, bArr3, 0, this.macSize);
            this.bufOff = this.macSize;
        }
        return 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws DataLengthException {
        int i5;
        checkStatus();
        if (bArr.length - i2 < i3) {
            b21.q("Input buffer too short");
            return 0;
        }
        int i6 = 16;
        if (this.forEncryption) {
            int i7 = this.bufOff;
            if (i7 > 0) {
                int i8 = 16 - i7;
                byte[] bArr3 = this.bufBlock;
                if (i3 < i8) {
                    System.arraycopy(bArr, i2, bArr3, i7, i3);
                    this.bufOff += i3;
                    return 0;
                }
                System.arraycopy(bArr, i2, bArr3, i7, i8);
                encryptBlock(this.bufBlock, 0, bArr2, i4);
                i2 += i8;
                i3 -= i8;
            } else {
                i6 = 0;
            }
            int i9 = i3 + i2;
            int i10 = i9 - 16;
            while (i2 <= i10) {
                encryptBlock(bArr, i2, bArr2, i4 + i6);
                i2 += 16;
                i6 += 16;
            }
            int i11 = i9 - i2;
            this.bufOff = i11;
            System.arraycopy(bArr, i2, this.bufBlock, 0, i11);
            return i6;
        }
        byte[] bArr4 = this.bufBlock;
        int length = bArr4.length;
        int i12 = this.bufOff;
        int i13 = length - i12;
        if (i3 < i13) {
            System.arraycopy(bArr, i2, bArr4, i12, i3);
            this.bufOff += i3;
            return 0;
        }
        if (i12 >= 16) {
            decryptBlock(bArr4, 0, bArr2, i4);
            byte[] bArr5 = this.bufBlock;
            int i14 = this.bufOff - 16;
            this.bufOff = i14;
            System.arraycopy(bArr5, 16, bArr5, 0, i14);
            if (i3 < i13 + 16) {
                System.arraycopy(bArr, i2, this.bufBlock, this.bufOff, i3);
                this.bufOff += i3;
                return 16;
            }
            i5 = 16;
        } else {
            i5 = 0;
        }
        byte[] bArr6 = this.bufBlock;
        int length2 = (i3 + i2) - bArr6.length;
        int i15 = this.bufOff;
        int i16 = 16 - i15;
        System.arraycopy(bArr, i2, bArr6, i15, i16);
        decryptBlock(this.bufBlock, 0, bArr2, i4 + i5);
        int i17 = i2 + i16;
        int i18 = i5 + 16;
        while (i17 <= length2) {
            decryptBlock(bArr, i17, bArr2, i4 + i18);
            i17 += 16;
            i18 += 16;
        }
        byte[] bArr7 = this.bufBlock;
        int length3 = (bArr7.length + length2) - i17;
        this.bufOff = length3;
        System.arraycopy(bArr, i17, bArr7, 0, length3);
        return i18;
    }

    public static GCMModeCipher newInstance(BlockCipher blockCipher, GCMMultiplier gCMMultiplier) {
        return new GCMBlockCipher(blockCipher, gCMMultiplier);
    }

    private void gHASHBlock(byte[] bArr, byte[] bArr2, int i2) {
        GCMUtil.xor(bArr, bArr2, i2);
        this.multiplier.multiplyH(bArr);
    }

    public GCMBlockCipher(BlockCipher blockCipher) {
        this(blockCipher, null);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
    }
}
