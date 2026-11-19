package org.bouncycastle.crypto.digests;

import defpackage.md;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class KeccakDigest implements ExtendedDigest {
    private static long[] KeccakRoundConstants = {1, 32898, -9223372036854742902L, -9223372034707259392L, 32907, 2147483649L, -9223372034707259263L, -9223372036854743031L, 138, 136, 2147516425L, 2147483658L, 2147516555L, -9223372036854775669L, -9223372036854742903L, -9223372036854743037L, -9223372036854743038L, -9223372036854775680L, 32778, -9223372034707292150L, -9223372034707259263L, -9223372036854742912L, 2147483649L, -9223372034707259384L};
    protected int bitsInQueue;
    protected byte[] dataQueue;
    protected int fixedOutputLength;
    protected final CryptoServicePurpose purpose;
    protected int rate;
    protected boolean squeezing;
    protected long[] state;

    public KeccakDigest(KeccakDigest keccakDigest) {
        long[] jArr = new long[25];
        this.state = jArr;
        this.dataQueue = new byte[192];
        this.purpose = keccakDigest.purpose;
        long[] jArr2 = keccakDigest.state;
        System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
        byte[] bArr = keccakDigest.dataQueue;
        System.arraycopy(bArr, 0, this.dataQueue, 0, bArr.length);
        this.rate = keccakDigest.rate;
        this.bitsInQueue = keccakDigest.bitsInQueue;
        this.fixedOutputLength = keccakDigest.fixedOutputLength;
        this.squeezing = keccakDigest.squeezing;
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
    }

    private void KeccakAbsorb(byte[] bArr, int i2) {
        int i3 = this.rate >>> 6;
        for (int i4 = 0; i4 < i3; i4++) {
            long[] jArr = this.state;
            jArr[i4] = jArr[i4] ^ Pack.littleEndianToLong(bArr, i2);
            i2 += 8;
        }
        KeccakPermutation();
    }

    private void KeccakExtract() {
        KeccakPermutation();
        Pack.longToLittleEndian(this.state, 0, this.rate >>> 6, this.dataQueue, 0);
        this.bitsInQueue = this.rate;
    }

    private void KeccakPermutation() {
        long[] jArr = this.state;
        long j2 = jArr[0];
        long j3 = jArr[1];
        char c2 = 2;
        long j4 = jArr[2];
        char c3 = 3;
        long j5 = jArr[3];
        char c4 = 4;
        long j6 = jArr[4];
        long j7 = jArr[5];
        long j8 = jArr[6];
        long j9 = jArr[7];
        long j10 = jArr[8];
        long j11 = jArr[9];
        long j12 = jArr[10];
        long j13 = jArr[11];
        long j14 = jArr[12];
        long j15 = jArr[13];
        long j16 = jArr[14];
        long j17 = jArr[15];
        long j18 = jArr[16];
        long j19 = jArr[17];
        long j20 = jArr[18];
        long j21 = jArr[19];
        long j22 = jArr[20];
        long j23 = jArr[21];
        long j24 = jArr[22];
        long j25 = jArr[23];
        int i2 = 24;
        long j26 = jArr[24];
        int i3 = 0;
        while (i3 < i2) {
            long j27 = (((j2 ^ j7) ^ j12) ^ j17) ^ j22;
            long j28 = (((j3 ^ j8) ^ j13) ^ j18) ^ j23;
            long j29 = (((j4 ^ j9) ^ j14) ^ j19) ^ j24;
            long j30 = (((j5 ^ j10) ^ j15) ^ j20) ^ j25;
            long j31 = (((j6 ^ j11) ^ j16) ^ j21) ^ j26;
            long j32 = ((j28 << 1) | (j28 >>> (-1))) ^ j31;
            long j33 = ((j29 << 1) | (j29 >>> (-1))) ^ j27;
            long j34 = ((j30 << 1) | (j30 >>> (-1))) ^ j28;
            long j35 = ((j31 << 1) | (j31 >>> (-1))) ^ j29;
            long j36 = ((j27 << 1) | (j27 >>> (-1))) ^ j30;
            long j37 = j2 ^ j32;
            long j38 = j7 ^ j32;
            long j39 = j12 ^ j32;
            long j40 = j17 ^ j32;
            long j41 = j22 ^ j32;
            long j42 = j3 ^ j33;
            long j43 = j8 ^ j33;
            long j44 = j13 ^ j33;
            long j45 = j18 ^ j33;
            long j46 = j23 ^ j33;
            long j47 = j4 ^ j34;
            long j48 = j9 ^ j34;
            long j49 = j14 ^ j34;
            long j50 = j19 ^ j34;
            long j51 = j24 ^ j34;
            long j52 = j5 ^ j35;
            long j53 = j10 ^ j35;
            long j54 = j15 ^ j35;
            long j55 = j20 ^ j35;
            long j56 = j25 ^ j35;
            long j57 = j6 ^ j36;
            long j58 = j11 ^ j36;
            long j59 = j16 ^ j36;
            long j60 = j21 ^ j36;
            long j61 = j26 ^ j36;
            long j62 = (j42 << 1) | (j42 >>> 63);
            char c5 = c2;
            long j63 = (j43 << 44) | (j43 >>> 20);
            char c6 = c3;
            long j64 = (j58 << 20) | (j58 >>> 44);
            char c7 = c4;
            long j65 = (j51 << 61) | (j51 >>> c6);
            long j66 = (j59 << 39) | (j59 >>> 25);
            long j67 = (j41 << 18) | (j41 >>> 46);
            long j68 = (j47 << 62) | (j47 >>> c5);
            long j69 = (j49 << 43) | (j49 >>> 21);
            long j70 = (j54 << 25) | (j54 >>> 39);
            int i4 = i2;
            long j71 = (j60 << 8) | (j60 >>> 56);
            int i5 = i3;
            long j72 = (j56 << 56) | (j56 >>> 8);
            long j73 = (j40 << 41) | (j40 >>> 23);
            long j74 = (j57 << 27) | (j57 >>> 37);
            long j75 = (j61 << 14) | (j61 >>> 50);
            long j76 = (j46 << c5) | (j46 >>> 62);
            long j77 = (j53 << 55) | (j53 >>> 9);
            long j78 = (j45 << 45) | (j45 >>> 19);
            long j79 = (j38 << 36) | (j38 >>> 28);
            long j80 = (j52 << 28) | (j52 >>> 36);
            long[] jArr2 = jArr;
            long j81 = (j55 << 21) | (j55 >>> 43);
            long j82 = (j50 << 15) | (j50 >>> 49);
            long j83 = (j44 << 10) | (j44 >>> 54);
            long j84 = (j48 << 6) | (j48 >>> 58);
            long j85 = (j39 << c6) | (j39 >>> 61);
            long j86 = j37 ^ ((~j63) & j69);
            long j87 = ((~j69) & j81) ^ j63;
            long j88 = ((~j81) & j75) ^ j69;
            j5 = ((~j75) & j37) ^ j81;
            long j89 = ((~j37) & j63) ^ j75;
            long j90 = j80 ^ ((~j64) & j85);
            long j91 = ((~j85) & j78) ^ j64;
            long j92 = ((~j78) & j65) ^ j85;
            long j93 = ((~j65) & j80) ^ j78;
            long j94 = ((~j80) & j64) ^ j65;
            j12 = j62 ^ ((~j84) & j70);
            long j95 = ((~j70) & j71) ^ j84;
            long j96 = ((~j71) & j67) ^ j70;
            j15 = j71 ^ ((~j67) & j62);
            long j97 = ((~j62) & j84) ^ j67;
            long j98 = j74 ^ ((~j79) & j83);
            long j99 = ((~j83) & j82) ^ j79;
            long j100 = j83 ^ ((~j82) & j72);
            long j101 = j82 ^ ((~j72) & j74);
            long j102 = j72 ^ ((~j74) & j79);
            j22 = j68 ^ ((~j77) & j66);
            long j103 = ((~j66) & j73) ^ j77;
            long j104 = j66 ^ ((~j73) & j76);
            long j105 = j73 ^ ((~j76) & j68);
            i3 = i5 + 1;
            j18 = j99;
            j13 = j95;
            j19 = j100;
            j23 = j103;
            j21 = j102;
            j17 = j98;
            j6 = j89;
            j8 = j91;
            c4 = c7;
            j26 = j76 ^ ((~j68) & j77);
            j25 = j105;
            j2 = j86 ^ KeccakRoundConstants[i5];
            jArr = jArr2;
            c2 = c5;
            i2 = i4;
            c3 = c6;
            j4 = j88;
            j3 = j87;
            j20 = j101;
            j24 = j104;
            j14 = j96;
            j9 = j92;
            j16 = j97;
            j11 = j94;
            j10 = j93;
            j7 = j90;
        }
        long[] jArr3 = jArr;
        jArr3[0] = j2;
        jArr3[1] = j3;
        jArr3[c2] = j4;
        jArr3[c3] = j5;
        jArr3[c4] = j6;
        jArr3[5] = j7;
        jArr3[6] = j8;
        jArr3[7] = j9;
        jArr3[8] = j10;
        jArr3[9] = j11;
        jArr3[10] = j12;
        jArr3[11] = j13;
        jArr3[12] = j14;
        jArr3[13] = j15;
        jArr3[14] = j16;
        jArr3[15] = j17;
        jArr3[16] = j18;
        jArr3[17] = j19;
        jArr3[18] = j20;
        jArr3[19] = j21;
        jArr3[20] = j22;
        jArr3[21] = j23;
        jArr3[22] = j24;
        jArr3[23] = j25;
        jArr3[i2] = j26;
    }

    private void init(int i2) {
        if (i2 == 128 || i2 == 224 || i2 == 256 || i2 == 288 || i2 == 384 || i2 == 512) {
            initSponge(1600 - (i2 << 1));
        } else {
            md.n("bitLength must be one of 128, 224, 256, 288, 384, or 512.");
        }
    }

    private void initSponge(int i2) {
        if (i2 <= 0 || i2 >= 1600 || i2 % 64 != 0) {
            md.k("invalid rate value");
            return;
        }
        this.rate = i2;
        int i3 = 0;
        while (true) {
            long[] jArr = this.state;
            if (i3 >= jArr.length) {
                Arrays.fill(this.dataQueue, (byte) 0);
                this.bitsInQueue = 0;
                this.squeezing = false;
                this.fixedOutputLength = (1600 - i2) / 2;
                return;
            }
            jArr[i3] = 0;
            i3++;
        }
    }

    private void padAndSwitchToSqueezingPhase() {
        byte[] bArr = this.dataQueue;
        int i2 = this.bitsInQueue;
        int i3 = i2 >>> 3;
        bArr[i3] = (byte) (bArr[i3] | ((byte) (1 << (i2 & 7))));
        int i4 = i2 + 1;
        this.bitsInQueue = i4;
        if (i4 == this.rate) {
            KeccakAbsorb(bArr, 0);
        } else {
            int i5 = i4 >>> 6;
            int i6 = i4 & 63;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                long[] jArr = this.state;
                jArr[i8] = jArr[i8] ^ Pack.littleEndianToLong(this.dataQueue, i7);
                i7 += 8;
            }
            if (i6 > 0) {
                long[] jArr2 = this.state;
                jArr2[i5] = (((1 << i6) - 1) & Pack.littleEndianToLong(this.dataQueue, i7)) ^ jArr2[i5];
            }
        }
        long[] jArr3 = this.state;
        int i9 = (this.rate - 1) >>> 6;
        jArr3[i9] = jArr3[i9] ^ Long.MIN_VALUE;
        this.bitsInQueue = 0;
        this.squeezing = true;
    }

    public void absorb(byte[] bArr, int i2, int i3) {
        int i4 = this.bitsInQueue;
        if (i4 % 8 != 0) {
            md.k("attempt to absorb with odd length queue");
            return;
        }
        if (this.squeezing) {
            md.k("attempt to absorb while squeezing");
            return;
        }
        int i5 = i4 >>> 3;
        int i6 = this.rate >>> 3;
        int i7 = i6 - i5;
        if (i3 < i7) {
            System.arraycopy(bArr, i2, this.dataQueue, i5, i3);
            this.bitsInQueue += i3 << 3;
            return;
        }
        if (i5 > 0) {
            System.arraycopy(bArr, i2, this.dataQueue, i5, i7);
            KeccakAbsorb(this.dataQueue, 0);
        } else {
            i7 = 0;
        }
        while (true) {
            int i8 = i3 - i7;
            if (i8 < i6) {
                System.arraycopy(bArr, i2 + i7, this.dataQueue, 0, i8);
                this.bitsInQueue = i8 << 3;
                return;
            } else {
                KeccakAbsorb(bArr, i2 + i7);
                i7 += i6;
            }
        }
    }

    public void absorbBits(int i2, int i3) {
        if (i3 < 1 || i3 > 7) {
            md.n("'bits' must be in the range 1 to 7");
            return;
        }
        int i4 = this.bitsInQueue;
        if (i4 % 8 != 0) {
            md.k("attempt to absorb with odd length queue");
        } else if (this.squeezing) {
            md.k("attempt to absorb while squeezing");
        } else {
            this.dataQueue[i4 >>> 3] = (byte) (i2 & ((1 << i3) - 1));
            this.bitsInQueue = i4 + i3;
        }
    }

    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, getDigestSize() * 8, this.purpose);
    }

    public int doFinal(byte[] bArr, int i2, byte b2, int i3) {
        if (i3 > 0) {
            absorbBits(b2, i3);
        }
        squeeze(bArr, i2, this.fixedOutputLength);
        reset();
        return getDigestSize();
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Keccak-" + this.fixedOutputLength;
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.rate / 8;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.fixedOutputLength / 8;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        init(this.fixedOutputLength);
    }

    public void squeeze(byte[] bArr, int i2, long j2) {
        if (!this.squeezing) {
            padAndSwitchToSqueezingPhase();
        }
        long j3 = 0;
        if (j2 % 8 != 0) {
            md.k("outputLength not a multiple of 8");
            return;
        }
        while (j3 < j2) {
            if (this.bitsInQueue == 0) {
                KeccakExtract();
            }
            int iMin = (int) Math.min(this.bitsInQueue, j2 - j3);
            System.arraycopy(this.dataQueue, (this.rate - this.bitsInQueue) / 8, bArr, ((int) (j3 / 8)) + i2, iMin / 8);
            this.bitsInQueue -= iMin;
            j3 += (long) iMin;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b2) {
        absorb(b2);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i2, int i3) {
        absorb(bArr, i2, i3);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        squeeze(bArr, i2, this.fixedOutputLength);
        reset();
        return getDigestSize();
    }

    public KeccakDigest(int i2) {
        this(i2, CryptoServicePurpose.ANY);
    }

    public KeccakDigest(int i2, CryptoServicePurpose cryptoServicePurpose) {
        this.state = new long[25];
        this.dataQueue = new byte[192];
        this.purpose = cryptoServicePurpose;
        init(i2);
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
    }

    public KeccakDigest(CryptoServicePurpose cryptoServicePurpose) {
        this(288, cryptoServicePurpose);
    }

    public KeccakDigest() {
        this(288, CryptoServicePurpose.ANY);
    }

    public void absorb(byte b2) {
        int i2 = this.bitsInQueue;
        if (i2 % 8 != 0) {
            md.k("attempt to absorb with odd length queue");
            return;
        }
        if (this.squeezing) {
            md.k("attempt to absorb while squeezing");
            return;
        }
        byte[] bArr = this.dataQueue;
        bArr[i2 >>> 3] = b2;
        int i3 = i2 + 8;
        this.bitsInQueue = i3;
        if (i3 == this.rate) {
            KeccakAbsorb(bArr, 0);
            this.bitsInQueue = 0;
        }
    }
}
