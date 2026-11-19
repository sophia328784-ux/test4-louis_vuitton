package org.bouncycastle.crypto.digests;

import com.github.druk.dnssd.NSType;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.tagmanager.ModuleDescriptor;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.math.Primes;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public final class WhirlpoolDigest implements ExtendedDigest, Memoable {
    private static final int BITCOUNT_ARRAY_SIZE = 32;
    private static final int BYTE_LENGTH = 64;
    private static final int DIGEST_LENGTH_BYTES = 64;
    private static final short[] EIGHT;
    private static final int REDUCTION_POLYNOMIAL = 285;
    private static final int ROUNDS = 10;
    private long[] _K;
    private long[] _L;
    private short[] _bitCount;
    private long[] _block;
    private byte[] _buffer;
    private int _bufferPos;
    private long[] _hash;
    private final long[] _rc;
    private long[] _state;
    private final CryptoServicePurpose purpose;
    private static final int[] SBOX = {24, 35, 198, 232, 135, 184, 1, 79, 54, 166, 210, 245, 121, 111, 145, 82, 96, 188, 155, 142, 163, 12, 123, 53, 29, BERTags.FLAGS, 215, 194, 46, 75, 254, 87, 21, 119, 55, 229, 159, 240, 74, ModuleDescriptor.MODULE_VERSION, 88, 201, 41, 10, 177, 160, 107, 133, 189, 93, 16, 244, 203, 62, 5, 103, 228, 39, 65, 139, 167, 125, 149, 216, NSType.IXFR, 238, 124, 102, 221, 23, 71, 158, 202, 45, 191, 7, 173, 90, 131, 51, 99, 2, 170, 113, 200, 25, 73, 217, 242, 227, 91, 136, 154, 38, 50, 176, 233, 15, 213, 128, 190, 205, 52, 72, 255, 122, 144, 95, 32, 104, 26, 174, Sink.ORIENTATION_180, 84, 147, 34, 100, 241, 115, 18, 64, 8, 195, 236, 219, 161, 141, 61, 151, 0, 207, 43, 118, 130, 214, 27, 181, 175, 106, 80, 69, 243, 48, 239, 63, 85, 162, 234, 101, 186, 47, 192, 222, 28, NSType.MAILB, 77, 146, 117, 6, 138, 178, 230, 14, 31, 98, 212, 168, 150, NSType.TKEY, 197, 37, 89, 132, 114, 57, 76, 94, 120, 56, 140, 209, 165, 226, 97, 179, 33, 156, 30, 67, 199, NSType.AXFR, 4, 81, 153, 109, 13, 250, 223, 126, 36, 59, 171, 206, 17, 143, 78, 183, 235, 60, 129, 148, 247, com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor.MODULE_VERSION, 19, 44, Primes.SMALL_FACTOR_LIMIT, 231, 110, 196, 3, 86, 68, CertificateBody.profileType, 169, 42, 187, 193, 83, 220, 11, 157, 108, 49, 116, 246, 70, 172, 137, 20, 225, 22, 58, 105, 9, 112, 182, 208, 237, 204, 66, 152, 164, 40, 92, 248, 134};
    private static final long[] C0 = new long[256];
    private static final long[] C1 = new long[256];
    private static final long[] C2 = new long[256];
    private static final long[] C3 = new long[256];
    private static final long[] C4 = new long[256];
    private static final long[] C5 = new long[256];
    private static final long[] C6 = new long[256];
    private static final long[] C7 = new long[256];

    static {
        short[] sArr = new short[32];
        EIGHT = sArr;
        sArr[31] = 8;
        for (int i2 = 0; i2 < 256; i2++) {
            int i3 = SBOX[i2];
            int iMulX = mulX(i3);
            int iMulX2 = mulX(iMulX);
            int i4 = iMulX2 ^ i3;
            int iMulX3 = mulX(iMulX2);
            int i5 = iMulX3 ^ i3;
            C0[i2] = packIntoLong(i3, i3, iMulX2, i3, iMulX3, i4, iMulX, i5);
            C1[i2] = packIntoLong(i5, i3, i3, iMulX2, i3, iMulX3, i4, iMulX);
            C2[i2] = packIntoLong(iMulX, i5, i3, i3, iMulX2, i3, iMulX3, i4);
            C3[i2] = packIntoLong(i4, iMulX, i5, i3, i3, iMulX2, i3, iMulX3);
            C4[i2] = packIntoLong(iMulX3, i4, iMulX, i5, i3, i3, iMulX2, i3);
            C5[i2] = packIntoLong(i3, iMulX3, i4, iMulX, i5, i3, i3, iMulX2);
            C6[i2] = packIntoLong(iMulX2, i3, iMulX3, i4, iMulX, i5, i3, i3);
            C7[i2] = packIntoLong(i3, iMulX2, i3, iMulX3, i4, iMulX, i5, i3);
        }
    }

    public WhirlpoolDigest(CryptoServicePurpose cryptoServicePurpose) {
        long[] jArr = new long[11];
        this._rc = jArr;
        this._buffer = new byte[64];
        this._bufferPos = 0;
        this._bitCount = new short[32];
        this._hash = new long[8];
        this._K = new long[8];
        this._L = new long[8];
        this._block = new long[8];
        this._state = new long[8];
        jArr[0] = 0;
        for (int i2 = 1; i2 <= 10; i2++) {
            int i3 = (i2 - 1) * 8;
            this._rc[i2] = (((((((C0[i3] & (-72057594037927936L)) ^ (C1[i3 + 1] & 71776119061217280L)) ^ (C2[i3 + 2] & 280375465082880L)) ^ (C3[i3 + 3] & 1095216660480L)) ^ (C4[i3 + 4] & 4278190080L)) ^ (C5[i3 + 5] & 16711680)) ^ (C6[i3 + 6] & 65280)) ^ (C7[i3 + 7] & 255);
        }
        this.purpose = cryptoServicePurpose;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, getDigestSize(), cryptoServicePurpose));
    }

    private byte[] copyBitLength() {
        byte[] bArr = new byte[32];
        for (int i2 = 0; i2 < 32; i2++) {
            bArr[i2] = (byte) (this._bitCount[i2] & 255);
        }
        return bArr;
    }

    private void finish() {
        byte[] bArrCopyBitLength = copyBitLength();
        byte[] bArr = this._buffer;
        int i2 = this._bufferPos;
        bArr[i2] = (byte) (bArr[i2] | 128);
        int i3 = i2 + 1;
        this._bufferPos = i3;
        if (i3 == bArr.length) {
            processFilledBuffer(bArr, 0);
        }
        if (this._bufferPos > 32) {
            while (this._bufferPos != 0) {
                update((byte) 0);
            }
        }
        while (this._bufferPos <= 32) {
            update((byte) 0);
        }
        System.arraycopy(bArrCopyBitLength, 0, this._buffer, 32, bArrCopyBitLength.length);
        processFilledBuffer(this._buffer, 0);
    }

    private void increment() {
        int i2 = 0;
        for (int length = this._bitCount.length - 1; length >= 0; length--) {
            short[] sArr = this._bitCount;
            int i3 = (sArr[length] & 255) + EIGHT[length] + i2;
            i2 = i3 >>> 8;
            sArr[length] = (short) (i3 & 255);
        }
    }

    private static int mulX(int i2) {
        return ((-(i2 >>> 7)) & REDUCTION_POLYNOMIAL) ^ (i2 << 1);
    }

    private static long packIntoLong(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        return (((((((((long) i3) << 48) ^ (((long) i2) << 56)) ^ (((long) i4) << 40)) ^ (((long) i5) << 32)) ^ (((long) i6) << 24)) ^ (((long) i7) << 16)) ^ (((long) i8) << 8)) ^ ((long) i9);
    }

    private void processFilledBuffer(byte[] bArr, int i2) {
        Pack.bigEndianToLong(this._buffer, 0, this._block);
        processBlock();
        this._bufferPos = 0;
        Arrays.fill(this._buffer, (byte) 0);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new WhirlpoolDigest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        finish();
        Pack.longToBigEndian(this._hash, bArr, i2);
        reset();
        return getDigestSize();
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Whirlpool";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 64;
    }

    public void processBlock() {
        long[] jArr;
        long[] jArr2;
        for (int i2 = 0; i2 < 8; i2++) {
            long[] jArr3 = this._state;
            long j2 = this._block[i2];
            long[] jArr4 = this._K;
            long j3 = this._hash[i2];
            jArr4[i2] = j3;
            jArr3[i2] = j2 ^ j3;
        }
        for (int i3 = 1; i3 <= 10; i3++) {
            int i4 = 0;
            while (true) {
                jArr = this._L;
                if (i4 >= 8) {
                    break;
                }
                jArr[i4] = 0;
                long[] jArr5 = C0;
                long[] jArr6 = this._K;
                long j4 = jArr5[((int) (jArr6[i4 & 7] >>> 56)) & 255];
                jArr[i4] = j4;
                long j5 = C1[((int) (jArr6[(i4 - 1) & 7] >>> 48)) & 255] ^ j4;
                jArr[i4] = j5;
                long j6 = j5 ^ C2[((int) (jArr6[(i4 - 2) & 7] >>> 40)) & 255];
                jArr[i4] = j6;
                long j7 = j6 ^ C3[((int) (jArr6[(i4 - 3) & 7] >>> 32)) & 255];
                jArr[i4] = j7;
                long j8 = j7 ^ C4[((int) (jArr6[(i4 - 4) & 7] >>> 24)) & 255];
                jArr[i4] = j8;
                long j9 = j8 ^ C5[((int) (jArr6[(i4 - 5) & 7] >>> 16)) & 255];
                jArr[i4] = j9;
                long j10 = j9 ^ C6[((int) (jArr6[(i4 - 6) & 7] >>> 8)) & 255];
                jArr[i4] = j10;
                jArr[i4] = j10 ^ C7[((int) jArr6[(i4 - 7) & 7]) & 255];
                i4++;
            }
            long[] jArr7 = this._K;
            System.arraycopy(jArr, 0, jArr7, 0, jArr7.length);
            long[] jArr8 = this._K;
            jArr8[0] = jArr8[0] ^ this._rc[i3];
            int i5 = 0;
            while (true) {
                jArr2 = this._L;
                if (i5 < 8) {
                    long j11 = this._K[i5];
                    jArr2[i5] = j11;
                    long[] jArr9 = C0;
                    long[] jArr10 = this._state;
                    long j12 = j11 ^ jArr9[((int) (jArr10[i5 & 7] >>> 56)) & 255];
                    jArr2[i5] = j12;
                    long j13 = j12 ^ C1[((int) (jArr10[(i5 - 1) & 7] >>> 48)) & 255];
                    jArr2[i5] = j13;
                    long j14 = j13 ^ C2[((int) (jArr10[(i5 - 2) & 7] >>> 40)) & 255];
                    jArr2[i5] = j14;
                    long j15 = j14 ^ C3[((int) (jArr10[(i5 - 3) & 7] >>> 32)) & 255];
                    jArr2[i5] = j15;
                    long j16 = j15 ^ C4[((int) (jArr10[(i5 - 4) & 7] >>> 24)) & 255];
                    jArr2[i5] = j16;
                    long j17 = j16 ^ C5[((int) (jArr10[(i5 - 5) & 7] >>> 16)) & 255];
                    jArr2[i5] = j17;
                    long j18 = j17 ^ C6[((int) (jArr10[(i5 - 6) & 7] >>> 8)) & 255];
                    jArr2[i5] = j18;
                    jArr2[i5] = j18 ^ C7[((int) jArr10[(i5 - 7) & 7]) & 255];
                    i5++;
                }
            }
            long[] jArr11 = this._state;
            System.arraycopy(jArr2, 0, jArr11, 0, jArr11.length);
        }
        for (int i6 = 0; i6 < 8; i6++) {
            long[] jArr12 = this._hash;
            jArr12[i6] = jArr12[i6] ^ (this._state[i6] ^ this._block[i6]);
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        WhirlpoolDigest whirlpoolDigest = (WhirlpoolDigest) memoable;
        long[] jArr = whirlpoolDigest._rc;
        long[] jArr2 = this._rc;
        System.arraycopy(jArr, 0, jArr2, 0, jArr2.length);
        byte[] bArr = whirlpoolDigest._buffer;
        byte[] bArr2 = this._buffer;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this._bufferPos = whirlpoolDigest._bufferPos;
        short[] sArr = whirlpoolDigest._bitCount;
        short[] sArr2 = this._bitCount;
        System.arraycopy(sArr, 0, sArr2, 0, sArr2.length);
        long[] jArr3 = whirlpoolDigest._hash;
        long[] jArr4 = this._hash;
        System.arraycopy(jArr3, 0, jArr4, 0, jArr4.length);
        long[] jArr5 = whirlpoolDigest._K;
        long[] jArr6 = this._K;
        System.arraycopy(jArr5, 0, jArr6, 0, jArr6.length);
        long[] jArr7 = whirlpoolDigest._L;
        long[] jArr8 = this._L;
        System.arraycopy(jArr7, 0, jArr8, 0, jArr8.length);
        long[] jArr9 = whirlpoolDigest._block;
        long[] jArr10 = this._block;
        System.arraycopy(jArr9, 0, jArr10, 0, jArr10.length);
        long[] jArr11 = whirlpoolDigest._state;
        long[] jArr12 = this._state;
        System.arraycopy(jArr11, 0, jArr12, 0, jArr12.length);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b2) {
        byte[] bArr = this._buffer;
        int i2 = this._bufferPos;
        bArr[i2] = b2;
        int i3 = i2 + 1;
        this._bufferPos = i3;
        if (i3 == bArr.length) {
            processFilledBuffer(bArr, 0);
        }
        increment();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i2, int i3) {
        while (i3 > 0) {
            update(bArr[i2]);
            i2++;
            i3--;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this._bufferPos = 0;
        Arrays.fill(this._bitCount, (short) 0);
        Arrays.fill(this._buffer, (byte) 0);
        Arrays.fill(this._hash, 0L);
        Arrays.fill(this._K, 0L);
        Arrays.fill(this._L, 0L);
        Arrays.fill(this._block, 0L);
        Arrays.fill(this._state, 0L);
    }

    public WhirlpoolDigest() {
        this(CryptoServicePurpose.ANY);
    }

    public WhirlpoolDigest(WhirlpoolDigest whirlpoolDigest) {
        this._rc = new long[11];
        this._buffer = new byte[64];
        this._bufferPos = 0;
        this._bitCount = new short[32];
        this._hash = new long[8];
        this._K = new long[8];
        this._L = new long[8];
        this._block = new long[8];
        this._state = new long[8];
        CryptoServicePurpose cryptoServicePurpose = whirlpoolDigest.purpose;
        this.purpose = cryptoServicePurpose;
        reset(whirlpoolDigest);
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, getDigestSize(), cryptoServicePurpose));
    }
}
