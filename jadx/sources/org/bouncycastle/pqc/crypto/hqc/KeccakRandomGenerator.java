package org.bouncycastle.pqc.crypto.hqc;

import defpackage.md;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class KeccakRandomGenerator {
    private static long[] KeccakRoundConstants = {1, 32898, -9223372036854742902L, -9223372034707259392L, 32907, 2147483649L, -9223372034707259263L, -9223372036854743031L, 138, 136, 2147516425L, 2147483658L, 2147516555L, -9223372036854775669L, -9223372036854742903L, -9223372036854743037L, -9223372036854743038L, -9223372036854775680L, 32778, -9223372034707292150L, -9223372034707259263L, -9223372036854742912L, 2147483649L, -9223372034707259384L};
    protected int bitsInQueue;
    protected byte[] dataQueue;
    protected int fixedOutputLength;
    protected int rate;
    protected long[] state;

    public KeccakRandomGenerator(int i2) {
        this.state = new long[26];
        this.dataQueue = new byte[192];
        init(i2);
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
        Arrays.fill(this.state, 0L);
        Arrays.fill(this.dataQueue, (byte) 0);
        this.bitsInQueue = 0;
        this.fixedOutputLength = (1600 - i2) / 2;
    }

    private void keccakIncAbsorb(byte[] bArr, int i2) {
        long j2;
        long[] jArr;
        long j3;
        int i3 = this.rate >> 3;
        int i4 = i2;
        int i5 = 0;
        while (true) {
            j2 = i4;
            long j4 = i3;
            if (this.state[25] + j2 < j4) {
                break;
            }
            int i6 = 0;
            while (true) {
                long j5 = i6;
                jArr = this.state;
                j3 = jArr[25];
                if (j5 < j4 - j3) {
                    int i7 = i6;
                    int i8 = ((int) (j3 + j5)) >> 3;
                    jArr[i8] = jArr[i8] ^ (toUnsignedLong(bArr[i7 + i5] & 255) << ((int) (((this.state[25] + j5) & 7) * 8)));
                    i6 = i7 + 1;
                }
            }
            i4 = (int) (j2 - (j4 - j3));
            i5 = (int) ((j4 - j3) + ((long) i5));
            jArr[25] = 0;
            keccakPermutation(jArr);
        }
        int i9 = 0;
        while (true) {
            long[] jArr2 = this.state;
            if (i9 >= i4) {
                jArr2[25] = jArr2[25] + j2;
                return;
            }
            long j6 = i9;
            int i10 = ((int) (jArr2[25] + j6)) >> 3;
            jArr2[i10] = (toUnsignedLong(bArr[i9 + i5] & 255) << ((int) (((this.state[25] + j6) & 7) * 8))) ^ jArr2[i10];
            i9++;
        }
    }

    private void keccakIncFinalize(int i2) {
        int i3 = this.rate >> 3;
        long[] jArr = this.state;
        int i4 = ((int) jArr[25]) >> 3;
        long j2 = jArr[i4];
        long unsignedLong = toUnsignedLong(i2);
        long[] jArr2 = this.state;
        jArr[i4] = j2 ^ (unsignedLong << ((int) ((jArr2[25] & 7) * 8)));
        int i5 = i3 - 1;
        int i6 = i5 >> 3;
        jArr2[i6] = jArr2[i6] ^ (toUnsignedLong(128) << ((i5 & 7) * 8));
        this.state[25] = 0;
    }

    private void keccakIncSqueeze(byte[] bArr, int i2) {
        int i3 = this.rate >> 3;
        int i4 = 0;
        while (i4 < i2) {
            long j2 = i4;
            long[] jArr = this.state;
            long j3 = jArr[25];
            if (j2 >= j3) {
                break;
            }
            long j4 = i3;
            bArr[i4] = (byte) (jArr[(int) (((j4 - j3) + j2) >> 3)] >> ((int) ((7 & ((j4 - j3) + j2)) * 8)));
            i4++;
        }
        int i5 = i2 - i4;
        long[] jArr2 = this.state;
        jArr2[25] = jArr2[25] - ((long) i4);
        while (i5 > 0) {
            keccakPermutation(this.state);
            int i6 = 0;
            while (i6 < i5 && i6 < i3) {
                bArr[i4 + i6] = (byte) (this.state[i6 >> 3] >> ((i6 & 7) * 8));
                i6++;
            }
            i4 += i6;
            i5 -= i6;
            this.state[25] = i3 - i6;
        }
    }

    private static void keccakPermutation(long[] jArr) {
        long j2 = jArr[0];
        long j3 = jArr[1];
        char c2 = 2;
        long j4 = jArr[2];
        char c3 = 3;
        long j5 = jArr[3];
        char c4 = 4;
        long j6 = jArr[4];
        char c5 = 5;
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
            char c6 = c2;
            long j63 = (j43 << 44) | (j43 >>> 20);
            char c7 = c3;
            long j64 = (j58 << 20) | (j58 >>> 44);
            char c8 = c4;
            long j65 = (j51 << 61) | (j51 >>> c7);
            long j66 = (j59 << 39) | (j59 >>> 25);
            long j67 = (j41 << 18) | (j41 >>> 46);
            long j68 = (j47 << 62) | (j47 >>> c6);
            long j69 = (j49 << 43) | (j49 >>> 21);
            long j70 = (j54 << 25) | (j54 >>> 39);
            long j71 = (j60 << 8) | (j60 >>> 56);
            long j72 = (j56 << 56) | (j56 >>> 8);
            int i4 = i2;
            long j73 = (j40 << 41) | (j40 >>> 23);
            int i5 = i3;
            long j74 = (j57 << 27) | (j57 >>> 37);
            long j75 = (j61 << 14) | (j61 >>> 50);
            long j76 = (j46 << c6) | (j46 >>> 62);
            long j77 = (j53 << 55) | (j53 >>> 9);
            long j78 = (j45 << 45) | (j45 >>> 19);
            long j79 = (j38 << 36) | (j38 >>> 28);
            long j80 = (j52 << 28) | (j52 >>> 36);
            long j81 = (j55 << 21) | (j55 >>> 43);
            long j82 = (j50 << 15) | (j50 >>> 49);
            long j83 = (j44 << 10) | (j44 >>> 54);
            long j84 = (j48 << 6) | (j48 >>> 58);
            long j85 = (j39 << c7) | (j39 >>> 61);
            long j86 = j37 ^ ((~j63) & j69);
            long j87 = j63 ^ ((~j69) & j81);
            j4 = j69 ^ ((~j81) & j75);
            long j88 = j81 ^ ((~j75) & j37);
            long j89 = j75 ^ ((~j37) & j63);
            long j90 = ((~j64) & j85) ^ j80;
            long j91 = j64 ^ ((~j85) & j78);
            long j92 = ((~j78) & j65) ^ j85;
            long j93 = ((~j65) & j80) ^ j78;
            long j94 = ((~j80) & j64) ^ j65;
            long j95 = j62 ^ ((~j84) & j70);
            long j96 = ((~j70) & j71) ^ j84;
            long j97 = j70 ^ ((~j71) & j67);
            long j98 = j71 ^ ((~j67) & j62);
            long j99 = j67 ^ ((~j62) & j84);
            long j100 = j74 ^ ((~j79) & j83);
            long j101 = ((~j83) & j82) ^ j79;
            long j102 = j83 ^ ((~j82) & j72);
            long j103 = j82 ^ ((~j72) & j74);
            long j104 = j72 ^ ((~j74) & j79);
            long j105 = j68 ^ ((~j77) & j66);
            long j106 = ((~j66) & j73) ^ j77;
            long j107 = j66 ^ ((~j73) & j76);
            long j108 = j73 ^ ((~j76) & j68);
            long j109 = j76 ^ ((~j68) & j77);
            long j110 = KeccakRoundConstants[i5] ^ j86;
            j16 = j99;
            c4 = c8;
            j10 = j93;
            j7 = j90;
            j3 = j87;
            j20 = j103;
            j26 = j109;
            i2 = i4;
            i3 = i5 + 1;
            j2 = j110;
            j5 = j88;
            c3 = c7;
            c2 = c6;
            j21 = j104;
            j18 = j101;
            j13 = j96;
            j19 = j102;
            j24 = j107;
            j14 = j97;
            j15 = j98;
            j9 = j92;
            j22 = j105;
            j23 = j106;
            j17 = j100;
            j11 = j94;
            j12 = j95;
            j6 = j89;
            j8 = j91;
            c5 = c5;
            j25 = j108;
        }
        jArr[0] = j2;
        jArr[1] = j3;
        jArr[c2] = j4;
        jArr[c3] = j5;
        jArr[c4] = j6;
        jArr[c5] = j7;
        jArr[6] = j8;
        jArr[7] = j9;
        jArr[8] = j10;
        jArr[9] = j11;
        jArr[10] = j12;
        jArr[11] = j13;
        jArr[12] = j14;
        jArr[13] = j15;
        jArr[14] = j16;
        jArr[15] = j17;
        jArr[16] = j18;
        jArr[17] = j19;
        jArr[18] = j20;
        jArr[19] = j21;
        jArr[20] = j22;
        jArr[21] = j23;
        jArr[22] = j24;
        jArr[23] = j25;
        jArr[i2] = j26;
    }

    private static long toUnsignedLong(int i2) {
        return ((long) i2) & BodyPartID.bodyIdMax;
    }

    public void SHAKE256_512_ds(byte[] bArr, byte[] bArr2, int i2, byte[] bArr3) {
        Arrays.fill(this.state, 0L);
        keccakIncAbsorb(bArr2, i2);
        keccakIncAbsorb(bArr3, bArr3.length);
        keccakIncFinalize(31);
        keccakIncSqueeze(bArr, 64);
    }

    public void expandSeed(byte[] bArr, int i2) {
        int i3 = i2 & 7;
        int i4 = i2 - i3;
        keccakIncSqueeze(bArr, i4);
        if (i3 != 0) {
            byte[] bArr2 = new byte[8];
            keccakIncSqueeze(bArr2, 8);
            System.arraycopy(bArr2, 0, bArr, i4, i3);
        }
    }

    public void randomGeneratorInit(byte[] bArr, byte[] bArr2, int i2, int i3) {
        keccakIncAbsorb(bArr, i2);
        keccakIncAbsorb(bArr2, i3);
        keccakIncAbsorb(new byte[]{1}, 1);
        keccakIncFinalize(31);
    }

    public void seedExpanderInit(byte[] bArr, int i2) {
        keccakIncAbsorb(bArr, i2);
        keccakIncAbsorb(new byte[]{2}, 1);
        keccakIncFinalize(31);
    }

    public void squeeze(byte[] bArr, int i2) {
        keccakIncSqueeze(bArr, i2);
    }

    public KeccakRandomGenerator() {
        this(288);
    }
}
