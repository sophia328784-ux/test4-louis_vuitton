package org.bouncycastle.pqc.crypto.hqc;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
class HQCEngine {
    private int K_BYTE;
    private int K_BYTE_64;
    private int N1N2_BYTE;
    private int N1N2_BYTE_64;
    private int N1_BYTE;
    private int N1_BYTE_64;
    private int N_BYTE;
    private int N_BYTE_64;
    private long RED_MASK;
    private int delta;
    private int fft;
    private int g;
    private int[] generatorPoly;
    private GF2PolynomialCalculator gfCalculator;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f77663k;
    private int mulParam;
    private int n;
    private int n1;
    private int n1n2;
    private int n2;
    private int rejectionThreshold;
    private int w;
    private int we;
    private int wr;
    private int SEED_SIZE = 40;
    private byte G_FCT_DOMAIN = 3;
    private byte H_FCT_DOMAIN = 4;
    private byte K_FCT_DOMAIN = 5;
    private int GF_POLY_WT = 5;
    private int GF_POLY_M2 = 4;
    private int SALT_SIZE_BYTES = 16;
    private int SALT_SIZE_64 = 2;
    private int SHA512_BYTES = 64;

    public HQCEngine(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int[] iArr) {
        this.n = i2;
        this.f77663k = i5;
        this.delta = i7;
        this.w = i8;
        this.wr = i9;
        this.we = i10;
        this.n1 = i3;
        this.n2 = i4;
        int i13 = i3 * i4;
        this.n1n2 = i13;
        this.generatorPoly = iArr;
        this.g = i6;
        this.rejectionThreshold = i11;
        this.fft = i12;
        this.mulParam = (int) Math.ceil(i4 / 128);
        this.N_BYTE = Utils.getByteSizeFromBitSize(i2);
        this.K_BYTE = i5;
        this.N_BYTE_64 = Utils.getByte64SizeFromBitSize(i2);
        this.K_BYTE_64 = Utils.getByteSizeFromBitSize(i5);
        this.N1_BYTE_64 = Utils.getByteSizeFromBitSize(i3);
        this.N1N2_BYTE_64 = Utils.getByte64SizeFromBitSize(i13);
        this.N1N2_BYTE = Utils.getByteSizeFromBitSize(i13);
        this.N1_BYTE = Utils.getByteSizeFromBitSize(i3);
        long j2 = (1 << ((int) (((long) i2) % 64))) - 1;
        this.RED_MASK = j2;
        this.gfCalculator = new GF2PolynomialCalculator(this.N_BYTE_64, i2, j2);
    }

    private void decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, long[] jArr) {
        long[] jArr2 = new long[this.N_BYTE_64];
        Utils.fromByteArrayToLongArray(jArr2, bArr3);
        int i2 = this.N1N2_BYTE_64;
        long[] jArr3 = new long[i2];
        Utils.fromByteArrayToLongArray(jArr3, bArr4);
        long[] jArr4 = new long[this.N_BYTE_64];
        System.arraycopy(jArr3, 0, jArr4, 0, i2);
        long[] jArr5 = new long[this.N_BYTE_64];
        this.gfCalculator.multLongs(jArr5, jArr, jArr2);
        GF2PolynomialCalculator.addLongs(jArr5, jArr5, jArr4);
        int i3 = this.n1;
        byte[] bArr5 = new byte[i3];
        ReedMuller.decode(bArr5, jArr5, i3, this.mulParam);
        ReedSolomon.decode(bArr2, bArr5, this.n1, this.fft, this.delta, this.f77663k, this.g);
        System.arraycopy(bArr2, 0, bArr, 0, bArr.length);
    }

    private void encrypt(byte[] bArr, long[] jArr, long[] jArr2, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        KeccakRandomGenerator keccakRandomGenerator = new KeccakRandomGenerator(256);
        keccakRandomGenerator.seedExpanderInit(bArr4, this.SEED_SIZE);
        int i2 = this.N_BYTE_64;
        long[] jArr3 = new long[i2];
        long[] jArr4 = new long[i2];
        long[] jArr5 = new long[i2];
        generateRandomFixedWeight(jArr4, keccakRandomGenerator, this.wr);
        generateRandomFixedWeight(jArr5, keccakRandomGenerator, this.wr);
        generateRandomFixedWeight(jArr3, keccakRandomGenerator, this.we);
        long[] jArr6 = new long[this.N_BYTE_64];
        this.gfCalculator.multLongs(jArr6, jArr5, jArr2);
        GF2PolynomialCalculator.addLongs(jArr6, jArr6, jArr4);
        Utils.fromLongArrayToByteArray(bArr, jArr6);
        int i3 = this.n1;
        byte[] bArr5 = new byte[i3];
        int i4 = this.N1N2_BYTE_64;
        long[] jArr7 = new long[i4];
        long[] jArr8 = new long[this.N_BYTE_64];
        ReedSolomon.encode(bArr5, bArr3, this.K_BYTE * 8, i3, this.f77663k, this.g, this.generatorPoly);
        ReedMuller.encode(jArr7, bArr5, this.n1, this.mulParam);
        System.arraycopy(jArr7, 0, jArr8, 0, i4);
        long[] jArr9 = new long[this.N_BYTE_64];
        Utils.fromByteArrayToLongArray(jArr9, bArr2);
        long[] jArr10 = new long[this.N_BYTE_64];
        this.gfCalculator.multLongs(jArr10, jArr5, jArr9);
        GF2PolynomialCalculator.addLongs(jArr10, jArr10, jArr8);
        GF2PolynomialCalculator.addLongs(jArr10, jArr10, jArr3);
        int i5 = this.n1n2;
        int i6 = this.n;
        int i7 = this.N1N2_BYTE_64;
        Utils.resizeArray(jArr, i5, jArr10, i6, i7, i7);
    }

    private void extractCiphertexts(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        System.arraycopy(bArr5, 0, bArr, 0, bArr.length);
        System.arraycopy(bArr5, bArr.length, bArr2, 0, bArr2.length);
        System.arraycopy(bArr5, bArr.length + bArr2.length, bArr3, 0, bArr3.length);
        System.arraycopy(bArr5, bArr.length + bArr2.length + bArr3.length, bArr4, 0, bArr4.length);
    }

    private void extractKeysFromSecretKeys(long[] jArr, long[] jArr2, byte[] bArr, byte[] bArr2) {
        int i2 = this.SEED_SIZE;
        byte[] bArr3 = new byte[i2];
        System.arraycopy(bArr2, 0, bArr3, 0, i2);
        KeccakRandomGenerator keccakRandomGenerator = new KeccakRandomGenerator(256);
        keccakRandomGenerator.seedExpanderInit(bArr3, i2);
        generateRandomFixedWeight(jArr, keccakRandomGenerator, this.w);
        generateRandomFixedWeight(jArr2, keccakRandomGenerator, this.w);
        System.arraycopy(bArr2, this.SEED_SIZE, bArr, 0, bArr.length);
    }

    private void extractPublicKeys(long[] jArr, byte[] bArr, byte[] bArr2) {
        int i2 = this.SEED_SIZE;
        byte[] bArr3 = new byte[i2];
        System.arraycopy(bArr2, 0, bArr3, 0, i2);
        KeccakRandomGenerator keccakRandomGenerator = new KeccakRandomGenerator(256);
        keccakRandomGenerator.seedExpanderInit(bArr3, i2);
        long[] jArr2 = new long[this.N_BYTE_64];
        generatePublicKeyH(jArr2, keccakRandomGenerator);
        System.arraycopy(jArr2, 0, jArr, 0, jArr.length);
        System.arraycopy(bArr2, 40, bArr, 0, bArr.length);
    }

    private void generateRandomFixedWeight(long[] jArr, KeccakRandomGenerator keccakRandomGenerator, int i2) {
        int i3 = this.wr;
        int[] iArr = new int[i3];
        byte[] bArr = new byte[i3 * 4];
        int[] iArr2 = new int[i3];
        int[] iArr3 = new int[i3];
        long[] jArr2 = new long[i3];
        keccakRandomGenerator.expandSeed(bArr, i2 * 4);
        Pack.littleEndianToInt(bArr, 0, iArr, 0, i3);
        for (int i4 = 0; i4 < i2; i4++) {
            iArr2[i4] = (int) (((((long) iArr[i4]) & BodyPartID.bodyIdMax) % ((long) (this.n - i4))) + ((long) i4));
        }
        for (int i5 = i2 - 1; i5 >= 0; i5--) {
            int i6 = 0;
            for (int i7 = i5 + 1; i7 < i2; i7++) {
                if (iArr2[i7] == iArr2[i5]) {
                    i6 = 1;
                }
            }
            int i8 = -i6;
            iArr2[i5] = ((~i8) & iArr2[i5]) ^ (i8 & i5);
        }
        for (int i9 = 0; i9 < i2; i9++) {
            iArr3[i9] = iArr2[i9] >>> 6;
            jArr2[i9] = 1 << (iArr2[i9] & 63);
        }
        for (int i10 = 0; i10 < this.N_BYTE_64; i10++) {
            long j2 = 0;
            for (int i11 = 0; i11 < i2; i11++) {
                int i12 = i10 - iArr3[i11];
                j2 |= ((long) (-(((i12 | (-i12)) >>> 31) ^ 1))) & jArr2[i11];
            }
            jArr[i10] = j2 | jArr[i10];
        }
    }

    public void decaps(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i2 = this.N_BYTE_64;
        long[] jArr = new long[i2];
        byte[] bArr4 = new byte[this.N_BYTE + 40];
        extractKeysFromSecretKeys(new long[i2], jArr, bArr4, bArr3);
        byte[] bArr5 = new byte[this.N_BYTE];
        byte[] bArr6 = new byte[this.N1N2_BYTE];
        byte[] bArr7 = new byte[this.SHA512_BYTES];
        byte[] bArr8 = new byte[this.SALT_SIZE_BYTES];
        extractCiphertexts(bArr5, bArr6, bArr7, bArr8, bArr2);
        int i3 = this.f77663k;
        byte[] bArr9 = new byte[i3];
        decrypt(bArr9, bArr9, bArr5, bArr6, jArr);
        byte[] bArr10 = new byte[this.SHA512_BYTES];
        int i4 = this.K_BYTE + this.SALT_SIZE_BYTES + this.SEED_SIZE;
        byte[] bArr11 = new byte[i4];
        System.arraycopy(bArr9, 0, bArr11, 0, i3);
        System.arraycopy(bArr4, 0, bArr11, this.K_BYTE, this.SEED_SIZE);
        System.arraycopy(bArr8, 0, bArr11, this.K_BYTE + this.SEED_SIZE, this.SALT_SIZE_BYTES);
        KeccakRandomGenerator keccakRandomGenerator = new KeccakRandomGenerator(256);
        keccakRandomGenerator.SHAKE256_512_ds(bArr10, bArr11, i4, new byte[]{this.G_FCT_DOMAIN});
        long[] jArr2 = new long[this.N_BYTE_64];
        byte[] bArr12 = new byte[this.N_BYTE];
        extractPublicKeys(jArr2, bArr12, bArr4);
        byte[] bArr13 = new byte[this.N_BYTE];
        byte[] bArr14 = new byte[this.N1N2_BYTE];
        long[] jArr3 = new long[this.N1N2_BYTE_64];
        encrypt(bArr13, jArr3, jArr2, bArr12, bArr9, bArr10);
        Utils.fromLongArrayToByteArray(bArr14, jArr3);
        byte[] bArr15 = new byte[this.SHA512_BYTES];
        keccakRandomGenerator.SHAKE256_512_ds(bArr15, bArr9, i3, new byte[]{this.H_FCT_DOMAIN});
        byte[] bArr16 = new byte[this.K_BYTE + this.N_BYTE + this.N1N2_BYTE];
        byte[] bArrConcatenate = Arrays.concatenate(Arrays.concatenate(bArr9, bArr5), bArr6);
        keccakRandomGenerator.SHAKE256_512_ds(bArr, bArrConcatenate, bArrConcatenate.length, new byte[]{this.K_FCT_DOMAIN});
        boolean zAreEqual = Arrays.areEqual(bArr5, bArr13);
        if (!Arrays.areEqual(bArr6, bArr14)) {
            zAreEqual = false;
        }
        if (!Arrays.areEqual(bArr7, bArr15)) {
            zAreEqual = false;
        }
        if (zAreEqual) {
            return;
        }
        for (int i5 = 0; i5 < getSessionKeySize(); i5++) {
            bArr[i5] = 0;
        }
    }

    public void encaps(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7) {
        int i2 = this.K_BYTE;
        byte[] bArr8 = new byte[i2];
        byte[] bArr9 = new byte[this.SEED_SIZE];
        KeccakRandomGenerator keccakRandomGenerator = new KeccakRandomGenerator(256);
        keccakRandomGenerator.randomGeneratorInit(bArr6, null, bArr6.length, 0);
        keccakRandomGenerator.squeeze(bArr9, 40);
        keccakRandomGenerator.squeeze(new byte[this.SEED_SIZE], 40);
        keccakRandomGenerator.squeeze(bArr8, this.K_BYTE);
        byte[] bArr10 = new byte[this.SHA512_BYTES];
        int i3 = this.K_BYTE + this.SEED_SIZE;
        int i4 = this.SALT_SIZE_BYTES;
        int i5 = i3 + i4;
        byte[] bArr11 = new byte[i5];
        keccakRandomGenerator.squeeze(bArr7, i4);
        System.arraycopy(bArr8, 0, bArr11, 0, i2);
        System.arraycopy(bArr5, 0, bArr11, this.K_BYTE, this.SEED_SIZE);
        System.arraycopy(bArr7, 0, bArr11, this.K_BYTE + this.SEED_SIZE, this.SALT_SIZE_BYTES);
        KeccakRandomGenerator keccakRandomGenerator2 = new KeccakRandomGenerator(256);
        keccakRandomGenerator2.SHAKE256_512_ds(bArr10, bArr11, i5, new byte[]{this.G_FCT_DOMAIN});
        long[] jArr = new long[this.N_BYTE_64];
        byte[] bArr12 = new byte[this.N_BYTE];
        extractPublicKeys(jArr, bArr12, bArr5);
        long[] jArr2 = new long[this.N1N2_BYTE_64];
        encrypt(bArr, jArr2, jArr, bArr12, bArr8, bArr10);
        Utils.fromLongArrayToByteArray(bArr2, jArr2);
        keccakRandomGenerator2.SHAKE256_512_ds(bArr4, bArr8, i2, new byte[]{this.H_FCT_DOMAIN});
        byte[] bArr13 = new byte[this.K_BYTE + this.N_BYTE + this.N1N2_BYTE];
        byte[] bArrConcatenate = Arrays.concatenate(Arrays.concatenate(bArr8, bArr), bArr2);
        keccakRandomGenerator2.SHAKE256_512_ds(bArr3, bArrConcatenate, bArrConcatenate.length, new byte[]{this.K_FCT_DOMAIN});
    }

    public void genKeyPair(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i2 = this.SEED_SIZE;
        byte[] bArr4 = new byte[i2];
        KeccakRandomGenerator keccakRandomGenerator = new KeccakRandomGenerator(256);
        keccakRandomGenerator.randomGeneratorInit(bArr3, null, bArr3.length, 0);
        keccakRandomGenerator.squeeze(bArr4, 40);
        KeccakRandomGenerator keccakRandomGenerator2 = new KeccakRandomGenerator(256);
        keccakRandomGenerator2.seedExpanderInit(bArr4, i2);
        int i3 = this.N_BYTE_64;
        long[] jArr = new long[i3];
        long[] jArr2 = new long[i3];
        generateRandomFixedWeight(jArr, keccakRandomGenerator2, this.w);
        generateRandomFixedWeight(jArr2, keccakRandomGenerator2, this.w);
        int i4 = this.SEED_SIZE;
        byte[] bArr5 = new byte[i4];
        keccakRandomGenerator.squeeze(bArr5, 40);
        KeccakRandomGenerator keccakRandomGenerator3 = new KeccakRandomGenerator(256);
        keccakRandomGenerator3.seedExpanderInit(bArr5, i4);
        long[] jArr3 = new long[this.N_BYTE_64];
        generatePublicKeyH(jArr3, keccakRandomGenerator3);
        long[] jArr4 = new long[this.N_BYTE_64];
        this.gfCalculator.multLongs(jArr4, jArr2, jArr3);
        GF2PolynomialCalculator.addLongs(jArr4, jArr4, jArr);
        byte[] bArr6 = new byte[this.N_BYTE];
        Utils.fromLongArrayToByteArray(bArr6, jArr4);
        byte[] bArrConcatenate = Arrays.concatenate(bArr5, bArr6);
        byte[] bArrConcatenate2 = Arrays.concatenate(bArr4, bArrConcatenate);
        System.arraycopy(bArrConcatenate, 0, bArr, 0, bArrConcatenate.length);
        System.arraycopy(bArrConcatenate2, 0, bArr2, 0, bArrConcatenate2.length);
    }

    public void generatePublicKeyH(long[] jArr, KeccakRandomGenerator keccakRandomGenerator) {
        int i2 = this.N_BYTE;
        byte[] bArr = new byte[i2];
        keccakRandomGenerator.expandSeed(bArr, i2);
        long[] jArr2 = new long[this.N_BYTE_64];
        Utils.fromByteArrayToLongArray(jArr2, bArr);
        int i3 = this.N_BYTE_64 - 1;
        jArr2[i3] = jArr2[i3] & Utils.bitMask(this.n, 64L);
        System.arraycopy(jArr2, 0, jArr, 0, jArr.length);
    }

    public int getSessionKeySize() {
        return this.SHA512_BYTES;
    }
}
