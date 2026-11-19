package org.bouncycastle.crypto.digests;

import defpackage.md;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class Blake2spDigest implements ExtendedDigest {
    private int depth;
    private int digestLength;
    private int fanout;
    private long innerHashLength;
    private Blake2sDigest root;
    private int bufferPos = 0;
    private int keyLength = 0;
    private int nodeOffset = 0;
    private Blake2sDigest[] S = new Blake2sDigest[8];
    private byte[] salt = null;
    private byte[] key = null;
    private final int BLAKE2S_BLOCKBYTES = 64;
    private final int BLAKE2S_KEYBYTES = 32;
    private final int BLAKE2S_OUTBYTES = 32;
    private final int PARALLELISM_DEGREE = 8;
    private final byte[] singleByte = new byte[1];
    private byte[] param = new byte[32];
    private byte[] buffer = new byte[512];

    public Blake2spDigest(byte[] bArr) {
        init(bArr);
    }

    private void init(byte[] bArr) {
        int i2;
        if (bArr != null && bArr.length > 0) {
            int length = bArr.length;
            this.keyLength = length;
            if (length > 32) {
                md.n("Keys > 32 bytes are not supported");
                return;
            }
            this.key = Arrays.clone(bArr);
        }
        this.bufferPos = 0;
        this.digestLength = 32;
        this.fanout = 8;
        this.depth = 2;
        this.innerHashLength = 32L;
        byte[] bArr2 = this.param;
        bArr2[0] = (byte) 32;
        bArr2[1] = (byte) this.keyLength;
        bArr2[2] = (byte) 8;
        bArr2[3] = (byte) 2;
        Pack.intToLittleEndian(0, bArr2, 8);
        byte[] bArr3 = this.param;
        bArr3[14] = 1;
        bArr3[15] = (byte) this.innerHashLength;
        this.root = new Blake2sDigest((byte[]) null, bArr3);
        Pack.intToLittleEndian(this.nodeOffset, this.param, 8);
        this.param[14] = 0;
        for (int i3 = 0; i3 < 8; i3++) {
            Pack.intToLittleEndian(i3, this.param, 8);
            this.S[i3] = new Blake2sDigest((byte[]) null, this.param);
        }
        this.root.setAsLastNode();
        this.S[7].setAsLastNode();
        if (bArr == null || (i2 = this.keyLength) <= 0) {
            return;
        }
        byte[] bArr4 = new byte[64];
        System.arraycopy(bArr, 0, bArr4, 0, i2);
        for (int i4 = 0; i4 < 8; i4++) {
            this.S[i4].update(bArr4, 0, 64);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 8, 32);
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = this.bufferPos;
            int i5 = i3 * 64;
            if (i4 > i5) {
                int i6 = i4 - i5;
                if (i6 > 64) {
                    i6 = 64;
                }
                this.S[i3].update(this.buffer, i5, i6);
            }
            this.S[i3].doFinal(bArr2[i3], 0);
        }
        int i7 = 0;
        while (true) {
            Blake2sDigest blake2sDigest = this.root;
            if (i7 >= 8) {
                int iDoFinal = blake2sDigest.doFinal(bArr, i2);
                reset();
                return iDoFinal;
            }
            blake2sDigest.update(bArr2[i7], 0, 32);
            i7++;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "BLAKE2sp";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.bufferPos = 0;
        this.digestLength = 32;
        this.root.reset();
        for (int i2 = 0; i2 < 8; i2++) {
            this.S[i2].reset();
        }
        this.root.setAsLastNode();
        this.S[7].setAsLastNode();
        byte[] bArr = this.key;
        if (bArr != null) {
            byte[] bArr2 = new byte[64];
            System.arraycopy(bArr, 0, bArr2, 0, this.keyLength);
            for (int i3 = 0; i3 < 8; i3++) {
                this.S[i3].update(bArr2, 0, 64);
            }
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i2, int i3) {
        int i4 = this.bufferPos;
        int i5 = 512 - i4;
        if (i4 != 0 && i3 >= i5) {
            System.arraycopy(bArr, i2, this.buffer, i4, i5);
            for (int i6 = 0; i6 < 8; i6++) {
                this.S[i6].update(this.buffer, i6 * 64, 64);
            }
            i2 += i5;
            i3 -= i5;
            i4 = 0;
        }
        for (int i7 = 0; i7 < 8; i7++) {
            int i8 = (i7 * 64) + i2;
            for (int i9 = i3; i9 >= 512; i9 -= 512) {
                this.S[i7].update(bArr, i8, 64);
                i8 += 512;
            }
        }
        int i10 = i3 % 512;
        int i11 = (i3 - i10) + i2;
        if (i10 > 0) {
            System.arraycopy(bArr, i11, this.buffer, i4, i10);
        }
        this.bufferPos = i4 + i10;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b2) {
        byte[] bArr = this.singleByte;
        bArr[0] = b2;
        update(bArr, 0, 1);
    }
}
