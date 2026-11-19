package org.bouncycastle.crypto.engines;

import defpackage.a;
import defpackage.b21;
import defpackage.ct0;
import defpackage.md;
import defpackage.mt;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.TweakableBlockCipherParameters;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class ThreefishEngine implements BlockCipher {
    public static final int BLOCKSIZE_1024 = 1024;
    public static final int BLOCKSIZE_256 = 256;
    public static final int BLOCKSIZE_512 = 512;
    private static final long C_240 = 2004413935125273122L;
    private static final int MAX_ROUNDS = 80;
    private static int[] MOD17 = null;
    private static int[] MOD3 = null;
    private static int[] MOD5 = null;
    private static int[] MOD9 = null;
    private static final int ROUNDS_1024 = 80;
    private static final int ROUNDS_256 = 72;
    private static final int ROUNDS_512 = 72;
    private static final int TWEAK_SIZE_BYTES = 16;
    private static final int TWEAK_SIZE_WORDS = 2;
    private int blocksizeBytes;
    private int blocksizeWords;
    private ThreefishCipher cipher;
    private long[] currentBlock;
    private boolean forEncryption;
    private long[] kw;
    private long[] t;

    public static final class Threefish1024Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 24;
        private static final int ROTATION_0_1 = 13;
        private static final int ROTATION_0_2 = 8;
        private static final int ROTATION_0_3 = 47;
        private static final int ROTATION_0_4 = 8;
        private static final int ROTATION_0_5 = 17;
        private static final int ROTATION_0_6 = 22;
        private static final int ROTATION_0_7 = 37;
        private static final int ROTATION_1_0 = 38;
        private static final int ROTATION_1_1 = 19;
        private static final int ROTATION_1_2 = 10;
        private static final int ROTATION_1_3 = 55;
        private static final int ROTATION_1_4 = 49;
        private static final int ROTATION_1_5 = 18;
        private static final int ROTATION_1_6 = 23;
        private static final int ROTATION_1_7 = 52;
        private static final int ROTATION_2_0 = 33;
        private static final int ROTATION_2_1 = 4;
        private static final int ROTATION_2_2 = 51;
        private static final int ROTATION_2_3 = 13;
        private static final int ROTATION_2_4 = 34;
        private static final int ROTATION_2_5 = 41;
        private static final int ROTATION_2_6 = 59;
        private static final int ROTATION_2_7 = 17;
        private static final int ROTATION_3_0 = 5;
        private static final int ROTATION_3_1 = 20;
        private static final int ROTATION_3_2 = 48;
        private static final int ROTATION_3_3 = 41;
        private static final int ROTATION_3_4 = 47;
        private static final int ROTATION_3_5 = 28;
        private static final int ROTATION_3_6 = 16;
        private static final int ROTATION_3_7 = 25;
        private static final int ROTATION_4_0 = 41;
        private static final int ROTATION_4_1 = 9;
        private static final int ROTATION_4_2 = 37;
        private static final int ROTATION_4_3 = 31;
        private static final int ROTATION_4_4 = 12;
        private static final int ROTATION_4_5 = 47;
        private static final int ROTATION_4_6 = 44;
        private static final int ROTATION_4_7 = 30;
        private static final int ROTATION_5_0 = 16;
        private static final int ROTATION_5_1 = 34;
        private static final int ROTATION_5_2 = 56;
        private static final int ROTATION_5_3 = 51;
        private static final int ROTATION_5_4 = 4;
        private static final int ROTATION_5_5 = 53;
        private static final int ROTATION_5_6 = 42;
        private static final int ROTATION_5_7 = 41;
        private static final int ROTATION_6_0 = 31;
        private static final int ROTATION_6_1 = 44;
        private static final int ROTATION_6_2 = 47;
        private static final int ROTATION_6_3 = 46;
        private static final int ROTATION_6_4 = 19;
        private static final int ROTATION_6_5 = 42;
        private static final int ROTATION_6_6 = 44;
        private static final int ROTATION_6_7 = 25;
        private static final int ROTATION_7_0 = 9;
        private static final int ROTATION_7_1 = 48;
        private static final int ROTATION_7_2 = 35;
        private static final int ROTATION_7_3 = 52;
        private static final int ROTATION_7_4 = 23;
        private static final int ROTATION_7_5 = 31;
        private static final int ROTATION_7_6 = 37;
        private static final int ROTATION_7_7 = 20;

        public Threefish1024Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.t;
            int[] iArr = ThreefishEngine.MOD17;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 33) {
                ct0.c();
                return;
            }
            if (jArr4.length != 5) {
                ct0.c();
                return;
            }
            long j2 = jArr[0];
            int i2 = 1;
            long j3 = jArr[1];
            long j4 = jArr[2];
            long j5 = jArr[3];
            long j6 = jArr[4];
            long j7 = jArr[5];
            long j8 = jArr[6];
            long j9 = jArr[7];
            long j10 = jArr[8];
            int i3 = 9;
            long j11 = jArr[9];
            long j12 = jArr[10];
            long jXorRotr = jArr[11];
            long j13 = jArr[12];
            long j14 = jArr[13];
            long j15 = jArr[14];
            long jXorRotr2 = jArr[15];
            int i4 = 19;
            while (i4 >= i2) {
                int i5 = iArr[i4];
                int i6 = iArr2[i4];
                int i7 = i5 + 1;
                long j16 = j2 - jArr3[i7];
                int i8 = i5 + 2;
                long j17 = j3 - jArr3[i8];
                int i9 = i5 + 3;
                long j18 = j4 - jArr3[i9];
                int i10 = i5 + 4;
                long j19 = j5 - jArr3[i10];
                int i11 = i5 + 5;
                int i12 = i2;
                long j20 = j6 - jArr3[i11];
                int i13 = i5 + 6;
                long j21 = j7 - jArr3[i13];
                int i14 = i5 + 7;
                long[] jArr5 = jArr4;
                long[] jArr6 = jArr3;
                long j22 = j8 - jArr3[i14];
                int i15 = i5 + 8;
                int[] iArr3 = iArr;
                long j23 = j9 - jArr6[i15];
                int i16 = i5 + 9;
                long j24 = j10 - jArr6[i16];
                int i17 = i5 + 10;
                long j25 = j11 - jArr6[i17];
                int i18 = i5 + 11;
                long j26 = j12 - jArr6[i18];
                int i19 = i5 + 12;
                long j27 = jXorRotr - jArr6[i19];
                int i20 = i5 + 13;
                long j28 = j13 - jArr6[i20];
                int i21 = i5 + 14;
                int i22 = i6 + 1;
                long j29 = j14 - (jArr6[i21] + jArr5[i22]);
                int i23 = i5 + 15;
                long j30 = j15 - (jArr6[i23] + jArr5[i6 + 2]);
                long j31 = i4;
                long jXorRotr3 = ThreefishEngine.xorRotr(jXorRotr2 - ((jArr6[i5 + 16] + j31) + 1), i3, j16);
                long j32 = j16 - jXorRotr3;
                long jXorRotr4 = ThreefishEngine.xorRotr(j27, 48, j18);
                long j33 = j18 - jXorRotr4;
                long jXorRotr5 = ThreefishEngine.xorRotr(j29, 35, j22);
                long j34 = j22 - jXorRotr5;
                long jXorRotr6 = ThreefishEngine.xorRotr(j25, 52, j20);
                long j35 = j20 - jXorRotr6;
                long jXorRotr7 = ThreefishEngine.xorRotr(j17, 23, j30);
                long j36 = j30 - jXorRotr7;
                long jXorRotr8 = ThreefishEngine.xorRotr(j21, 31, j24);
                long j37 = j24 - jXorRotr8;
                long jXorRotr9 = ThreefishEngine.xorRotr(j19, 37, j26);
                long j38 = j26 - jXorRotr9;
                long jXorRotr10 = ThreefishEngine.xorRotr(j23, 20, j28);
                long j39 = j28 - jXorRotr10;
                long jXorRotr11 = ThreefishEngine.xorRotr(jXorRotr10, 31, j32);
                long j40 = j32 - jXorRotr11;
                long jXorRotr12 = ThreefishEngine.xorRotr(jXorRotr8, 44, j33);
                long j41 = j33 - jXorRotr12;
                long jXorRotr13 = ThreefishEngine.xorRotr(jXorRotr9, 47, j35);
                long j42 = j35 - jXorRotr13;
                long jXorRotr14 = ThreefishEngine.xorRotr(jXorRotr7, 46, j34);
                long j43 = j34 - jXorRotr14;
                long jXorRotr15 = ThreefishEngine.xorRotr(jXorRotr3, 19, j39);
                long j44 = j39 - jXorRotr15;
                long jXorRotr16 = ThreefishEngine.xorRotr(jXorRotr5, 42, j36);
                long j45 = j36 - jXorRotr16;
                long jXorRotr17 = ThreefishEngine.xorRotr(jXorRotr4, 44, j37);
                long j46 = j37 - jXorRotr17;
                long jXorRotr18 = ThreefishEngine.xorRotr(jXorRotr6, 25, j38);
                long j47 = j38 - jXorRotr18;
                long jXorRotr19 = ThreefishEngine.xorRotr(jXorRotr18, 16, j40);
                long j48 = j40 - jXorRotr19;
                long jXorRotr20 = ThreefishEngine.xorRotr(jXorRotr16, 34, j41);
                long j49 = j41 - jXorRotr20;
                long jXorRotr21 = ThreefishEngine.xorRotr(jXorRotr17, 56, j43);
                long j50 = j43 - jXorRotr21;
                long jXorRotr22 = ThreefishEngine.xorRotr(jXorRotr15, 51, j42);
                long j51 = j42 - jXorRotr22;
                long jXorRotr23 = ThreefishEngine.xorRotr(jXorRotr11, 4, j47);
                long j52 = j47 - jXorRotr23;
                long jXorRotr24 = ThreefishEngine.xorRotr(jXorRotr13, 53, j44);
                long j53 = j44 - jXorRotr24;
                long jXorRotr25 = ThreefishEngine.xorRotr(jXorRotr12, 42, j45);
                long j54 = j45 - jXorRotr25;
                long jXorRotr26 = ThreefishEngine.xorRotr(jXorRotr14, 41, j46);
                long j55 = j46 - jXorRotr26;
                long jXorRotr27 = ThreefishEngine.xorRotr(jXorRotr26, 41, j48);
                long j56 = j48 - jXorRotr27;
                long jXorRotr28 = ThreefishEngine.xorRotr(jXorRotr24, 9, j49);
                long jXorRotr29 = ThreefishEngine.xorRotr(jXorRotr25, 37, j51);
                long j57 = j51 - jXorRotr29;
                long jXorRotr30 = ThreefishEngine.xorRotr(jXorRotr23, 31, j50);
                long j58 = j50 - jXorRotr30;
                long jXorRotr31 = ThreefishEngine.xorRotr(jXorRotr19, 12, j55);
                long j59 = j55 - jXorRotr31;
                long jXorRotr32 = ThreefishEngine.xorRotr(jXorRotr21, 47, j52);
                long j60 = j52 - jXorRotr32;
                long jXorRotr33 = ThreefishEngine.xorRotr(jXorRotr20, 44, j53);
                long j61 = j53 - jXorRotr33;
                long jXorRotr34 = ThreefishEngine.xorRotr(jXorRotr22, 30, j54);
                long j62 = j54 - jXorRotr34;
                long j63 = j56 - jArr6[i5];
                long j64 = jXorRotr27 - jArr6[i7];
                long j65 = (j49 - jXorRotr28) - jArr6[i8];
                long j66 = jXorRotr28 - jArr6[i9];
                long j67 = j57 - jArr6[i10];
                long j68 = jXorRotr29 - jArr6[i11];
                long j69 = j58 - jArr6[i13];
                long j70 = jXorRotr30 - jArr6[i14];
                long j71 = j59 - jArr6[i15];
                long j72 = jXorRotr31 - jArr6[i16];
                long j73 = j60 - jArr6[i17];
                long j74 = jXorRotr32 - jArr6[i18];
                long j75 = j61 - jArr6[i19];
                long j76 = jXorRotr33 - (jArr6[i20] + jArr5[i6]);
                long j77 = j62 - (jArr6[i21] + jArr5[i22]);
                long jXorRotr35 = ThreefishEngine.xorRotr(jXorRotr34 - (jArr6[i23] + j31), 5, j63);
                long j78 = j63 - jXorRotr35;
                long jXorRotr36 = ThreefishEngine.xorRotr(j74, 20, j65);
                long j79 = j65 - jXorRotr36;
                long jXorRotr37 = ThreefishEngine.xorRotr(j76, 48, j69);
                long j80 = j69 - jXorRotr37;
                int i24 = i4;
                long jXorRotr38 = ThreefishEngine.xorRotr(j72, 41, j67);
                long j81 = j67 - jXorRotr38;
                long jXorRotr39 = ThreefishEngine.xorRotr(j64, 47, j77);
                long j82 = j77 - jXorRotr39;
                long jXorRotr40 = ThreefishEngine.xorRotr(j68, 28, j71);
                long j83 = j71 - jXorRotr40;
                long jXorRotr41 = ThreefishEngine.xorRotr(j66, 16, j73);
                long j84 = j73 - jXorRotr41;
                long jXorRotr42 = ThreefishEngine.xorRotr(j70, 25, j75);
                long j85 = j75 - jXorRotr42;
                long jXorRotr43 = ThreefishEngine.xorRotr(jXorRotr42, 33, j78);
                long j86 = j78 - jXorRotr43;
                long jXorRotr44 = ThreefishEngine.xorRotr(jXorRotr40, 4, j79);
                long j87 = j79 - jXorRotr44;
                long jXorRotr45 = ThreefishEngine.xorRotr(jXorRotr41, 51, j81);
                long j88 = j81 - jXorRotr45;
                long jXorRotr46 = ThreefishEngine.xorRotr(jXorRotr39, 13, j80);
                long j89 = j80 - jXorRotr46;
                long jXorRotr47 = ThreefishEngine.xorRotr(jXorRotr35, 34, j85);
                long j90 = j85 - jXorRotr47;
                long jXorRotr48 = ThreefishEngine.xorRotr(jXorRotr37, 41, j82);
                long j91 = j82 - jXorRotr48;
                long jXorRotr49 = ThreefishEngine.xorRotr(jXorRotr36, 59, j83);
                long j92 = j83 - jXorRotr49;
                long jXorRotr50 = ThreefishEngine.xorRotr(jXorRotr38, 17, j84);
                long j93 = j84 - jXorRotr50;
                long jXorRotr51 = ThreefishEngine.xorRotr(jXorRotr50, 38, j86);
                long j94 = j86 - jXorRotr51;
                long jXorRotr52 = ThreefishEngine.xorRotr(jXorRotr48, 19, j87);
                long j95 = j87 - jXorRotr52;
                long jXorRotr53 = ThreefishEngine.xorRotr(jXorRotr49, 10, j89);
                long j96 = j89 - jXorRotr53;
                long jXorRotr54 = ThreefishEngine.xorRotr(jXorRotr47, 55, j88);
                long j97 = j88 - jXorRotr54;
                long jXorRotr55 = ThreefishEngine.xorRotr(jXorRotr43, ROTATION_1_4, j93);
                long j98 = j93 - jXorRotr55;
                long jXorRotr56 = ThreefishEngine.xorRotr(jXorRotr45, 18, j90);
                long j99 = j90 - jXorRotr56;
                long jXorRotr57 = ThreefishEngine.xorRotr(jXorRotr44, 23, j91);
                long j100 = j91 - jXorRotr57;
                long jXorRotr58 = ThreefishEngine.xorRotr(jXorRotr46, 52, j92);
                long j101 = j92 - jXorRotr58;
                long jXorRotr59 = ThreefishEngine.xorRotr(jXorRotr58, 24, j94);
                long j102 = j94 - jXorRotr59;
                long jXorRotr60 = ThreefishEngine.xorRotr(jXorRotr56, 13, j95);
                long jXorRotr61 = ThreefishEngine.xorRotr(jXorRotr57, 8, j97);
                long j103 = j97 - jXorRotr61;
                long jXorRotr62 = ThreefishEngine.xorRotr(jXorRotr55, 47, j96);
                long j104 = j96 - jXorRotr62;
                long jXorRotr63 = ThreefishEngine.xorRotr(jXorRotr51, 8, j101);
                long j105 = j101 - jXorRotr63;
                jXorRotr = ThreefishEngine.xorRotr(jXorRotr53, 17, j98);
                long jXorRotr64 = ThreefishEngine.xorRotr(jXorRotr52, 22, j99);
                j13 = j99 - jXorRotr64;
                jXorRotr2 = ThreefishEngine.xorRotr(jXorRotr54, 37, j100);
                j15 = j100 - jXorRotr2;
                j14 = jXorRotr64;
                j9 = jXorRotr62;
                jArr3 = jArr6;
                jArr4 = jArr5;
                iArr2 = iArr2;
                j12 = j98 - jXorRotr;
                j10 = j105;
                j7 = jXorRotr61;
                i3 = 9;
                i4 = i24 - 2;
                j2 = j102;
                iArr = iArr3;
                j11 = jXorRotr63;
                j6 = j103;
                j5 = jXorRotr60;
                i2 = i12;
                j4 = j95 - jXorRotr60;
                j3 = jXorRotr59;
                j8 = j104;
            }
            long[] jArr7 = jArr4;
            long[] jArr8 = jArr3;
            int i25 = i2;
            long j106 = j2 - jArr8[0];
            long j107 = j3 - jArr8[i25];
            long j108 = j4 - jArr8[2];
            long j109 = j5 - jArr8[3];
            long j110 = j6 - jArr8[4];
            long j111 = j7 - jArr8[5];
            long j112 = j8 - jArr8[6];
            long j113 = j9 - jArr8[7];
            long j114 = j10 - jArr8[8];
            long j115 = j11 - jArr8[9];
            long j116 = j12 - jArr8[10];
            long j117 = jXorRotr - jArr8[11];
            long j118 = j13 - jArr8[12];
            long j119 = j14 - (jArr8[13] + jArr7[0]);
            long j120 = j15 - (jArr8[14] + jArr7[i25]);
            long j121 = jXorRotr2 - jArr8[15];
            jArr2[0] = j106;
            jArr2[i25] = j107;
            jArr2[2] = j108;
            jArr2[3] = j109;
            jArr2[4] = j110;
            jArr2[5] = j111;
            jArr2[6] = j112;
            jArr2[7] = j113;
            jArr2[8] = j114;
            jArr2[9] = j115;
            jArr2[10] = j116;
            jArr2[11] = j117;
            jArr2[12] = j118;
            jArr2[13] = j119;
            jArr2[14] = j120;
            jArr2[15] = j121;
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.t;
            int[] iArr = ThreefishEngine.MOD17;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 33) {
                ct0.c();
                return;
            }
            if (jArr4.length != 5) {
                ct0.c();
                return;
            }
            long j2 = jArr[0];
            long j3 = jArr[1];
            long j4 = jArr[2];
            long j5 = jArr[3];
            long j6 = jArr[4];
            long j7 = jArr[5];
            long j8 = jArr[6];
            long j9 = jArr[7];
            long j10 = jArr[8];
            long j11 = jArr[9];
            long j12 = jArr[10];
            long j13 = jArr[11];
            int i2 = 9;
            long j14 = jArr[12];
            int i3 = 12;
            long j15 = jArr[13];
            long j16 = jArr[14];
            long j17 = jArr[15];
            long j18 = j2 + jArr3[0];
            long j19 = j3 + jArr3[1];
            long j20 = j4 + jArr3[2];
            long j21 = j5 + jArr3[3];
            long j22 = j6 + jArr3[4];
            long j23 = j7 + jArr3[5];
            long j24 = j8 + jArr3[6];
            long j25 = j9 + jArr3[7];
            long j26 = j10 + jArr3[8];
            long j27 = j11 + jArr3[9];
            long j28 = j12 + jArr3[10];
            long j29 = j13 + jArr3[11];
            long j30 = j14 + jArr3[12];
            long j31 = jArr3[13] + jArr4[0] + j15;
            long j32 = jArr3[14] + jArr4[1] + j16;
            long j33 = j23;
            long j34 = j25;
            long j35 = j27;
            long j36 = j29;
            long j37 = j17 + jArr3[15];
            long j38 = j31;
            long j39 = j22;
            int i4 = 1;
            long j40 = j21;
            long j41 = j18;
            while (i4 < 20) {
                int i5 = iArr[i4];
                int i6 = iArr2[i4];
                long j42 = j41 + j19;
                long jRotlXor = ThreefishEngine.rotlXor(j19, 24, j42);
                long j43 = j20 + j40;
                long jRotlXor2 = ThreefishEngine.rotlXor(j40, 13, j43);
                long j44 = j39 + j33;
                long jRotlXor3 = ThreefishEngine.rotlXor(j33, 8, j44);
                long j45 = j34;
                long j46 = j24 + j45;
                long jRotlXor4 = ThreefishEngine.rotlXor(j45, 47, j46);
                long[] jArr5 = jArr4;
                long[] jArr6 = jArr3;
                int[] iArr3 = iArr;
                long j47 = j35;
                long j48 = j26 + j47;
                long jRotlXor5 = ThreefishEngine.rotlXor(j47, 8, j48);
                long j49 = j36;
                long j50 = j28 + j49;
                long jRotlXor6 = ThreefishEngine.rotlXor(j49, 17, j50);
                long j51 = j38;
                long j52 = j30 + j51;
                long jRotlXor7 = ThreefishEngine.rotlXor(j51, 22, j52);
                long j53 = j37;
                long j54 = j32 + j53;
                long jRotlXor8 = ThreefishEngine.rotlXor(j53, 37, j54);
                long j55 = j42 + jRotlXor5;
                long jRotlXor9 = ThreefishEngine.rotlXor(jRotlXor5, 38, j55);
                long j56 = j43 + jRotlXor7;
                long jRotlXor10 = ThreefishEngine.rotlXor(jRotlXor7, 19, j56);
                long j57 = j46 + jRotlXor6;
                long jRotlXor11 = ThreefishEngine.rotlXor(jRotlXor6, 10, j57);
                long j58 = j44 + jRotlXor8;
                long jRotlXor12 = ThreefishEngine.rotlXor(jRotlXor8, 55, j58);
                long j59 = j50 + jRotlXor4;
                long jRotlXor13 = ThreefishEngine.rotlXor(jRotlXor4, ROTATION_1_4, j59);
                long j60 = j52 + jRotlXor2;
                long jRotlXor14 = ThreefishEngine.rotlXor(jRotlXor2, 18, j60);
                long j61 = j54 + jRotlXor3;
                long jRotlXor15 = ThreefishEngine.rotlXor(jRotlXor3, 23, j61);
                long j62 = j48 + jRotlXor;
                long jRotlXor16 = ThreefishEngine.rotlXor(jRotlXor, 52, j62);
                long j63 = j55 + jRotlXor13;
                long jRotlXor17 = ThreefishEngine.rotlXor(jRotlXor13, 33, j63);
                long j64 = j56 + jRotlXor15;
                long jRotlXor18 = ThreefishEngine.rotlXor(jRotlXor15, 4, j64);
                long j65 = j58 + jRotlXor14;
                long jRotlXor19 = ThreefishEngine.rotlXor(jRotlXor14, 51, j65);
                long j66 = j57 + jRotlXor16;
                long jRotlXor20 = ThreefishEngine.rotlXor(jRotlXor16, 13, j66);
                long j67 = j60 + jRotlXor12;
                long jRotlXor21 = ThreefishEngine.rotlXor(jRotlXor12, 34, j67);
                long j68 = j61 + jRotlXor10;
                long jRotlXor22 = ThreefishEngine.rotlXor(jRotlXor10, 41, j68);
                long j69 = j62 + jRotlXor11;
                long jRotlXor23 = ThreefishEngine.rotlXor(jRotlXor11, 59, j69);
                long j70 = j59 + jRotlXor9;
                long jRotlXor24 = ThreefishEngine.rotlXor(jRotlXor9, 17, j70);
                long j71 = j63 + jRotlXor21;
                long jRotlXor25 = ThreefishEngine.rotlXor(jRotlXor21, 5, j71);
                long j72 = j64 + jRotlXor23;
                long jRotlXor26 = ThreefishEngine.rotlXor(jRotlXor23, 20, j72);
                long j73 = j66 + jRotlXor22;
                long jRotlXor27 = ThreefishEngine.rotlXor(jRotlXor22, 48, j73);
                long j74 = j65 + jRotlXor24;
                long jRotlXor28 = ThreefishEngine.rotlXor(jRotlXor24, 41, j74);
                long j75 = j68 + jRotlXor20;
                long jRotlXor29 = ThreefishEngine.rotlXor(jRotlXor20, 47, j75);
                long j76 = j69 + jRotlXor18;
                long jRotlXor30 = ThreefishEngine.rotlXor(jRotlXor18, 28, j76);
                long j77 = j70 + jRotlXor19;
                long jRotlXor31 = ThreefishEngine.rotlXor(jRotlXor19, 16, j77);
                long j78 = j67 + jRotlXor17;
                long jRotlXor32 = ThreefishEngine.rotlXor(jRotlXor17, 25, j78);
                long j79 = j71 + jArr6[i5];
                int i7 = i5 + 1;
                long j80 = jRotlXor29 + jArr6[i7];
                int i8 = i5 + 2;
                long j81 = j72 + jArr6[i8];
                int i9 = i5 + 3;
                long j82 = jRotlXor31 + jArr6[i9];
                int i10 = i5 + 4;
                long j83 = j74 + jArr6[i10];
                int i11 = i5 + 5;
                long j84 = jRotlXor30 + jArr6[i11];
                int i12 = i5 + 6;
                long j85 = j73 + jArr6[i12];
                int i13 = i5 + 7;
                long j86 = jRotlXor32 + jArr6[i13];
                int i14 = i5 + 8;
                long j87 = j76 + jArr6[i14];
                int i15 = i5 + 9;
                long j88 = jRotlXor28 + jArr6[i15];
                int i16 = i5 + 10;
                long j89 = j77 + jArr6[i16];
                int i17 = i5 + 11;
                long j90 = jRotlXor26 + jArr6[i17];
                int i18 = i5 + 12;
                long j91 = j78 + jArr6[i18];
                int i19 = i5 + 13;
                long j92 = jArr6[i19] + jArr5[i6] + jRotlXor27;
                int i20 = i5 + 14;
                int i21 = i6 + 1;
                long j93 = jArr6[i20] + jArr5[i21] + j75;
                int i22 = i5 + 15;
                long j94 = i4;
                long j95 = jArr6[i22] + j94 + jRotlXor25;
                long j96 = j79 + j80;
                long jRotlXor33 = ThreefishEngine.rotlXor(j80, 41, j96);
                long j97 = j81 + j82;
                long jRotlXor34 = ThreefishEngine.rotlXor(j82, i2, j97);
                long j98 = j83 + j84;
                long jRotlXor35 = ThreefishEngine.rotlXor(j84, 37, j98);
                long j99 = j85 + j86;
                long jRotlXor36 = ThreefishEngine.rotlXor(j86, 31, j99);
                long j100 = j87 + j88;
                long jRotlXor37 = ThreefishEngine.rotlXor(j88, i3, j100);
                long j101 = j89 + j90;
                long jRotlXor38 = ThreefishEngine.rotlXor(j90, 47, j101);
                long j102 = j91 + j92;
                long jRotlXor39 = ThreefishEngine.rotlXor(j92, 44, j102);
                long j103 = j93 + j95;
                long jRotlXor40 = ThreefishEngine.rotlXor(j95, 30, j103);
                long j104 = j96 + jRotlXor37;
                long jRotlXor41 = ThreefishEngine.rotlXor(jRotlXor37, 16, j104);
                long j105 = j97 + jRotlXor39;
                long jRotlXor42 = ThreefishEngine.rotlXor(jRotlXor39, 34, j105);
                long j106 = j99 + jRotlXor38;
                long jRotlXor43 = ThreefishEngine.rotlXor(jRotlXor38, 56, j106);
                long j107 = j98 + jRotlXor40;
                long jRotlXor44 = ThreefishEngine.rotlXor(jRotlXor40, 51, j107);
                long j108 = j101 + jRotlXor36;
                long jRotlXor45 = ThreefishEngine.rotlXor(jRotlXor36, 4, j108);
                long j109 = j102 + jRotlXor34;
                long jRotlXor46 = ThreefishEngine.rotlXor(jRotlXor34, 53, j109);
                long j110 = j103 + jRotlXor35;
                int i23 = i4;
                long jRotlXor47 = ThreefishEngine.rotlXor(jRotlXor35, 42, j110);
                long j111 = j100 + jRotlXor33;
                long jRotlXor48 = ThreefishEngine.rotlXor(jRotlXor33, 41, j111);
                long j112 = j104 + jRotlXor45;
                long jRotlXor49 = ThreefishEngine.rotlXor(jRotlXor45, 31, j112);
                long j113 = j105 + jRotlXor47;
                long jRotlXor50 = ThreefishEngine.rotlXor(jRotlXor47, 44, j113);
                long j114 = j107 + jRotlXor46;
                long jRotlXor51 = ThreefishEngine.rotlXor(jRotlXor46, 47, j114);
                long j115 = j106 + jRotlXor48;
                long jRotlXor52 = ThreefishEngine.rotlXor(jRotlXor48, 46, j115);
                long j116 = j109 + jRotlXor44;
                long jRotlXor53 = ThreefishEngine.rotlXor(jRotlXor44, 19, j116);
                long j117 = j110 + jRotlXor42;
                long jRotlXor54 = ThreefishEngine.rotlXor(jRotlXor42, 42, j117);
                long j118 = j111 + jRotlXor43;
                long jRotlXor55 = ThreefishEngine.rotlXor(jRotlXor43, 44, j118);
                long j119 = j108 + jRotlXor41;
                long jRotlXor56 = ThreefishEngine.rotlXor(jRotlXor41, 25, j119);
                long j120 = j112 + jRotlXor53;
                long jRotlXor57 = ThreefishEngine.rotlXor(jRotlXor53, 9, j120);
                long j121 = j113 + jRotlXor55;
                long jRotlXor58 = ThreefishEngine.rotlXor(jRotlXor55, 48, j121);
                long j122 = j115 + jRotlXor54;
                long jRotlXor59 = ThreefishEngine.rotlXor(jRotlXor54, 35, j122);
                long j123 = j114 + jRotlXor56;
                long jRotlXor60 = ThreefishEngine.rotlXor(jRotlXor56, 52, j123);
                long j124 = j117 + jRotlXor52;
                long jRotlXor61 = ThreefishEngine.rotlXor(jRotlXor52, 23, j124);
                long j125 = j118 + jRotlXor50;
                long jRotlXor62 = ThreefishEngine.rotlXor(jRotlXor50, 31, j125);
                long j126 = j119 + jRotlXor51;
                long jRotlXor63 = ThreefishEngine.rotlXor(jRotlXor51, 37, j126);
                long j127 = j116 + jRotlXor49;
                long jRotlXor64 = ThreefishEngine.rotlXor(jRotlXor49, 20, j127);
                long j128 = jArr6[i7] + j120;
                long j129 = jRotlXor61 + jArr6[i8];
                long j130 = j121 + jArr6[i9];
                long j131 = jRotlXor63 + jArr6[i10];
                long j132 = j123 + jArr6[i11];
                long j133 = jRotlXor62 + jArr6[i12];
                long j134 = j122 + jArr6[i13];
                long j135 = jRotlXor64 + jArr6[i14];
                long j136 = j125 + jArr6[i15];
                j35 = jRotlXor60 + jArr6[i16];
                long j137 = j126 + jArr6[i17];
                long j138 = jRotlXor58 + jArr6[i18];
                long j139 = j127 + jArr6[i19];
                j38 = jArr6[i20] + jArr5[i21] + jRotlXor59;
                j32 = jArr6[i22] + jArr5[i6 + 2] + j124;
                j37 = jArr6[i5 + 16] + j94 + 1 + jRotlXor57;
                j34 = j135;
                j24 = j134;
                j36 = j138;
                j40 = j131;
                jArr3 = jArr6;
                jArr4 = jArr5;
                i2 = 9;
                i3 = 12;
                j41 = j128;
                j26 = j136;
                j19 = j129;
                j33 = j133;
                j28 = j137;
                j20 = j130;
                i4 = i23 + 2;
                j39 = j132;
                j30 = j139;
                iArr = iArr3;
                iArr2 = iArr2;
            }
            jArr2[0] = j41;
            jArr2[1] = j19;
            jArr2[2] = j20;
            jArr2[3] = j40;
            jArr2[4] = j39;
            jArr2[5] = j33;
            jArr2[6] = j24;
            jArr2[7] = j34;
            jArr2[8] = j26;
            jArr2[9] = j35;
            jArr2[10] = j28;
            jArr2[11] = j36;
            jArr2[12] = j30;
            jArr2[13] = j38;
            jArr2[14] = j32;
            jArr2[15] = j37;
        }
    }

    public static final class Threefish256Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 14;
        private static final int ROTATION_0_1 = 16;
        private static final int ROTATION_1_0 = 52;
        private static final int ROTATION_1_1 = 57;
        private static final int ROTATION_2_0 = 23;
        private static final int ROTATION_2_1 = 40;
        private static final int ROTATION_3_0 = 5;
        private static final int ROTATION_3_1 = 37;
        private static final int ROTATION_4_0 = 25;
        private static final int ROTATION_4_1 = 33;
        private static final int ROTATION_5_0 = 46;
        private static final int ROTATION_5_1 = 12;
        private static final int ROTATION_6_0 = 58;
        private static final int ROTATION_6_1 = 22;
        private static final int ROTATION_7_0 = 32;
        private static final int ROTATION_7_1 = 32;

        public Threefish256Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.t;
            int[] iArr = ThreefishEngine.MOD5;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 9) {
                ct0.c();
                return;
            }
            if (jArr4.length != 5) {
                ct0.c();
                return;
            }
            long j2 = jArr[0];
            int i2 = 1;
            long j3 = jArr[1];
            char c2 = 2;
            long j4 = jArr[2];
            char c3 = 3;
            long j5 = jArr[3];
            int i3 = 17;
            while (i3 >= i2) {
                int i4 = iArr[i3];
                int i5 = iArr2[i3];
                int i6 = i4 + 1;
                long j6 = j2 - jArr3[i6];
                int i7 = i4 + 2;
                int i8 = i5 + 1;
                long j7 = j3 - (jArr3[i7] + jArr4[i8]);
                int i9 = i4 + 3;
                long j8 = j4 - (jArr3[i9] + jArr4[i5 + 2]);
                char c4 = c3;
                long j9 = i3;
                int i10 = i2;
                long jXorRotr = ThreefishEngine.xorRotr(j5 - ((jArr3[i4 + 4] + j9) + 1), 32, j6);
                long j10 = j6 - jXorRotr;
                long jXorRotr2 = ThreefishEngine.xorRotr(j7, 32, j8);
                long j11 = j8 - jXorRotr2;
                long jXorRotr3 = ThreefishEngine.xorRotr(jXorRotr2, 58, j10);
                long j12 = j10 - jXorRotr3;
                long jXorRotr4 = ThreefishEngine.xorRotr(jXorRotr, 22, j11);
                long j13 = j11 - jXorRotr4;
                long jXorRotr5 = ThreefishEngine.xorRotr(jXorRotr4, 46, j12);
                long j14 = j12 - jXorRotr5;
                long jXorRotr6 = ThreefishEngine.xorRotr(jXorRotr3, 12, j13);
                long j15 = j13 - jXorRotr6;
                long jXorRotr7 = ThreefishEngine.xorRotr(jXorRotr6, 25, j14);
                long jXorRotr8 = ThreefishEngine.xorRotr(jXorRotr5, 33, j15);
                long j16 = (j14 - jXorRotr7) - jArr3[i4];
                long j17 = jXorRotr7 - (jArr3[i6] + jArr4[i5]);
                long j18 = (j15 - jXorRotr8) - (jArr3[i7] + jArr4[i8]);
                long jXorRotr9 = ThreefishEngine.xorRotr(jXorRotr8 - (jArr3[i9] + j9), 5, j16);
                long j19 = j16 - jXorRotr9;
                long jXorRotr10 = ThreefishEngine.xorRotr(j17, 37, j18);
                long j20 = j18 - jXorRotr10;
                long jXorRotr11 = ThreefishEngine.xorRotr(jXorRotr10, 23, j19);
                long j21 = j19 - jXorRotr11;
                long jXorRotr12 = ThreefishEngine.xorRotr(jXorRotr9, 40, j20);
                long j22 = j20 - jXorRotr12;
                long jXorRotr13 = ThreefishEngine.xorRotr(jXorRotr12, 52, j21);
                long j23 = j21 - jXorRotr13;
                long jXorRotr14 = ThreefishEngine.xorRotr(jXorRotr11, 57, j22);
                long j24 = j22 - jXorRotr14;
                long jXorRotr15 = ThreefishEngine.xorRotr(jXorRotr14, 14, j23);
                long jXorRotr16 = ThreefishEngine.xorRotr(jXorRotr13, 16, j24);
                j4 = j24 - jXorRotr16;
                i3 -= 2;
                i2 = i10;
                j5 = jXorRotr16;
                c2 = c2;
                j2 = j23 - jXorRotr15;
                c3 = c4;
                j3 = jXorRotr15;
            }
            char c5 = c2;
            char c6 = c3;
            int i11 = i2;
            long j25 = j2 - jArr3[0];
            long j26 = j3 - (jArr3[i11] + jArr4[0]);
            long j27 = j4 - (jArr3[c5] + jArr4[i11]);
            long j28 = j5 - jArr3[c6];
            jArr2[0] = j25;
            jArr2[i11] = j26;
            jArr2[c5] = j27;
            jArr2[c6] = j28;
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.t;
            int[] iArr = ThreefishEngine.MOD5;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 9) {
                ct0.c();
                return;
            }
            int i2 = 5;
            if (jArr4.length != 5) {
                ct0.c();
                return;
            }
            long j2 = jArr[0];
            long j3 = jArr[1];
            char c2 = 2;
            long j4 = jArr[2];
            char c3 = 3;
            long j5 = jArr[3];
            long j6 = j2 + jArr3[0];
            long j7 = jArr3[1] + jArr4[0] + j3;
            long j8 = jArr3[2] + jArr4[1] + j4;
            long j9 = j5 + jArr3[3];
            long j10 = j8;
            long j11 = j7;
            int i3 = 1;
            while (i3 < 18) {
                int i4 = iArr[i3];
                int i5 = iArr2[i3];
                long j12 = j6 + j11;
                char c4 = c2;
                long jRotlXor = ThreefishEngine.rotlXor(j11, 14, j12);
                char c5 = c3;
                long j13 = j10 + j9;
                long jRotlXor2 = ThreefishEngine.rotlXor(j9, 16, j13);
                long j14 = j12 + jRotlXor2;
                long jRotlXor3 = ThreefishEngine.rotlXor(jRotlXor2, 52, j14);
                long j15 = j13 + jRotlXor;
                long jRotlXor4 = ThreefishEngine.rotlXor(jRotlXor, 57, j15);
                long j16 = j14 + jRotlXor4;
                long jRotlXor5 = ThreefishEngine.rotlXor(jRotlXor4, 23, j16);
                long j17 = j15 + jRotlXor3;
                long jRotlXor6 = ThreefishEngine.rotlXor(jRotlXor3, 40, j17);
                long j18 = j16 + jRotlXor6;
                long jRotlXor7 = ThreefishEngine.rotlXor(jRotlXor6, i2, j18);
                long j19 = j17 + jRotlXor5;
                long jRotlXor8 = ThreefishEngine.rotlXor(jRotlXor5, 37, j19);
                long j20 = j18 + jArr3[i4];
                int i6 = i4 + 1;
                long j21 = jArr3[i6] + jArr4[i5] + jRotlXor8;
                int i7 = i4 + 2;
                int i8 = i5 + 1;
                long j22 = jArr3[i7] + jArr4[i8] + j19;
                int i9 = i4 + 3;
                long j23 = i3;
                long j24 = jArr3[i9] + j23 + jRotlXor7;
                long[] jArr5 = jArr4;
                long[] jArr6 = jArr3;
                long j25 = j20 + j21;
                long jRotlXor9 = ThreefishEngine.rotlXor(j21, 25, j25);
                long j26 = j22 + j24;
                long jRotlXor10 = ThreefishEngine.rotlXor(j24, 33, j26);
                long j27 = j25 + jRotlXor10;
                long jRotlXor11 = ThreefishEngine.rotlXor(jRotlXor10, 46, j27);
                long j28 = j26 + jRotlXor9;
                long jRotlXor12 = ThreefishEngine.rotlXor(jRotlXor9, 12, j28);
                long j29 = j27 + jRotlXor12;
                long jRotlXor13 = ThreefishEngine.rotlXor(jRotlXor12, 58, j29);
                long j30 = j28 + jRotlXor11;
                long jRotlXor14 = ThreefishEngine.rotlXor(jRotlXor11, 22, j30);
                long j31 = j29 + jRotlXor14;
                long jRotlXor15 = ThreefishEngine.rotlXor(jRotlXor14, 32, j31);
                long j32 = j30 + jRotlXor13;
                long jRotlXor16 = ThreefishEngine.rotlXor(jRotlXor13, 32, j32);
                long j33 = j31 + jArr6[i6];
                j11 = jArr6[i7] + jArr5[i8] + jRotlXor16;
                j10 = jArr6[i9] + jArr5[i5 + 2] + j32;
                j9 = jArr6[i4 + 4] + j23 + 1 + jRotlXor15;
                i3 += 2;
                c3 = c5;
                c2 = c4;
                j6 = j33;
                jArr3 = jArr6;
                jArr4 = jArr5;
                i2 = 5;
            }
            jArr2[0] = j6;
            jArr2[1] = j11;
            jArr2[c2] = j10;
            jArr2[c3] = j9;
        }
    }

    public static final class Threefish512Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 46;
        private static final int ROTATION_0_1 = 36;
        private static final int ROTATION_0_2 = 19;
        private static final int ROTATION_0_3 = 37;
        private static final int ROTATION_1_0 = 33;
        private static final int ROTATION_1_1 = 27;
        private static final int ROTATION_1_2 = 14;
        private static final int ROTATION_1_3 = 42;
        private static final int ROTATION_2_0 = 17;
        private static final int ROTATION_2_1 = 49;
        private static final int ROTATION_2_2 = 36;
        private static final int ROTATION_2_3 = 39;
        private static final int ROTATION_3_0 = 44;
        private static final int ROTATION_3_1 = 9;
        private static final int ROTATION_3_2 = 54;
        private static final int ROTATION_3_3 = 56;
        private static final int ROTATION_4_0 = 39;
        private static final int ROTATION_4_1 = 30;
        private static final int ROTATION_4_2 = 34;
        private static final int ROTATION_4_3 = 24;
        private static final int ROTATION_5_0 = 13;
        private static final int ROTATION_5_1 = 50;
        private static final int ROTATION_5_2 = 10;
        private static final int ROTATION_5_3 = 17;
        private static final int ROTATION_6_0 = 25;
        private static final int ROTATION_6_1 = 29;
        private static final int ROTATION_6_2 = 39;
        private static final int ROTATION_6_3 = 43;
        private static final int ROTATION_7_0 = 8;
        private static final int ROTATION_7_1 = 35;
        private static final int ROTATION_7_2 = 56;
        private static final int ROTATION_7_3 = 22;

        public Threefish512Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.t;
            int[] iArr = ThreefishEngine.MOD9;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 17) {
                ct0.c();
                return;
            }
            char c2 = 5;
            if (jArr4.length != 5) {
                ct0.c();
                return;
            }
            long j2 = jArr[0];
            int i2 = 1;
            long j3 = jArr[1];
            char c3 = 2;
            long j4 = jArr[2];
            char c4 = 3;
            long jXorRotr = jArr[3];
            long j5 = jArr[4];
            long jXorRotr2 = jArr[5];
            long j6 = jArr[6];
            long jXorRotr3 = jArr[7];
            int i3 = 17;
            while (i3 >= i2) {
                int i4 = iArr[i3];
                int i5 = iArr2[i3];
                int i6 = i4 + 1;
                long j7 = j2 - jArr3[i6];
                int i7 = i4 + 2;
                long j8 = j3 - jArr3[i7];
                int i8 = i4 + 3;
                long j9 = j4 - jArr3[i8];
                int i9 = i4 + 4;
                char c5 = c2;
                long j10 = jXorRotr - jArr3[i9];
                int i10 = i4 + 5;
                char c6 = c3;
                long j11 = j5 - jArr3[i10];
                int i11 = i4 + 6;
                int i12 = i5 + 1;
                int i13 = i2;
                long j12 = jXorRotr2 - (jArr3[i11] + jArr4[i12]);
                int i14 = i4 + 7;
                long[] jArr5 = jArr4;
                long[] jArr6 = jArr3;
                long j13 = j6 - (jArr3[i14] + jArr4[i5 + 2]);
                int[] iArr3 = iArr;
                long j14 = i3;
                long j15 = jXorRotr3 - ((jArr6[i4 + 8] + j14) + 1);
                int i15 = i3;
                long jXorRotr4 = ThreefishEngine.xorRotr(j8, 8, j13);
                long j16 = j13 - jXorRotr4;
                long jXorRotr5 = ThreefishEngine.xorRotr(j15, 35, j7);
                long j17 = j7 - jXorRotr5;
                long jXorRotr6 = ThreefishEngine.xorRotr(j12, 56, j9);
                long j18 = j9 - jXorRotr6;
                long jXorRotr7 = ThreefishEngine.xorRotr(j10, 22, j11);
                long j19 = j11 - jXorRotr7;
                long jXorRotr8 = ThreefishEngine.xorRotr(jXorRotr4, 25, j19);
                long j20 = j19 - jXorRotr8;
                long jXorRotr9 = ThreefishEngine.xorRotr(jXorRotr7, 29, j16);
                long j21 = j16 - jXorRotr9;
                long jXorRotr10 = ThreefishEngine.xorRotr(jXorRotr6, 39, j17);
                long j22 = j17 - jXorRotr10;
                long jXorRotr11 = ThreefishEngine.xorRotr(jXorRotr5, 43, j18);
                long j23 = j18 - jXorRotr11;
                long jXorRotr12 = ThreefishEngine.xorRotr(jXorRotr8, 13, j23);
                long j24 = j23 - jXorRotr12;
                long jXorRotr13 = ThreefishEngine.xorRotr(jXorRotr11, 50, j20);
                long j25 = j20 - jXorRotr13;
                long jXorRotr14 = ThreefishEngine.xorRotr(jXorRotr10, 10, j21);
                long j26 = j21 - jXorRotr14;
                long jXorRotr15 = ThreefishEngine.xorRotr(jXorRotr9, 17, j22);
                long j27 = j22 - jXorRotr15;
                long jXorRotr16 = ThreefishEngine.xorRotr(jXorRotr12, 39, j27);
                long jXorRotr17 = ThreefishEngine.xorRotr(jXorRotr15, 30, j24);
                long j28 = j24 - jXorRotr17;
                long jXorRotr18 = ThreefishEngine.xorRotr(jXorRotr14, 34, j25);
                long jXorRotr19 = ThreefishEngine.xorRotr(jXorRotr13, 24, j26);
                long j29 = j26 - jXorRotr19;
                long j30 = (j27 - jXorRotr16) - jArr6[i4];
                long j31 = jXorRotr16 - jArr6[i6];
                long j32 = j28 - jArr6[i7];
                long j33 = jXorRotr17 - jArr6[i8];
                long j34 = (j25 - jXorRotr18) - jArr6[i9];
                long j35 = jXorRotr18 - (jArr6[i10] + jArr5[i5]);
                long j36 = j29 - (jArr6[i11] + jArr5[i12]);
                long j37 = jXorRotr19 - (jArr6[i14] + j14);
                long jXorRotr20 = ThreefishEngine.xorRotr(j31, 44, j36);
                long j38 = j36 - jXorRotr20;
                long jXorRotr21 = ThreefishEngine.xorRotr(j37, 9, j30);
                long j39 = j30 - jXorRotr21;
                long jXorRotr22 = ThreefishEngine.xorRotr(j35, 54, j32);
                long j40 = j32 - jXorRotr22;
                long jXorRotr23 = ThreefishEngine.xorRotr(j33, 56, j34);
                long j41 = j34 - jXorRotr23;
                long jXorRotr24 = ThreefishEngine.xorRotr(jXorRotr20, 17, j41);
                long j42 = j41 - jXorRotr24;
                long jXorRotr25 = ThreefishEngine.xorRotr(jXorRotr23, ROTATION_2_1, j38);
                long j43 = j38 - jXorRotr25;
                long jXorRotr26 = ThreefishEngine.xorRotr(jXorRotr22, 36, j39);
                long j44 = j39 - jXorRotr26;
                long jXorRotr27 = ThreefishEngine.xorRotr(jXorRotr21, 39, j40);
                long j45 = j40 - jXorRotr27;
                long jXorRotr28 = ThreefishEngine.xorRotr(jXorRotr24, 33, j45);
                long j46 = j45 - jXorRotr28;
                long jXorRotr29 = ThreefishEngine.xorRotr(jXorRotr27, 27, j42);
                long j47 = j42 - jXorRotr29;
                long jXorRotr30 = ThreefishEngine.xorRotr(jXorRotr26, 14, j43);
                long j48 = j43 - jXorRotr30;
                long jXorRotr31 = ThreefishEngine.xorRotr(jXorRotr25, 42, j44);
                long j49 = j44 - jXorRotr31;
                long jXorRotr32 = ThreefishEngine.xorRotr(jXorRotr28, 46, j49);
                long j50 = j49 - jXorRotr32;
                jXorRotr = ThreefishEngine.xorRotr(jXorRotr31, 36, j46);
                j4 = j46 - jXorRotr;
                jXorRotr2 = ThreefishEngine.xorRotr(jXorRotr30, 19, j47);
                long j51 = j47 - jXorRotr2;
                jXorRotr3 = ThreefishEngine.xorRotr(jXorRotr29, 37, j48);
                j6 = j48 - jXorRotr3;
                i3 = i15 - 2;
                j2 = j50;
                j3 = jXorRotr32;
                i2 = i13;
                c2 = c5;
                c3 = c6;
                iArr = iArr3;
                iArr2 = iArr2;
                c4 = c4;
                j5 = j51;
                jArr3 = jArr6;
                jArr4 = jArr5;
            }
            long[] jArr7 = jArr4;
            long[] jArr8 = jArr3;
            char c7 = c2;
            int i16 = i2;
            char c8 = c3;
            char c9 = c4;
            long j52 = j2 - jArr8[0];
            long j53 = j3 - jArr8[i16];
            long j54 = j4 - jArr8[c8];
            long j55 = jXorRotr - jArr8[c9];
            long j56 = j5 - jArr8[4];
            long j57 = jXorRotr2 - (jArr8[c7] + jArr7[0]);
            long j58 = j6 - (jArr8[6] + jArr7[i16]);
            long j59 = jXorRotr3 - jArr8[7];
            jArr2[0] = j52;
            jArr2[i16] = j53;
            jArr2[c8] = j54;
            jArr2[c9] = j55;
            jArr2[4] = j56;
            jArr2[c7] = j57;
            jArr2[6] = j58;
            jArr2[7] = j59;
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.t;
            int[] iArr = ThreefishEngine.MOD9;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 17) {
                ct0.c();
                return;
            }
            if (jArr4.length != 5) {
                ct0.c();
                return;
            }
            long j2 = jArr[0];
            long j3 = jArr[1];
            long j4 = jArr[2];
            char c2 = 3;
            long j5 = jArr[3];
            long j6 = jArr[4];
            long j7 = jArr[5];
            long j8 = jArr[6];
            long j9 = jArr[7];
            long j10 = j2 + jArr3[0];
            long j11 = j3 + jArr3[1];
            long j12 = j4 + jArr3[2];
            long j13 = j5 + jArr3[3];
            long j14 = j6 + jArr3[4];
            long j15 = jArr3[5] + jArr4[0] + j7;
            long j16 = jArr3[6] + jArr4[1] + j8;
            long j17 = j12;
            long j18 = j9 + jArr3[7];
            int i2 = 1;
            long j19 = j10;
            long j20 = j13;
            long j21 = j15;
            while (i2 < 18) {
                int i3 = iArr[i2];
                int i4 = iArr2[i2];
                long j22 = j20;
                long j23 = j19 + j11;
                long jRotlXor = ThreefishEngine.rotlXor(j11, 46, j23);
                long[] jArr5 = jArr4;
                long[] jArr6 = jArr3;
                long j24 = j17 + j22;
                int[] iArr3 = iArr;
                long jRotlXor2 = ThreefishEngine.rotlXor(j22, 36, j24);
                long j25 = j14 + j21;
                long jRotlXor3 = ThreefishEngine.rotlXor(j21, 19, j25);
                long j26 = j16 + j18;
                long jRotlXor4 = ThreefishEngine.rotlXor(j18, 37, j26);
                long j27 = j24 + jRotlXor;
                long jRotlXor5 = ThreefishEngine.rotlXor(jRotlXor, 33, j27);
                long j28 = j25 + jRotlXor4;
                long jRotlXor6 = ThreefishEngine.rotlXor(jRotlXor4, 27, j28);
                long j29 = j26 + jRotlXor3;
                long jRotlXor7 = ThreefishEngine.rotlXor(jRotlXor3, 14, j29);
                long j30 = j23 + jRotlXor2;
                long jRotlXor8 = ThreefishEngine.rotlXor(jRotlXor2, 42, j30);
                long j31 = j28 + jRotlXor5;
                long jRotlXor9 = ThreefishEngine.rotlXor(jRotlXor5, 17, j31);
                long j32 = j29 + jRotlXor8;
                long jRotlXor10 = ThreefishEngine.rotlXor(jRotlXor8, ROTATION_2_1, j32);
                long j33 = j30 + jRotlXor7;
                long jRotlXor11 = ThreefishEngine.rotlXor(jRotlXor7, 36, j33);
                long j34 = j27 + jRotlXor6;
                long jRotlXor12 = ThreefishEngine.rotlXor(jRotlXor6, 39, j34);
                long j35 = j32 + jRotlXor9;
                long jRotlXor13 = ThreefishEngine.rotlXor(jRotlXor9, 44, j35);
                long j36 = j33 + jRotlXor12;
                long jRotlXor14 = ThreefishEngine.rotlXor(jRotlXor12, 9, j36);
                long j37 = j34 + jRotlXor11;
                long jRotlXor15 = ThreefishEngine.rotlXor(jRotlXor11, 54, j37);
                long j38 = j31 + jRotlXor10;
                long jRotlXor16 = ThreefishEngine.rotlXor(jRotlXor10, 56, j38);
                long j39 = j36 + jArr6[i3];
                int i5 = i3 + 1;
                long j40 = jRotlXor13 + jArr6[i5];
                int i6 = i3 + 2;
                long j41 = j37 + jArr6[i6];
                int i7 = i3 + 3;
                long j42 = jRotlXor16 + jArr6[i7];
                int i8 = i3 + 4;
                long j43 = j38 + jArr6[i8];
                int i9 = i3 + 5;
                long j44 = jArr6[i9] + jArr5[i4] + jRotlXor15;
                int i10 = i3 + 6;
                int i11 = i4 + 1;
                long j45 = jArr6[i10] + jArr5[i11] + j35;
                int i12 = i3 + 7;
                long j46 = i2;
                long j47 = jArr6[i12] + j46 + jRotlXor14;
                long j48 = j39 + j40;
                long jRotlXor17 = ThreefishEngine.rotlXor(j40, 39, j48);
                long j49 = j41 + j42;
                long jRotlXor18 = ThreefishEngine.rotlXor(j42, 30, j49);
                long j50 = j43 + j44;
                long jRotlXor19 = ThreefishEngine.rotlXor(j44, 34, j50);
                long j51 = j45 + j47;
                long jRotlXor20 = ThreefishEngine.rotlXor(j47, 24, j51);
                long j52 = j49 + jRotlXor17;
                long jRotlXor21 = ThreefishEngine.rotlXor(jRotlXor17, 13, j52);
                long j53 = j50 + jRotlXor20;
                long jRotlXor22 = ThreefishEngine.rotlXor(jRotlXor20, 50, j53);
                long j54 = j51 + jRotlXor19;
                long jRotlXor23 = ThreefishEngine.rotlXor(jRotlXor19, 10, j54);
                long j55 = j48 + jRotlXor18;
                long jRotlXor24 = ThreefishEngine.rotlXor(jRotlXor18, 17, j55);
                long j56 = j53 + jRotlXor21;
                long jRotlXor25 = ThreefishEngine.rotlXor(jRotlXor21, 25, j56);
                long j57 = j54 + jRotlXor24;
                long jRotlXor26 = ThreefishEngine.rotlXor(jRotlXor24, 29, j57);
                long j58 = j55 + jRotlXor23;
                long jRotlXor27 = ThreefishEngine.rotlXor(jRotlXor23, 39, j58);
                long j59 = j52 + jRotlXor22;
                long jRotlXor28 = ThreefishEngine.rotlXor(jRotlXor22, 43, j59);
                long j60 = j57 + jRotlXor25;
                long jRotlXor29 = ThreefishEngine.rotlXor(jRotlXor25, 8, j60);
                long j61 = j58 + jRotlXor28;
                long jRotlXor30 = ThreefishEngine.rotlXor(jRotlXor28, 35, j61);
                long j62 = j59 + jRotlXor27;
                long jRotlXor31 = ThreefishEngine.rotlXor(jRotlXor27, 56, j62);
                long j63 = j56 + jRotlXor26;
                long jRotlXor32 = ThreefishEngine.rotlXor(jRotlXor26, 22, j63);
                long j64 = j61 + jArr6[i5];
                long j65 = jRotlXor29 + jArr6[i6];
                long j66 = j62 + jArr6[i7];
                long j67 = jRotlXor32 + jArr6[i8];
                j14 = j63 + jArr6[i9];
                long j68 = jArr6[i10] + jArr5[i11] + jRotlXor31;
                j16 = jArr6[i12] + jArr5[i4 + 2] + j60;
                i2 += 2;
                j17 = j66;
                j19 = j64;
                j11 = j65;
                c2 = c2;
                j21 = j68;
                j18 = jRotlXor30 + jArr6[i3 + 8] + j46 + 1;
                jArr3 = jArr6;
                jArr4 = jArr5;
                j20 = j67;
                iArr = iArr3;
                iArr2 = iArr2;
            }
            jArr2[0] = j19;
            jArr2[1] = j11;
            jArr2[2] = j17;
            jArr2[c2] = j20;
            jArr2[4] = j14;
            jArr2[5] = j21;
            jArr2[6] = j16;
            jArr2[7] = j18;
        }
    }

    public static abstract class ThreefishCipher {
        protected final long[] kw;
        protected final long[] t;

        public ThreefishCipher(long[] jArr, long[] jArr2) {
            this.kw = jArr;
            this.t = jArr2;
        }

        public abstract void decryptBlock(long[] jArr, long[] jArr2);

        public abstract void encryptBlock(long[] jArr, long[] jArr2);
    }

    static {
        int[] iArr = new int[80];
        MOD9 = iArr;
        MOD17 = new int[iArr.length];
        MOD5 = new int[iArr.length];
        MOD3 = new int[iArr.length];
        int i2 = 0;
        while (true) {
            int[] iArr2 = MOD9;
            if (i2 >= iArr2.length) {
                return;
            }
            MOD17[i2] = i2 % 17;
            iArr2[i2] = i2 % 9;
            MOD5[i2] = i2 % 5;
            MOD3[i2] = i2 % 3;
            i2++;
        }
    }

    public ThreefishEngine(int i2) {
        ThreefishCipher threefish256Cipher;
        long[] jArr = new long[5];
        this.t = jArr;
        int i3 = i2 / 8;
        this.blocksizeBytes = i3;
        int i4 = i3 / 8;
        this.blocksizeWords = i4;
        this.currentBlock = new long[i4];
        long[] jArr2 = new long[(i4 * 2) + 1];
        this.kw = jArr2;
        if (i2 == 256) {
            threefish256Cipher = new Threefish256Cipher(jArr2, jArr);
        } else if (i2 == 512) {
            threefish256Cipher = new Threefish512Cipher(jArr2, jArr);
        } else {
            if (i2 != 1024) {
                md.n("Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits");
                throw null;
            }
            threefish256Cipher = new Threefish1024Cipher(jArr2, jArr);
        }
        this.cipher = threefish256Cipher;
    }

    public static long bytesToWord(byte[] bArr, int i2) {
        return Pack.littleEndianToLong(bArr, i2);
    }

    public static long rotlXor(long j2, int i2, long j3) {
        return ((j2 >>> (-i2)) | (j2 << i2)) ^ j3;
    }

    private void setKey(long[] jArr) {
        if (jArr.length != this.blocksizeWords) {
            md.n(a.i(this.blocksizeWords, " words)", new StringBuilder("Threefish key must be same size as block (")));
            return;
        }
        long j2 = C_240;
        int i2 = 0;
        while (true) {
            int i3 = this.blocksizeWords;
            long[] jArr2 = this.kw;
            if (i2 >= i3) {
                jArr2[i3] = j2;
                System.arraycopy(jArr2, 0, jArr2, i3 + 1, i3);
                return;
            } else {
                long j3 = jArr[i2];
                jArr2[i2] = j3;
                j2 ^= j3;
                i2++;
            }
        }
    }

    private void setTweak(long[] jArr) {
        if (jArr.length != 2) {
            md.n("Tweak must be 2 words.");
            return;
        }
        long[] jArr2 = this.t;
        long j2 = jArr[0];
        jArr2[0] = j2;
        long j3 = jArr[1];
        jArr2[1] = j3;
        jArr2[2] = j2 ^ j3;
        jArr2[3] = j2;
        jArr2[4] = j3;
    }

    public static void wordToBytes(long j2, byte[] bArr, int i2) {
        Pack.longToLittleEndian(j2, bArr, i2);
    }

    public static long xorRotr(long j2, int i2, long j3) {
        long j4 = j2 ^ j3;
        return (j4 << (-i2)) | (j4 >>> i2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Threefish-" + (this.blocksizeBytes * 8);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.blocksizeBytes;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        byte[] key;
        byte[] tweak;
        long[] jArr;
        long[] jArr2 = null;
        if (cipherParameters instanceof TweakableBlockCipherParameters) {
            TweakableBlockCipherParameters tweakableBlockCipherParameters = (TweakableBlockCipherParameters) cipherParameters;
            key = tweakableBlockCipherParameters.getKey().getKey();
            tweak = tweakableBlockCipherParameters.getTweak();
        } else if (!(cipherParameters instanceof KeyParameter)) {
            md.n(a.l("Invalid parameter passed to Threefish init - ", cipherParameters));
            return;
        } else {
            key = ((KeyParameter) cipherParameters).getKey();
            tweak = null;
        }
        if (key == null) {
            jArr = null;
        } else if (key.length != this.blocksizeBytes) {
            md.n(a.i(this.blocksizeBytes, " bytes)", new StringBuilder("Threefish key must be same size as block (")));
            return;
        } else {
            jArr = new long[this.blocksizeWords];
            Pack.littleEndianToLong(key, 0, jArr);
        }
        if (tweak != null) {
            if (tweak.length != 16) {
                md.n("Threefish tweak must be 16 bytes");
                return;
            } else {
                jArr2 = new long[2];
                Pack.littleEndianToLong(tweak, 0, jArr2);
            }
        }
        init(z, jArr, jArr2);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 256, cipherParameters, Utils.getPurpose(z)));
    }

    public int processBlock(long[] jArr, long[] jArr2) throws IllegalStateException, DataLengthException {
        long[] jArr3 = this.kw;
        int i2 = this.blocksizeWords;
        if (jArr3[i2] == 0) {
            md.k("Threefish engine not initialised");
            return 0;
        }
        if (jArr.length != i2) {
            b21.q("Input buffer too short");
            return 0;
        }
        if (jArr2.length != i2) {
            mt.n("Output buffer too short");
            return 0;
        }
        boolean z = this.forEncryption;
        ThreefishCipher threefishCipher = this.cipher;
        if (z) {
            threefishCipher.encryptBlock(jArr, jArr2);
        } else {
            threefishCipher.decryptBlock(jArr, jArr2);
        }
        return this.blocksizeWords;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i2, byte[] bArr2, int i3) throws IllegalStateException, DataLengthException {
        int i4 = this.blocksizeBytes;
        if (i2 + i4 > bArr.length) {
            b21.q("Input buffer too short");
            return 0;
        }
        if (i4 + i3 > bArr2.length) {
            mt.n("Output buffer too short");
            return 0;
        }
        Pack.littleEndianToLong(bArr, i2, this.currentBlock);
        long[] jArr = this.currentBlock;
        processBlock(jArr, jArr);
        Pack.longToLittleEndian(this.currentBlock, bArr2, i3);
        return this.blocksizeBytes;
    }

    public void init(boolean z, long[] jArr, long[] jArr2) {
        this.forEncryption = z;
        if (jArr != null) {
            setKey(jArr);
        }
        if (jArr2 != null) {
            setTweak(jArr2);
        }
    }
}
