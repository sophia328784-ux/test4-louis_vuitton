package org.bouncycastle.pqc.crypto.sphincs;

import defpackage.md;
import okhttp3.internal.ws.RealWebSocket;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SPHINCS256Signer implements MessageSigner {
    private final HashFunctions hashFunctions;
    private byte[] keyData;

    public SPHINCS256Signer(Digest digest, Digest digest2) {
        if (digest.getDigestSize() != 32) {
            md.n("n-digest needs to produce 32 bytes of output");
            throw null;
        }
        if (digest2.getDigestSize() == 64) {
            this.hashFunctions = new HashFunctions(digest, digest2);
        } else {
            md.n("2n-digest needs to produce 64 bytes of output");
            throw null;
        }
    }

    public static void compute_authpath_wots(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, int i2, Tree.leafaddr leafaddrVar, byte[] bArr3, byte[] bArr4, int i3) {
        long j2;
        long j3;
        Tree.leafaddr leafaddrVar2 = new Tree.leafaddr(leafaddrVar);
        byte[] bArr5 = new byte[2048];
        byte[] bArr6 = new byte[1024];
        byte[] bArr7 = new byte[68608];
        long j4 = 0;
        leafaddrVar2.subleaf = 0L;
        while (true) {
            long j5 = leafaddrVar2.subleaf;
            j2 = 32;
            if (j5 >= 32) {
                break;
            }
            Seed.get_seed(hashFunctions, bArr6, (int) (j5 * 32), bArr3, leafaddrVar2);
            leafaddrVar2.subleaf++;
        }
        Wots wots = new Wots();
        leafaddrVar2.subleaf = 0L;
        while (true) {
            long j6 = leafaddrVar2.subleaf;
            j3 = j2;
            if (j6 >= j2) {
                break;
            }
            byte[] bArr8 = bArr7;
            wots.wots_pkgen(hashFunctions, bArr8, (int) (j6 * 2144), bArr6, (int) (j6 * j3), bArr4, 0);
            bArr7 = bArr8;
            leafaddrVar2.subleaf++;
            j2 = j3;
        }
        while (true) {
            leafaddrVar2.subleaf = j4;
            long j7 = leafaddrVar2.subleaf;
            if (j7 >= j3) {
                break;
            }
            Tree.l_tree(hashFunctions, bArr5, (int) ((j7 * j3) + RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE), bArr7, (int) (j7 * 2144), bArr4, 0);
            j4 = leafaddrVar2.subleaf + 1;
        }
        int i4 = 0;
        for (int i5 = 32; i5 > 0; i5 >>>= 1) {
            for (int i6 = 0; i6 < i5; i6 += 2) {
                hashFunctions.hash_2n_n_mask(bArr5, ((i6 >>> 1) * 32) + ((i5 >>> 1) * 32), bArr5, (i6 * 32) + (i5 * 32), bArr4, (i4 + 7) * 64);
            }
            i4++;
        }
        int i7 = (int) leafaddrVar.subleaf;
        for (int i8 = 0; i8 < i3; i8++) {
            System.arraycopy(bArr5, (((i7 >>> i8) ^ 1) * 32) + ((32 >>> i8) * 32), bArr2, (i8 * 32) + i2, 32);
        }
        System.arraycopy(bArr5, 32, bArr, 0, 32);
    }

    public static void validate_authpath(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, int i2, byte[] bArr3, int i3, byte[] bArr4, int i4) {
        byte[] bArr5 = new byte[64];
        if ((i2 & 1) != 0) {
            for (int i5 = 0; i5 < 32; i5++) {
                bArr5[i5 + 32] = bArr2[i5];
            }
            for (int i6 = 0; i6 < 32; i6++) {
                bArr5[i6] = bArr3[i3 + i6];
            }
        } else {
            for (int i7 = 0; i7 < 32; i7++) {
                bArr5[i7] = bArr2[i7];
            }
            for (int i8 = 0; i8 < 32; i8++) {
                bArr5[i8 + 32] = bArr3[i3 + i8];
            }
        }
        int i9 = i3 + 32;
        int i10 = i2;
        int i11 = 0;
        while (i11 < i4 - 1) {
            int i12 = i10 >>> 1;
            if ((i12 & 1) != 0) {
                hashFunctions.hash_2n_n_mask(bArr5, 32, bArr5, 0, bArr4, (i11 + 7) * 64);
                for (int i13 = 0; i13 < 32; i13++) {
                    bArr5[i13] = bArr3[i9 + i13];
                }
            } else {
                hashFunctions.hash_2n_n_mask(bArr5, 0, bArr5, 0, bArr4, (i11 + 7) * 64);
                for (int i14 = 0; i14 < 32; i14++) {
                    bArr5[i14 + 32] = bArr3[i9 + i14];
                }
            }
            i9 += 32;
            i11++;
            i10 = i12;
        }
        hashFunctions.hash_2n_n_mask(bArr, 0, bArr5, 0, bArr4, (i4 + 6) * 64);
    }

    private void zerobytes(byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 != i3; i4++) {
            bArr[i2 + i4] = 0;
        }
    }

    public byte[] crypto_sign(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[41000];
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[64];
        long[] jArr = new long[8];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[32];
        byte[] bArr8 = new byte[1024];
        byte[] bArr9 = new byte[1088];
        for (int i2 = 0; i2 < 1088; i2++) {
            bArr9[i2] = bArr2[i2];
        }
        System.arraycopy(bArr9, 1056, bArr3, 40968, 32);
        Digest messageHash = hashFunctions.getMessageHash();
        byte[] bArr10 = new byte[messageHash.getDigestSize()];
        messageHash.update(bArr3, 40968, 32);
        messageHash.update(bArr, 0, bArr.length);
        messageHash.doFinal(bArr10, 0);
        zerobytes(bArr3, 40968, 32);
        for (int i3 = 0; i3 != 8; i3++) {
            jArr[i3] = Pack.littleEndianToLong(bArr10, i3 * 8);
        }
        long j2 = jArr[0];
        long j3 = j2 & 1152921504606846975L;
        System.arraycopy(bArr10, 16, bArr4, 0, 32);
        System.arraycopy(bArr4, 0, bArr3, 39912, 32);
        Tree.leafaddr leafaddrVar = new Tree.leafaddr();
        leafaddrVar.level = 11;
        leafaddrVar.subtree = 0L;
        leafaddrVar.subleaf = 0L;
        System.arraycopy(bArr9, 32, bArr3, 39944, 1024);
        HashFunctions hashFunctions2 = hashFunctions;
        Tree.treehash(hashFunctions2, bArr3, 40968, 5, bArr9, leafaddrVar, bArr3, 39944);
        byte[] bArr11 = bArr9;
        Digest messageHash2 = hashFunctions2.getMessageHash();
        messageHash2.update(bArr3, 39912, 1088);
        messageHash2.update(bArr, 0, bArr.length);
        messageHash2.doFinal(bArr5, 0);
        Tree.leafaddr leafaddrVar2 = new Tree.leafaddr();
        int i4 = 12;
        leafaddrVar2.level = 12;
        leafaddrVar2.subleaf = (int) (j2 & 31);
        leafaddrVar2.subtree = j3 >>> 5;
        int i5 = 32;
        for (int i6 = 0; i6 < 32; i6++) {
            bArr3[i6] = bArr4[i6];
        }
        System.arraycopy(bArr11, 32, bArr8, 0, 1024);
        int i7 = 0;
        while (i7 < 8) {
            bArr3[i5 + i7] = (byte) ((j3 >>> (i7 * 8)) & 255);
            i7++;
            i5 = 32;
        }
        Seed.get_seed(hashFunctions2, bArr7, 0, bArr11, leafaddrVar2);
        new Horst();
        byte[] bArr12 = bArr8;
        byte[] bArr13 = bArr6;
        byte[] bArr14 = bArr7;
        int i8 = 0;
        int iHorst_sign = 40 + Horst.horst_sign(hashFunctions2, bArr3, 40, bArr13, bArr14, bArr12, bArr5);
        Wots wots = new Wots();
        int i9 = 0;
        while (i9 < i4) {
            leafaddrVar2.level = i9;
            Seed.get_seed(hashFunctions2, bArr14, i8, bArr11, leafaddrVar2);
            byte[] bArr15 = bArr3;
            HashFunctions hashFunctions3 = hashFunctions2;
            Wots wots2 = wots;
            byte[] bArr16 = bArr12;
            byte[] bArr17 = bArr14;
            byte[] bArr18 = bArr13;
            int i10 = iHorst_sign;
            wots2.wots_sign(hashFunctions3, bArr15, i10, bArr18, bArr17, bArr16);
            byte[] bArr19 = bArr11;
            Tree.leafaddr leafaddrVar3 = leafaddrVar2;
            compute_authpath_wots(hashFunctions, bArr18, bArr15, i10 + 2144, leafaddrVar3, bArr19, bArr16, 5);
            bArr13 = bArr18;
            bArr3 = bArr15;
            iHorst_sign = i10 + 2304;
            long j4 = leafaddrVar3.subtree;
            leafaddrVar3.subleaf = (int) (j4 & 31);
            leafaddrVar3.subtree = j4 >>> 5;
            i9++;
            leafaddrVar2 = leafaddrVar3;
            bArr11 = bArr19;
            bArr12 = bArr16;
            bArr14 = bArr17;
            i8 = 0;
            i4 = 12;
            hashFunctions2 = hashFunctions;
            wots = wots2;
        }
        zerobytes(bArr11, i8, 1088);
        return bArr3;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        return crypto_sign(this.hashFunctions, bArr, this.keyData);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!z) {
            this.keyData = ((SPHINCSPublicKeyParameters) cipherParameters).getKeyData();
        } else if (cipherParameters instanceof ParametersWithRandom) {
            this.keyData = ((SPHINCSPrivateKeyParameters) ((ParametersWithRandom) cipherParameters).getParameters()).getKeyData();
        } else {
            this.keyData = ((SPHINCSPrivateKeyParameters) cipherParameters).getKeyData();
        }
    }

    public boolean verify(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[2144];
        byte[] bArr5 = new byte[32];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[41000];
        byte[] bArr8 = new byte[1056];
        if (bArr2.length != 41000) {
            md.n("signature wrong size");
            return false;
        }
        byte[] bArr9 = new byte[64];
        for (int i2 = 0; i2 < 1056; i2++) {
            bArr8[i2] = bArr3[i2];
        }
        byte[] bArr10 = new byte[32];
        for (int i3 = 0; i3 < 32; i3++) {
            bArr10[i3] = bArr2[i3];
        }
        System.arraycopy(bArr2, 0, bArr7, 0, 41000);
        Digest messageHash = hashFunctions.getMessageHash();
        messageHash.update(bArr10, 0, 32);
        messageHash.update(bArr8, 0, 1056);
        messageHash.update(bArr, 0, bArr.length);
        messageHash.doFinal(bArr9, 0);
        long j2 = 0;
        for (int i4 = 0; i4 < 8; i4++) {
            j2 ^= ((long) (bArr7[32 + i4] & 255)) << (i4 * 8);
        }
        new Horst();
        Horst.horst_verify(hashFunctions, bArr6, bArr7, 40, bArr8, bArr9);
        Wots wots = new Wots();
        int i5 = 13352;
        int i6 = 0;
        while (i6 < 12) {
            wots.wots_verify(hashFunctions, bArr4, bArr7, i5, bArr6, bArr8);
            int i7 = i5;
            byte[] bArr11 = bArr4;
            byte[] bArr12 = bArr5;
            Tree.l_tree(hashFunctions, bArr12, 0, bArr11, 0, bArr8, 0);
            bArr4 = bArr11;
            byte[] bArr13 = bArr7;
            byte[] bArr14 = bArr6;
            validate_authpath(hashFunctions, bArr14, bArr12, (int) (31 & j2), bArr13, i7 + 2144, bArr8, 5);
            bArr7 = bArr13;
            bArr6 = bArr14;
            j2 >>= 5;
            i5 = i7 + 2304;
            i6++;
            bArr5 = bArr12;
            wots = wots;
        }
        boolean z = true;
        for (int i8 = 0; i8 < 32; i8++) {
            if (bArr6[i8] != bArr8[i8 + 1024]) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        return verify(this.hashFunctions, bArr, bArr2, this.keyData);
    }
}
