package org.bouncycastle.pqc.crypto.falcon;

import defpackage.cj;
import defpackage.md;
import defpackage.pq0;
import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class FalconNIST {
    int CRYPTO_BYTES;
    private int CRYPTO_PUBLICKEYBYTES;
    private int CRYPTO_SECRETKEYBYTES;
    int LOGN;
    private int N;
    int NONCELEN;
    private FalconCodec codec = new FalconCodec();
    private SecureRandom rand;

    public FalconNIST(int i2, int i3, SecureRandom secureRandom) {
        this.rand = secureRandom;
        this.LOGN = i2;
        this.NONCELEN = i3;
        int i4 = 1 << i2;
        this.N = i4;
        this.CRYPTO_PUBLICKEYBYTES = pq0.c(i4, 14, 8, 1);
        if (i2 == 10) {
            this.CRYPTO_SECRETKEYBYTES = 2305;
            this.CRYPTO_BYTES = 1330;
            return;
        }
        if (i2 == 9 || i2 == 8) {
            this.CRYPTO_SECRETKEYBYTES = ((i4 * 12) / 8) + 1 + i4;
            this.CRYPTO_BYTES = 690;
        } else if (i2 == 7 || i2 == 6) {
            this.CRYPTO_SECRETKEYBYTES = ((i4 * 14) / 8) + 1 + i4;
            this.CRYPTO_BYTES = 690;
        } else {
            this.CRYPTO_SECRETKEYBYTES = cj.a(i4, 2, 1, i4);
            this.CRYPTO_BYTES = 690;
        }
    }

    public byte[] crypto_sign(boolean z, byte[] bArr, byte[] bArr2, int i2, int i3, byte[] bArr3, int i4) {
        int iComp_encode;
        byte[] bArr4;
        int i5 = this.N;
        byte[] bArr5 = new byte[i5];
        byte[] bArr6 = new byte[i5];
        byte[] bArr7 = new byte[i5];
        byte[] bArr8 = new byte[i5];
        short[] sArr = new short[i5];
        short[] sArr2 = new short[i5];
        byte[] bArr9 = new byte[48];
        byte[] bArr10 = new byte[this.NONCELEN];
        SHAKE256 shake256 = new SHAKE256();
        FalconSign falconSign = new FalconSign();
        FalconVrfy falconVrfy = new FalconVrfy();
        FalconCommon falconCommon = new FalconCommon();
        FalconCodec falconCodec = this.codec;
        int i6 = this.LOGN;
        int iTrim_i8_decode = falconCodec.trim_i8_decode(bArr5, 0, i6, falconCodec.max_fg_bits[i6], bArr3, i4, this.CRYPTO_SECRETKEYBYTES);
        if (iTrim_i8_decode == 0) {
            md.k("f decode failed");
            return null;
        }
        FalconCodec falconCodec2 = this.codec;
        int i7 = this.LOGN;
        int iTrim_i8_decode2 = falconCodec2.trim_i8_decode(bArr6, 0, i7, falconCodec2.max_fg_bits[i7], bArr3, i4 + iTrim_i8_decode, this.CRYPTO_SECRETKEYBYTES - iTrim_i8_decode);
        if (iTrim_i8_decode2 == 0) {
            md.k("g decode failed");
            return null;
        }
        int i8 = iTrim_i8_decode + iTrim_i8_decode2;
        FalconCodec falconCodec3 = this.codec;
        int i9 = this.LOGN;
        int iTrim_i8_decode3 = falconCodec3.trim_i8_decode(bArr7, 0, i9, falconCodec3.max_FG_bits[i9], bArr3, i4 + i8, this.CRYPTO_SECRETKEYBYTES - i8);
        if (iTrim_i8_decode3 == 0) {
            md.n("F decode failed");
            return null;
        }
        if (i8 + iTrim_i8_decode3 != this.CRYPTO_SECRETKEYBYTES - 1) {
            md.k("full key not used");
            return null;
        }
        if (!falconVrfy.complete_private(bArr8, 0, bArr5, 0, bArr6, 0, bArr7, 0, this.LOGN, new short[this.N * 2], 0)) {
            md.k("complete_private failed");
            return null;
        }
        this.rand.nextBytes(bArr10);
        shake256.inner_shake256_init();
        shake256.inner_shake256_inject(bArr10, 0, this.NONCELEN);
        shake256.inner_shake256_inject(bArr2, i2, i3);
        shake256.i_shake256_flip();
        falconCommon.hash_to_point_vartime(shake256, sArr2, 0, this.LOGN);
        this.rand.nextBytes(bArr9);
        shake256.inner_shake256_init();
        shake256.inner_shake256_inject(bArr9, 0, 48);
        shake256.i_shake256_flip();
        falconSign.sign_dyn(sArr, 0, shake256, bArr5, 0, bArr6, 0, bArr7, 0, bArr8, 0, sArr2, 0, this.LOGN, new FalconFPR[this.N * 10], 0);
        int i10 = (this.CRYPTO_BYTES - 2) - this.NONCELEN;
        byte[] bArr11 = new byte[i10];
        if (z) {
            int i11 = this.LOGN;
            bArr11[0] = (byte) (i11 + 32);
            int iComp_encode2 = this.codec.comp_encode(bArr11, 1, i10 - 1, sArr, 0, i11);
            if (iComp_encode2 == 0) {
                md.k("signature failed to generate");
                return null;
            }
            iComp_encode = iComp_encode2 + 1;
            bArr4 = bArr11;
        } else {
            iComp_encode = this.codec.comp_encode(bArr11, 0, i10, sArr, 0, this.LOGN);
            if (iComp_encode == 0) {
                bArr4 = bArr11;
                md.k("signature failed to generate");
                return null;
            }
        }
        bArr4 = bArr11;
        bArr[0] = (byte) (this.LOGN + 48);
        System.arraycopy(bArr10, 0, bArr, 1, this.NONCELEN);
        System.arraycopy(bArr4, 0, bArr, this.NONCELEN + 1, iComp_encode);
        return Arrays.copyOfRange(bArr, 0, this.NONCELEN + 1 + iComp_encode);
    }

    public byte[][] crypto_sign_keypair(byte[] bArr, int i2, byte[] bArr2, int i3) {
        String str;
        int i4 = this.N;
        byte[] bArr3 = new byte[i4];
        byte[] bArr4 = new byte[i4];
        byte[] bArr5 = new byte[i4];
        short[] sArr = new short[i4];
        byte[] bArr6 = new byte[48];
        SHAKE256 shake256 = new SHAKE256();
        FalconKeyGen falconKeyGen = new FalconKeyGen();
        this.rand.nextBytes(bArr6);
        shake256.inner_shake256_init();
        shake256.inner_shake256_inject(bArr6, 0, 48);
        shake256.i_shake256_flip();
        falconKeyGen.keygen(shake256, bArr3, 0, bArr4, 0, bArr5, 0, null, 0, sArr, 0, this.LOGN);
        int i5 = this.LOGN;
        bArr2[i3] = (byte) (i5 + 80);
        FalconCodec falconCodec = this.codec;
        int i6 = i3 + 1;
        int iTrim_i8_encode = falconCodec.trim_i8_encode(bArr2, i6, this.CRYPTO_SECRETKEYBYTES - 1, bArr3, 0, i5, falconCodec.max_fg_bits[i5]);
        if (iTrim_i8_encode != 0) {
            int i7 = iTrim_i8_encode + 1;
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, i6, i7);
            FalconCodec falconCodec2 = this.codec;
            int i8 = i3 + i7;
            int i9 = this.CRYPTO_SECRETKEYBYTES - i7;
            int i10 = this.LOGN;
            int iTrim_i8_encode2 = falconCodec2.trim_i8_encode(bArr2, i8, i9, bArr4, 0, i10, falconCodec2.max_fg_bits[i10]);
            if (iTrim_i8_encode2 != 0) {
                int i11 = i7 + iTrim_i8_encode2;
                byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr2, i8, i11);
                FalconCodec falconCodec3 = this.codec;
                int i12 = i3 + i11;
                int i13 = this.CRYPTO_SECRETKEYBYTES - i11;
                int i14 = this.LOGN;
                int iTrim_i8_encode3 = falconCodec3.trim_i8_encode(bArr2, i12, i13, bArr5, 0, i14, falconCodec3.max_FG_bits[i14]);
                if (iTrim_i8_encode3 != 0) {
                    int i15 = i11 + iTrim_i8_encode3;
                    byte[] bArrCopyOfRange3 = Arrays.copyOfRange(bArr2, i12, i15);
                    if (i15 == this.CRYPTO_SECRETKEYBYTES) {
                        int i16 = this.LOGN;
                        bArr[i2] = (byte) i16;
                        if (this.codec.modq_encode(bArr, i2 + 1, this.CRYPTO_PUBLICKEYBYTES - 1, sArr, 0, i16) == this.CRYPTO_PUBLICKEYBYTES - 1) {
                            return new byte[][]{Arrays.copyOfRange(bArr, 1, bArr.length), bArrCopyOfRange, bArrCopyOfRange2, bArrCopyOfRange3};
                        }
                        str = "public key encoding failed";
                    } else {
                        str = "secret key encoding failed";
                    }
                } else {
                    str = "F encode failed";
                }
            } else {
                str = "g encode failed";
            }
        } else {
            str = "f encode failed";
        }
        md.k(str);
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0082, code lost:
    
        if (r17.codec.comp_decode(r2, 0, r17.LOGN, r19, 0, r9) != r9) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int crypto_sign_open(boolean r18, byte[] r19, byte[] r20, byte[] r21, byte[] r22, int r23) {
        /*
            r17 = this;
            r0 = r17
            r5 = r19
            r8 = r21
            int r1 = r0.N
            short[] r10 = new short[r1]
            short[] r2 = new short[r1]
            short[] r1 = new short[r1]
            org.bouncycastle.pqc.crypto.falcon.SHAKE256 r3 = new org.bouncycastle.pqc.crypto.falcon.SHAKE256
            r3.<init>()
            org.bouncycastle.pqc.crypto.falcon.FalconVrfy r4 = new org.bouncycastle.pqc.crypto.falcon.FalconVrfy
            r4.<init>()
            org.bouncycastle.pqc.crypto.falcon.FalconCommon r6 = new org.bouncycastle.pqc.crypto.falcon.FalconCommon
            r6.<init>()
            org.bouncycastle.pqc.crypto.falcon.FalconCodec r9 = r0.codec
            int r12 = r0.LOGN
            int r7 = r0.CRYPTO_PUBLICKEYBYTES
            r11 = 1
            int r15 = r7 + (-1)
            r7 = r11
            r11 = 0
            r13 = r22
            r14 = r23
            int r9 = r9.modq_decode(r10, r11, r12, r13, r14, r15)
            int r11 = r0.CRYPTO_PUBLICKEYBYTES
            int r11 = r11 - r7
            r12 = -1
            if (r9 == r11) goto L37
            return r12
        L37:
            int r9 = r0.LOGN
            r13 = 0
            r4.to_ntt_monty(r10, r13, r9)
            int r9 = r5.length
            int r11 = r8.length
            if (r18 == 0) goto L69
            if (r9 < r7) goto L66
            r14 = r5[r13]
            r15 = r4
            int r4 = r0.LOGN
            r22 = r12
            int r12 = r4 + 32
            byte r12 = (byte) r12
            if (r14 == r12) goto L50
            goto L68
        L50:
            r12 = r2
            r2 = r1
            org.bouncycastle.pqc.crypto.falcon.FalconCodec r1 = r0.codec
            int r7 = r9 + (-1)
            r9 = r3
            r3 = 0
            r14 = r6
            r6 = 1
            r16 = r14
            r14 = r9
            r9 = r16
            int r1 = r1.comp_decode(r2, r3, r4, r5, r6, r7)
            if (r1 == r7) goto L85
            return r22
        L66:
            r22 = r12
        L68:
            return r22
        L69:
            r14 = r3
            r15 = r4
            r22 = r12
            r12 = r2
            r2 = r1
            r1 = r6
            if (r9 < r7) goto Lb1
            r3 = r1
            org.bouncycastle.pqc.crypto.falcon.FalconCodec r1 = r0.codec
            int r4 = r0.LOGN
            r6 = 0
            r5 = r3
            r3 = 0
            r7 = r9
            r9 = r5
            r5 = r19
            int r1 = r1.comp_decode(r2, r3, r4, r5, r6, r7)
            if (r1 == r7) goto L85
            goto Lb1
        L85:
            r14.inner_shake256_init()
            int r1 = r0.NONCELEN
            r3 = r20
            r14.inner_shake256_inject(r3, r13, r1)
            r14.inner_shake256_inject(r8, r13, r11)
            r14.i_shake256_flip()
            int r1 = r0.LOGN
            r9.hash_to_point_vartime(r14, r12, r13, r1)
            int r9 = r0.LOGN
            int r0 = r0.N
            short[] r0 = new short[r0]
            r11 = 0
            r4 = 0
            r6 = 0
            r8 = 0
            r5 = r2
            r7 = r10
            r3 = r12
            r2 = r15
            r10 = r0
            int r0 = r2.verify_raw(r3, r4, r5, r6, r7, r8, r9, r10, r11)
            if (r0 != 0) goto Lb0
            return r22
        Lb0:
            return r13
        Lb1:
            return r22
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.crypto.falcon.FalconNIST.crypto_sign_open(boolean, byte[], byte[], byte[], byte[], int):int");
    }
}
