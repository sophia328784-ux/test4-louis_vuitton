package org.bouncycastle.pqc.crypto.gemss;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes5.dex */
abstract class Mul_GF2x {

    public static class Mul12 extends Mul_GF2x {
        private long[] Buffer = new long[12];

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul384_no_simd_gf2x(pointer.array, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x_xor(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul384_no_simd_gf2x_xor(pointer.array, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void sqr_gf2x(long[] jArr, long[] jArr2, int i2) {
            Mul_GF2x.SQR128_NO_SIMD_GF2X(jArr, 8, jArr2, i2 + 4);
            Mul_GF2x.SQR256_NO_SIMD_GF2X(jArr, 0, jArr2, i2);
        }
    }

    public static class Mul13 extends Mul_GF2x {
        private long[] Buffer = new long[13];
        private long[] Buffer2 = new long[4];

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul416_no_simd_gf2x(pointer.array, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x_xor(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul416_no_simd_gf2x_xor(pointer.array, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer, this.Buffer2);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void sqr_gf2x(long[] jArr, long[] jArr2, int i2) {
            jArr[12] = Mul_GF2x.SQR32_NO_SIMD_GF2X(jArr2[i2 + 6]);
            Mul_GF2x.SQR128_NO_SIMD_GF2X(jArr, 8, jArr2, i2 + 4);
            Mul_GF2x.SQR256_NO_SIMD_GF2X(jArr, 0, jArr2, i2);
        }
    }

    public static class Mul17 extends Mul_GF2x {
        private long[] AA = new long[5];
        private long[] BB = new long[5];
        private long[] Buffer1 = new long[17];
        private long[] Buffer2 = new long[4];

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul544_no_simd_gf2x(pointer.array, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.AA, this.BB, this.Buffer1);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x_xor(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul544_no_simd_gf2x_xor(pointer.array, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.AA, this.BB, this.Buffer1, this.Buffer2);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void sqr_gf2x(long[] jArr, long[] jArr2, int i2) {
            jArr[16] = Mul_GF2x.SQR32_NO_SIMD_GF2X(jArr2[i2 + 8]);
            Mul_GF2x.SQR256_NO_SIMD_GF2X(jArr, 8, jArr2, i2 + 4);
            Mul_GF2x.SQR256_NO_SIMD_GF2X(jArr, 0, jArr2, i2);
        }
    }

    public static class Mul6 extends Mul_GF2x {
        private long[] Buffer = new long[6];

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul192_no_simd_gf2x(pointer.array, 0, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x_xor(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul192_no_simd_gf2x_xor(pointer.array, pointer.cp, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void sqr_gf2x(long[] jArr, long[] jArr2, int i2) {
            Mul_GF2x.SQR64_NO_SIMD_GF2X(jArr, 4, jArr2[i2 + 2]);
            Mul_GF2x.SQR128_NO_SIMD_GF2X(jArr, 0, jArr2, i2);
        }
    }

    public static class Mul9 extends Mul_GF2x {
        private long[] Buffer = new long[9];

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul288_no_simd_gf2x(pointer.array, 0, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x_xor(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul288_no_simd_gf2x_xor(pointer.array, pointer.cp, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void sqr_gf2x(long[] jArr, long[] jArr2, int i2) {
            jArr[8] = Mul_GF2x.SQR32_NO_SIMD_GF2X(jArr2[i2 + 4]);
            Mul_GF2x.SQR256_NO_SIMD_GF2X(jArr, 0, jArr2, i2);
        }
    }

    private static long MUL32_NO_SIMD_GF2X(long j2, long j3) {
        return ((j2 & (-((j3 >>> 31) & 1))) << 31) ^ ((((((((((((((((((((((((((((((((-(j3 & 1)) & j2) ^ (((-((j3 >>> 1) & 1)) & j2) << 1)) ^ (((-((j3 >>> 2) & 1)) & j2) << 2)) ^ (((-((j3 >>> 3) & 1)) & j2) << 3)) ^ (((-((j3 >>> 4) & 1)) & j2) << 4)) ^ (((-((j3 >>> 5) & 1)) & j2) << 5)) ^ (((-((j3 >>> 6) & 1)) & j2) << 6)) ^ (((-((j3 >>> 7) & 1)) & j2) << 7)) ^ (((-((j3 >>> 8) & 1)) & j2) << 8)) ^ (((-((j3 >>> 9) & 1)) & j2) << 9)) ^ (((-((j3 >>> 10) & 1)) & j2) << 10)) ^ (((-((j3 >>> 11) & 1)) & j2) << 11)) ^ (((-((j3 >>> 12) & 1)) & j2) << 12)) ^ (((-((j3 >>> 13) & 1)) & j2) << 13)) ^ (((-((j3 >>> 14) & 1)) & j2) << 14)) ^ (((-((j3 >>> 15) & 1)) & j2) << 15)) ^ (((-((j3 >>> 16) & 1)) & j2) << 16)) ^ (((-((j3 >>> 17) & 1)) & j2) << 17)) ^ (((-((j3 >>> 18) & 1)) & j2) << 18)) ^ (((-((j3 >>> 19) & 1)) & j2) << 19)) ^ (((-((j3 >>> 20) & 1)) & j2) << 20)) ^ (((-((j3 >>> 21) & 1)) & j2) << 21)) ^ (((-((j3 >>> 22) & 1)) & j2) << 22)) ^ (((-((j3 >>> 23) & 1)) & j2) << 23)) ^ (((-((j3 >>> 24) & 1)) & j2) << 24)) ^ (((-((j3 >>> 25) & 1)) & j2) << 25)) ^ (((-((j3 >>> 26) & 1)) & j2) << 26)) ^ (((-((j3 >>> 27) & 1)) & j2) << 27)) ^ (((-((j3 >>> 28) & 1)) & j2) << 28)) ^ (((-((j3 >>> 29) & 1)) & j2) << 29)) ^ (((-((j3 >>> 30) & 1)) & j2) << 30));
    }

    private static void MUL64_NO_SIMD_GF2X(long[] jArr, int i2, long j2, long j3) {
        long j4 = (-(j3 >>> 63)) & j2;
        long j5 = (-((j3 >>> 1) & 1)) & j2;
        long j6 = (((-(j3 & 1)) & j2) ^ (j4 << 63)) ^ (j5 << 1);
        long j7 = (j4 >>> 1) ^ (j5 >>> 63);
        long j8 = (-((j3 >>> 2) & 1)) & j2;
        long j9 = (-((j3 >>> 3) & 1)) & j2;
        long j10 = (-((j3 >>> 4) & 1)) & j2;
        long j11 = (-((j3 >>> 5) & 1)) & j2;
        long j12 = (((j6 ^ (j8 << 2)) ^ (j9 << 3)) ^ (j10 << 4)) ^ (j11 << 5);
        long j13 = (j11 >>> 59) ^ (((j7 ^ (j8 >>> 62)) ^ (j9 >>> 61)) ^ (j10 >>> 60));
        long j14 = (-((j3 >>> 6) & 1)) & j2;
        long j15 = j12 ^ (j14 << 6);
        long j16 = j13 ^ (j14 >>> 58);
        long j17 = (-((j3 >>> 7) & 1)) & j2;
        long j18 = j15 ^ (j17 << 7);
        long j19 = j16 ^ (j17 >>> 57);
        long j20 = (-((j3 >>> 8) & 1)) & j2;
        long j21 = j18 ^ (j20 << 8);
        long j22 = j19 ^ (j20 >>> 56);
        long j23 = (-((j3 >>> 9) & 1)) & j2;
        long j24 = j21 ^ (j23 << 9);
        long j25 = j22 ^ (j23 >>> 55);
        long j26 = (-((j3 >>> 10) & 1)) & j2;
        long j27 = j24 ^ (j26 << 10);
        long j28 = j25 ^ (j26 >>> 54);
        long j29 = (-((j3 >>> 11) & 1)) & j2;
        long j30 = j27 ^ (j29 << 11);
        long j31 = j28 ^ (j29 >>> 53);
        long j32 = (-((j3 >>> 12) & 1)) & j2;
        long j33 = j30 ^ (j32 << 12);
        long j34 = j31 ^ (j32 >>> 52);
        long j35 = (-((j3 >>> 13) & 1)) & j2;
        long j36 = j33 ^ (j35 << 13);
        long j37 = j34 ^ (j35 >>> 51);
        long j38 = (-((j3 >>> 14) & 1)) & j2;
        long j39 = j36 ^ (j38 << 14);
        long j40 = j37 ^ (j38 >>> 50);
        long j41 = (-((j3 >>> 15) & 1)) & j2;
        long j42 = j39 ^ (j41 << 15);
        long j43 = j40 ^ (j41 >>> 49);
        long j44 = (-((j3 >>> 16) & 1)) & j2;
        long j45 = j42 ^ (j44 << 16);
        long j46 = j43 ^ (j44 >>> 48);
        long j47 = (-((j3 >>> 17) & 1)) & j2;
        long j48 = j45 ^ (j47 << 17);
        long j49 = j46 ^ (j47 >>> 47);
        long j50 = (-((j3 >>> 18) & 1)) & j2;
        long j51 = j48 ^ (j50 << 18);
        long j52 = j49 ^ (j50 >>> 46);
        long j53 = (-((j3 >>> 19) & 1)) & j2;
        long j54 = j51 ^ (j53 << 19);
        long j55 = j52 ^ (j53 >>> 45);
        long j56 = (-((j3 >>> 20) & 1)) & j2;
        long j57 = j54 ^ (j56 << 20);
        long j58 = j55 ^ (j56 >>> 44);
        long j59 = (-((j3 >>> 21) & 1)) & j2;
        long j60 = j57 ^ (j59 << 21);
        long j61 = j58 ^ (j59 >>> 43);
        long j62 = (-((j3 >>> 22) & 1)) & j2;
        long j63 = j60 ^ (j62 << 22);
        long j64 = j61 ^ (j62 >>> 42);
        long j65 = (-((j3 >>> 23) & 1)) & j2;
        long j66 = j63 ^ (j65 << 23);
        long j67 = j64 ^ (j65 >>> 41);
        long j68 = (-((j3 >>> 24) & 1)) & j2;
        long j69 = j66 ^ (j68 << 24);
        long j70 = j67 ^ (j68 >>> 40);
        long j71 = (-((j3 >>> 25) & 1)) & j2;
        long j72 = j69 ^ (j71 << 25);
        long j73 = j70 ^ (j71 >>> 39);
        long j74 = (-((j3 >>> 26) & 1)) & j2;
        long j75 = j72 ^ (j74 << 26);
        long j76 = j73 ^ (j74 >>> 38);
        long j77 = (-((j3 >>> 27) & 1)) & j2;
        long j78 = j75 ^ (j77 << 27);
        long j79 = j76 ^ (j77 >>> 37);
        long j80 = (-((j3 >>> 28) & 1)) & j2;
        long j81 = j78 ^ (j80 << 28);
        long j82 = j79 ^ (j80 >>> 36);
        long j83 = (-((j3 >>> 29) & 1)) & j2;
        long j84 = j81 ^ (j83 << 29);
        long j85 = j82 ^ (j83 >>> 35);
        long j86 = (-((j3 >>> 30) & 1)) & j2;
        long j87 = j84 ^ (j86 << 30);
        long j88 = j85 ^ (j86 >>> 34);
        long j89 = (-((j3 >>> 31) & 1)) & j2;
        long j90 = j87 ^ (j89 << 31);
        long j91 = j88 ^ (j89 >>> 33);
        long j92 = (-((j3 >>> 32) & 1)) & j2;
        long j93 = j90 ^ (j92 << 32);
        long j94 = j91 ^ (j92 >>> 32);
        long j95 = (-((j3 >>> 33) & 1)) & j2;
        long j96 = j93 ^ (j95 << 33);
        long j97 = j94 ^ (j95 >>> 31);
        long j98 = (-((j3 >>> 34) & 1)) & j2;
        long j99 = j96 ^ (j98 << 34);
        long j100 = j97 ^ (j98 >>> 30);
        long j101 = (-((j3 >>> 35) & 1)) & j2;
        long j102 = j99 ^ (j101 << 35);
        long j103 = j100 ^ (j101 >>> 29);
        long j104 = (-((j3 >>> 36) & 1)) & j2;
        long j105 = j102 ^ (j104 << 36);
        long j106 = j103 ^ (j104 >>> 28);
        long j107 = (-((j3 >>> 37) & 1)) & j2;
        long j108 = j105 ^ (j107 << 37);
        long j109 = j106 ^ (j107 >>> 27);
        long j110 = (-((j3 >>> 38) & 1)) & j2;
        long j111 = j108 ^ (j110 << 38);
        long j112 = j109 ^ (j110 >>> 26);
        long j113 = (-((j3 >>> 39) & 1)) & j2;
        long j114 = j111 ^ (j113 << 39);
        long j115 = j112 ^ (j113 >>> 25);
        long j116 = (-((j3 >>> 40) & 1)) & j2;
        long j117 = j114 ^ (j116 << 40);
        long j118 = j115 ^ (j116 >>> 24);
        long j119 = (-((j3 >>> 41) & 1)) & j2;
        long j120 = j117 ^ (j119 << 41);
        long j121 = j118 ^ (j119 >>> 23);
        long j122 = (-((j3 >>> 42) & 1)) & j2;
        long j123 = j120 ^ (j122 << 42);
        long j124 = j121 ^ (j122 >>> 22);
        long j125 = (-((j3 >>> 43) & 1)) & j2;
        long j126 = j123 ^ (j125 << 43);
        long j127 = j124 ^ (j125 >>> 21);
        long j128 = (-((j3 >>> 44) & 1)) & j2;
        long j129 = j126 ^ (j128 << 44);
        long j130 = j127 ^ (j128 >>> 20);
        long j131 = (-((j3 >>> 45) & 1)) & j2;
        long j132 = j129 ^ (j131 << 45);
        long j133 = j130 ^ (j131 >>> 19);
        long j134 = (-((j3 >>> 46) & 1)) & j2;
        long j135 = j132 ^ (j134 << 46);
        long j136 = j133 ^ (j134 >>> 18);
        long j137 = (-((j3 >>> 47) & 1)) & j2;
        long j138 = j135 ^ (j137 << 47);
        long j139 = j136 ^ (j137 >>> 17);
        long j140 = (-((j3 >>> 48) & 1)) & j2;
        long j141 = j138 ^ (j140 << 48);
        long j142 = j139 ^ (j140 >>> 16);
        long j143 = (-((j3 >>> 49) & 1)) & j2;
        long j144 = j141 ^ (j143 << 49);
        long j145 = j142 ^ (j143 >>> 15);
        long j146 = (-((j3 >>> 50) & 1)) & j2;
        long j147 = j144 ^ (j146 << 50);
        long j148 = j145 ^ (j146 >>> 14);
        long j149 = (-((j3 >>> 51) & 1)) & j2;
        long j150 = j147 ^ (j149 << 51);
        long j151 = j148 ^ (j149 >>> 13);
        long j152 = (-((j3 >>> 52) & 1)) & j2;
        long j153 = j150 ^ (j152 << 52);
        long j154 = j151 ^ (j152 >>> 12);
        long j155 = (-((j3 >>> 53) & 1)) & j2;
        long j156 = j153 ^ (j155 << 53);
        long j157 = j154 ^ (j155 >>> 11);
        long j158 = (-((j3 >>> 54) & 1)) & j2;
        long j159 = j156 ^ (j158 << 54);
        long j160 = j157 ^ (j158 >>> 10);
        long j161 = (-((j3 >>> 55) & 1)) & j2;
        long j162 = j159 ^ (j161 << 55);
        long j163 = j160 ^ (j161 >>> 9);
        long j164 = (-((j3 >>> 56) & 1)) & j2;
        long j165 = j162 ^ (j164 << 56);
        long j166 = j163 ^ (j164 >>> 8);
        long j167 = (-((j3 >>> 57) & 1)) & j2;
        long j168 = j165 ^ (j167 << 57);
        long j169 = j166 ^ (j167 >>> 7);
        long j170 = (-((j3 >>> 58) & 1)) & j2;
        long j171 = j168 ^ (j170 << 58);
        long j172 = j169 ^ (j170 >>> 6);
        long j173 = (-((j3 >>> 59) & 1)) & j2;
        long j174 = j171 ^ (j173 << 59);
        long j175 = j172 ^ (j173 >>> 5);
        long j176 = (-((j3 >>> 60) & 1)) & j2;
        long j177 = j174 ^ (j176 << 60);
        long j178 = j175 ^ (j176 >>> 4);
        long j179 = (-((j3 >>> 61) & 1)) & j2;
        long j180 = j177 ^ (j179 << 61);
        long j181 = j178 ^ (j179 >>> 3);
        long j182 = (-((j3 >>> 62) & 1)) & j2;
        jArr[i2] = j180 ^ (j182 << 62);
        jArr[i2 + 1] = j181 ^ (j182 >>> 2);
    }

    private static void MUL64_NO_SIMD_GF2X_XOR(long[] jArr, int i2, long j2, long j3) {
        long j4 = (-(j3 >>> 63)) & j2;
        long j5 = (-((j3 >>> 1) & 1)) & j2;
        long j6 = (((-(j3 & 1)) & j2) ^ (j4 << 63)) ^ (j5 << 1);
        long j7 = (j4 >>> 1) ^ (j5 >>> 63);
        long j8 = (-((j3 >>> 2) & 1)) & j2;
        long j9 = (-((j3 >>> 3) & 1)) & j2;
        long j10 = (-((j3 >>> 4) & 1)) & j2;
        long j11 = (-((j3 >>> 5) & 1)) & j2;
        long j12 = (((j6 ^ (j8 << 2)) ^ (j9 << 3)) ^ (j10 << 4)) ^ (j11 << 5);
        long j13 = (j11 >>> 59) ^ (((j7 ^ (j8 >>> 62)) ^ (j9 >>> 61)) ^ (j10 >>> 60));
        long j14 = (-((j3 >>> 6) & 1)) & j2;
        long j15 = j12 ^ (j14 << 6);
        long j16 = j13 ^ (j14 >>> 58);
        long j17 = (-((j3 >>> 7) & 1)) & j2;
        long j18 = j15 ^ (j17 << 7);
        long j19 = j16 ^ (j17 >>> 57);
        long j20 = (-((j3 >>> 8) & 1)) & j2;
        long j21 = j18 ^ (j20 << 8);
        long j22 = j19 ^ (j20 >>> 56);
        long j23 = (-((j3 >>> 9) & 1)) & j2;
        long j24 = j21 ^ (j23 << 9);
        long j25 = j22 ^ (j23 >>> 55);
        long j26 = (-((j3 >>> 10) & 1)) & j2;
        long j27 = j24 ^ (j26 << 10);
        long j28 = j25 ^ (j26 >>> 54);
        long j29 = (-((j3 >>> 11) & 1)) & j2;
        long j30 = j27 ^ (j29 << 11);
        long j31 = j28 ^ (j29 >>> 53);
        long j32 = (-((j3 >>> 12) & 1)) & j2;
        long j33 = j30 ^ (j32 << 12);
        long j34 = j31 ^ (j32 >>> 52);
        long j35 = (-((j3 >>> 13) & 1)) & j2;
        long j36 = j33 ^ (j35 << 13);
        long j37 = j34 ^ (j35 >>> 51);
        long j38 = (-((j3 >>> 14) & 1)) & j2;
        long j39 = j36 ^ (j38 << 14);
        long j40 = j37 ^ (j38 >>> 50);
        long j41 = (-((j3 >>> 15) & 1)) & j2;
        long j42 = j39 ^ (j41 << 15);
        long j43 = j40 ^ (j41 >>> 49);
        long j44 = (-((j3 >>> 16) & 1)) & j2;
        long j45 = j42 ^ (j44 << 16);
        long j46 = j43 ^ (j44 >>> 48);
        long j47 = (-((j3 >>> 17) & 1)) & j2;
        long j48 = j45 ^ (j47 << 17);
        long j49 = j46 ^ (j47 >>> 47);
        long j50 = (-((j3 >>> 18) & 1)) & j2;
        long j51 = j48 ^ (j50 << 18);
        long j52 = j49 ^ (j50 >>> 46);
        long j53 = (-((j3 >>> 19) & 1)) & j2;
        long j54 = j51 ^ (j53 << 19);
        long j55 = j52 ^ (j53 >>> 45);
        long j56 = (-((j3 >>> 20) & 1)) & j2;
        long j57 = j54 ^ (j56 << 20);
        long j58 = j55 ^ (j56 >>> 44);
        long j59 = (-((j3 >>> 21) & 1)) & j2;
        long j60 = j57 ^ (j59 << 21);
        long j61 = j58 ^ (j59 >>> 43);
        long j62 = (-((j3 >>> 22) & 1)) & j2;
        long j63 = j60 ^ (j62 << 22);
        long j64 = j61 ^ (j62 >>> 42);
        long j65 = (-((j3 >>> 23) & 1)) & j2;
        long j66 = j63 ^ (j65 << 23);
        long j67 = j64 ^ (j65 >>> 41);
        long j68 = (-((j3 >>> 24) & 1)) & j2;
        long j69 = j66 ^ (j68 << 24);
        long j70 = j67 ^ (j68 >>> 40);
        long j71 = (-((j3 >>> 25) & 1)) & j2;
        long j72 = j69 ^ (j71 << 25);
        long j73 = j70 ^ (j71 >>> 39);
        long j74 = (-((j3 >>> 26) & 1)) & j2;
        long j75 = j72 ^ (j74 << 26);
        long j76 = j73 ^ (j74 >>> 38);
        long j77 = (-((j3 >>> 27) & 1)) & j2;
        long j78 = j75 ^ (j77 << 27);
        long j79 = j76 ^ (j77 >>> 37);
        long j80 = (-((j3 >>> 28) & 1)) & j2;
        long j81 = j78 ^ (j80 << 28);
        long j82 = j79 ^ (j80 >>> 36);
        long j83 = (-((j3 >>> 29) & 1)) & j2;
        long j84 = j81 ^ (j83 << 29);
        long j85 = j82 ^ (j83 >>> 35);
        long j86 = (-((j3 >>> 30) & 1)) & j2;
        long j87 = j84 ^ (j86 << 30);
        long j88 = j85 ^ (j86 >>> 34);
        long j89 = (-((j3 >>> 31) & 1)) & j2;
        long j90 = j87 ^ (j89 << 31);
        long j91 = j88 ^ (j89 >>> 33);
        long j92 = (-((j3 >>> 32) & 1)) & j2;
        long j93 = j90 ^ (j92 << 32);
        long j94 = j91 ^ (j92 >>> 32);
        long j95 = (-((j3 >>> 33) & 1)) & j2;
        long j96 = j93 ^ (j95 << 33);
        long j97 = j94 ^ (j95 >>> 31);
        long j98 = (-((j3 >>> 34) & 1)) & j2;
        long j99 = j96 ^ (j98 << 34);
        long j100 = j97 ^ (j98 >>> 30);
        long j101 = (-((j3 >>> 35) & 1)) & j2;
        long j102 = j99 ^ (j101 << 35);
        long j103 = j100 ^ (j101 >>> 29);
        long j104 = (-((j3 >>> 36) & 1)) & j2;
        long j105 = j102 ^ (j104 << 36);
        long j106 = j103 ^ (j104 >>> 28);
        long j107 = (-((j3 >>> 37) & 1)) & j2;
        long j108 = j105 ^ (j107 << 37);
        long j109 = j106 ^ (j107 >>> 27);
        long j110 = (-((j3 >>> 38) & 1)) & j2;
        long j111 = j108 ^ (j110 << 38);
        long j112 = j109 ^ (j110 >>> 26);
        long j113 = (-((j3 >>> 39) & 1)) & j2;
        long j114 = j111 ^ (j113 << 39);
        long j115 = j112 ^ (j113 >>> 25);
        long j116 = (-((j3 >>> 40) & 1)) & j2;
        long j117 = j114 ^ (j116 << 40);
        long j118 = j115 ^ (j116 >>> 24);
        long j119 = (-((j3 >>> 41) & 1)) & j2;
        long j120 = j117 ^ (j119 << 41);
        long j121 = j118 ^ (j119 >>> 23);
        long j122 = (-((j3 >>> 42) & 1)) & j2;
        long j123 = j120 ^ (j122 << 42);
        long j124 = j121 ^ (j122 >>> 22);
        long j125 = (-((j3 >>> 43) & 1)) & j2;
        long j126 = j123 ^ (j125 << 43);
        long j127 = j124 ^ (j125 >>> 21);
        long j128 = (-((j3 >>> 44) & 1)) & j2;
        long j129 = j126 ^ (j128 << 44);
        long j130 = j127 ^ (j128 >>> 20);
        long j131 = (-((j3 >>> 45) & 1)) & j2;
        long j132 = j129 ^ (j131 << 45);
        long j133 = j130 ^ (j131 >>> 19);
        long j134 = (-((j3 >>> 46) & 1)) & j2;
        long j135 = j132 ^ (j134 << 46);
        long j136 = j133 ^ (j134 >>> 18);
        long j137 = (-((j3 >>> 47) & 1)) & j2;
        long j138 = j135 ^ (j137 << 47);
        long j139 = j136 ^ (j137 >>> 17);
        long j140 = (-((j3 >>> 48) & 1)) & j2;
        long j141 = j138 ^ (j140 << 48);
        long j142 = j139 ^ (j140 >>> 16);
        long j143 = (-((j3 >>> 49) & 1)) & j2;
        long j144 = j141 ^ (j143 << 49);
        long j145 = j142 ^ (j143 >>> 15);
        long j146 = (-((j3 >>> 50) & 1)) & j2;
        long j147 = j144 ^ (j146 << 50);
        long j148 = j145 ^ (j146 >>> 14);
        long j149 = (-((j3 >>> 51) & 1)) & j2;
        long j150 = j147 ^ (j149 << 51);
        long j151 = j148 ^ (j149 >>> 13);
        long j152 = (-((j3 >>> 52) & 1)) & j2;
        long j153 = j150 ^ (j152 << 52);
        long j154 = j151 ^ (j152 >>> 12);
        long j155 = (-((j3 >>> 53) & 1)) & j2;
        long j156 = j153 ^ (j155 << 53);
        long j157 = j154 ^ (j155 >>> 11);
        long j158 = (-((j3 >>> 54) & 1)) & j2;
        long j159 = j156 ^ (j158 << 54);
        long j160 = j157 ^ (j158 >>> 10);
        long j161 = (-((j3 >>> 55) & 1)) & j2;
        long j162 = j159 ^ (j161 << 55);
        long j163 = j160 ^ (j161 >>> 9);
        long j164 = (-((j3 >>> 56) & 1)) & j2;
        long j165 = j162 ^ (j164 << 56);
        long j166 = j163 ^ (j164 >>> 8);
        long j167 = (-((j3 >>> 57) & 1)) & j2;
        long j168 = j165 ^ (j167 << 57);
        long j169 = j166 ^ (j167 >>> 7);
        long j170 = (-((j3 >>> 58) & 1)) & j2;
        long j171 = j168 ^ (j170 << 58);
        long j172 = j169 ^ (j170 >>> 6);
        long j173 = (-((j3 >>> 59) & 1)) & j2;
        long j174 = j171 ^ (j173 << 59);
        long j175 = j172 ^ (j173 >>> 5);
        long j176 = (-((j3 >>> 60) & 1)) & j2;
        long j177 = j174 ^ (j176 << 60);
        long j178 = j175 ^ (j176 >>> 4);
        long j179 = (-((j3 >>> 61) & 1)) & j2;
        long j180 = j177 ^ (j179 << 61);
        long j181 = j178 ^ (j179 >>> 3);
        long j182 = (-((j3 >>> 62) & 1)) & j2;
        jArr[i2] = (j180 ^ (j182 << 62)) ^ jArr[i2];
        int i3 = i2 + 1;
        jArr[i3] = (j181 ^ (j182 >>> 2)) ^ jArr[i3];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void SQR128_NO_SIMD_GF2X(long[] jArr, int i2, long[] jArr2, int i3) {
        SQR64_NO_SIMD_GF2X(jArr, i2 + 2, jArr2[i3 + 1]);
        SQR64_NO_SIMD_GF2X(jArr, i2, jArr2[i3]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void SQR256_NO_SIMD_GF2X(long[] jArr, int i2, long[] jArr2, int i3) {
        SQR128_NO_SIMD_GF2X(jArr, i2 + 4, jArr2, i3 + 2);
        SQR128_NO_SIMD_GF2X(jArr, i2, jArr2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long SQR32_NO_SIMD_GF2X(long j2) {
        long j3 = (j2 ^ (j2 << 16)) & 281470681808895L;
        long j4 = (j3 ^ (j3 << 8)) & 71777214294589695L;
        long j5 = (j4 ^ (j4 << 4)) & 1085102592571150095L;
        long j6 = (j5 ^ (j5 << 2)) & 3689348814741910323L;
        return (j6 ^ (j6 << 1)) & 6148914691236517205L;
    }

    private static long SQR64LOW_NO_SIMD_GF2X(long j2) {
        long j3 = ((j2 << 16) ^ (BodyPartID.bodyIdMax & j2)) & 281470681808895L;
        long j4 = (j3 ^ (j3 << 8)) & 71777214294589695L;
        long j5 = (j4 ^ (j4 << 4)) & 1085102592571150095L;
        long j6 = (j5 ^ (j5 << 2)) & 3689348814741910323L;
        return (j6 ^ (j6 << 1)) & 6148914691236517205L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void SQR64_NO_SIMD_GF2X(long[] jArr, int i2, long j2) {
        jArr[i2 + 1] = SQR32_NO_SIMD_GF2X(j2 >>> 32);
        jArr[i2] = SQR64LOW_NO_SIMD_GF2X(j2);
    }

    private static void mul128_no_simd_gf2x(long[] jArr, int i2, long[] jArr2, int i3, long[] jArr3, int i4) {
        MUL64_NO_SIMD_GF2X(jArr, i2, jArr2[i3], jArr3[i4]);
        int i5 = i2 + 2;
        int i6 = i3 + 1;
        int i7 = i4 + 1;
        MUL64_NO_SIMD_GF2X(jArr, i5, jArr2[i6], jArr3[i7]);
        long j2 = jArr[i5];
        int i8 = i2 + 1;
        long j3 = j2 ^ jArr[i8];
        jArr[i5] = j3;
        jArr[i8] = j3 ^ jArr[i2];
        jArr[i5] = jArr[i5] ^ jArr[i2 + 3];
        MUL64_NO_SIMD_GF2X_XOR(jArr, i8, jArr2[i3] ^ jArr2[i6], jArr3[i4] ^ jArr3[i7]);
    }

    private static void mul128_no_simd_gf2x_xor(long[] jArr, int i2, long j2, long j3, long j4, long j5, long[] jArr2) {
        MUL64_NO_SIMD_GF2X(jArr2, 0, j2, j4);
        MUL64_NO_SIMD_GF2X(jArr2, 2, j3, j5);
        jArr[i2] = jArr[i2] ^ jArr2[0];
        long j6 = jArr2[2] ^ jArr2[1];
        jArr2[2] = j6;
        int i3 = i2 + 1;
        jArr[i3] = (jArr2[0] ^ j6) ^ jArr[i3];
        int i4 = i2 + 2;
        jArr[i4] = jArr[i4] ^ (jArr2[2] ^ jArr2[3]);
        int i5 = i2 + 3;
        jArr[i5] = jArr[i5] ^ jArr2[3];
        MUL64_NO_SIMD_GF2X_XOR(jArr, i3, j2 ^ j3, j4 ^ j5);
    }

    public static void mul192_no_simd_gf2x(long[] jArr, int i2, long[] jArr2, int i3, long[] jArr3, int i4) {
        MUL64_NO_SIMD_GF2X(jArr, i2, jArr2[i3], jArr3[i4]);
        int i5 = i2 + 4;
        int i6 = i3 + 2;
        int i7 = i4 + 2;
        MUL64_NO_SIMD_GF2X(jArr, i5, jArr2[i6], jArr3[i7]);
        int i8 = i2 + 2;
        int i9 = i3 + 1;
        int i10 = i4 + 1;
        MUL64_NO_SIMD_GF2X(jArr, i8, jArr2[i9], jArr3[i10]);
        int i11 = i2 + 1;
        jArr[i11] = jArr[i11] ^ jArr[i8];
        int i12 = i2 + 3;
        long j2 = jArr[i12] ^ jArr[i5];
        jArr[i12] = j2;
        jArr[i5] = j2 ^ jArr[i2 + 5];
        jArr[i8] = (jArr[i12] ^ jArr[i11]) ^ jArr[i2];
        jArr[i12] = jArr[i11] ^ jArr[i5];
        jArr[i11] = jArr[i11] ^ jArr[i2];
        MUL64_NO_SIMD_GF2X_XOR(jArr, i11, jArr2[i3] ^ jArr2[i9], jArr3[i4] ^ jArr3[i10]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, i12, jArr2[i9] ^ jArr2[i6], jArr3[i10] ^ jArr3[i7]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, i8, jArr2[i3] ^ jArr2[i6], jArr3[i4] ^ jArr3[i7]);
    }

    public static void mul192_no_simd_gf2x_xor(long[] jArr, int i2, long[] jArr2, int i3, long[] jArr3, int i4, long[] jArr4) {
        MUL64_NO_SIMD_GF2X(jArr4, 0, jArr2[i3], jArr3[i4]);
        int i5 = i3 + 2;
        int i6 = i4 + 2;
        MUL64_NO_SIMD_GF2X(jArr4, 4, jArr2[i5], jArr3[i6]);
        int i7 = i3 + 1;
        int i8 = i4 + 1;
        MUL64_NO_SIMD_GF2X(jArr4, 2, jArr2[i7], jArr3[i8]);
        jArr[i2] = jArr[i2] ^ jArr4[0];
        long j2 = jArr4[1] ^ jArr4[2];
        jArr4[1] = j2;
        long j3 = jArr4[3] ^ jArr4[4];
        jArr4[3] = j3;
        jArr4[4] = j3 ^ jArr4[5];
        long j4 = j2 ^ jArr4[0];
        jArr4[0] = j4;
        int i9 = i2 + 1;
        jArr[i9] = j4 ^ jArr[i9];
        int i10 = i2 + 2;
        jArr[i10] = (jArr4[0] ^ jArr4[3]) ^ jArr[i10];
        int i11 = i2 + 3;
        jArr[i11] = jArr[i11] ^ (jArr4[1] ^ jArr4[4]);
        int i12 = i2 + 4;
        jArr[i12] = jArr[i12] ^ jArr4[4];
        int i13 = i2 + 5;
        jArr[i13] = jArr[i13] ^ jArr4[5];
        MUL64_NO_SIMD_GF2X_XOR(jArr, i9, jArr2[i3] ^ jArr2[i7], jArr3[i4] ^ jArr3[i8]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, i11, jArr2[i7] ^ jArr2[i5], jArr3[i8] ^ jArr3[i6]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, i10, jArr2[i3] ^ jArr2[i5], jArr3[i6] ^ jArr3[i4]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul288_no_simd_gf2x(long[] jArr, int i2, long[] jArr2, int i3, long[] jArr3, int i4, long[] jArr4) {
        int i5 = i3 + 1;
        int i6 = i4 + 1;
        mul128_no_simd_gf2x(jArr, i2, jArr2[i3], jArr2[i5], jArr3[i4], jArr3[i6]);
        int i7 = i2 + 4;
        int i8 = i3 + 2;
        int i9 = i4 + 2;
        MUL64_NO_SIMD_GF2X(jArr, i7, jArr2[i8], jArr3[i9]);
        int i10 = i2 + 7;
        int i11 = i3 + 3;
        int i12 = i4 + 3;
        MUL64_NO_SIMD_GF2X(jArr, i10, jArr2[i11], jArr3[i12]);
        long j2 = jArr[i10];
        int i13 = i2 + 5;
        jArr[i10] = j2 ^ jArr[i13];
        int i14 = i2 + 8;
        int i15 = i3 + 4;
        int i16 = i4 + 4;
        jArr[i14] = MUL32_NO_SIMD_GF2X(jArr2[i15], jArr3[i16]) ^ jArr[i14];
        jArr[i13] = jArr[i10] ^ jArr[i7];
        long j3 = jArr[i10] ^ jArr[i14];
        jArr[i10] = j3;
        int i17 = i2 + 6;
        jArr[i17] = j3 ^ jArr[i7];
        MUL64_NO_SIMD_GF2X_XOR(jArr, i13, jArr2[i11] ^ jArr2[i8], jArr3[i9] ^ jArr3[i12]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, i10, jArr2[i15] ^ jArr2[i11], jArr3[i12] ^ jArr3[i16]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, i17, jArr2[i15] ^ jArr2[i8], jArr3[i9] ^ jArr3[i16]);
        int i18 = i2 + 2;
        jArr[i7] = jArr[i7] ^ jArr[i18];
        long j4 = jArr[i13];
        int i19 = i2 + 3;
        jArr[i13] = j4 ^ jArr[i19];
        long j5 = jArr2[i3] ^ jArr2[i8];
        long j6 = jArr2[i5] ^ jArr2[i11];
        long j7 = jArr3[i4] ^ jArr3[i9];
        long j8 = jArr3[i6] ^ jArr3[i12];
        MUL64_NO_SIMD_GF2X(jArr4, 0, j5, j7);
        MUL64_NO_SIMD_GF2X(jArr4, 2, j6, j8);
        jArr4[2] = jArr4[2] ^ jArr4[1];
        jArr4[3] = MUL32_NO_SIMD_GF2X(jArr2[i15], jArr3[i16]) ^ jArr4[3];
        jArr[i18] = (jArr[i7] ^ jArr[i2]) ^ jArr4[0];
        jArr[i19] = ((jArr[i13] ^ jArr[i2 + 1]) ^ jArr4[2]) ^ jArr4[0];
        long j9 = jArr4[2] ^ jArr4[3];
        jArr4[2] = j9;
        jArr[i7] = ((jArr[i17] ^ j9) ^ jArr4[0]) ^ jArr[i7];
        jArr[i13] = jArr[i13] ^ (jArr[i10] ^ jArr4[2]);
        jArr[i17] = (jArr[i14] ^ jArr4[3]) ^ jArr[i17];
        MUL64_NO_SIMD_GF2X_XOR(jArr, i19, j5 ^ j6, j7 ^ j8);
        MUL64_NO_SIMD_GF2X_XOR(jArr, i13, j6 ^ jArr2[i15], j8 ^ jArr3[i16]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, i7, j5 ^ jArr2[i15], j7 ^ jArr3[i16]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul288_no_simd_gf2x_xor(long[] jArr, int i2, long[] jArr2, int i3, long[] jArr3, int i4, long[] jArr4) {
        int i5 = i3 + 1;
        int i6 = i4 + 1;
        mul128_no_simd_gf2x(jArr4, 0, jArr2[i3], jArr2[i5], jArr3[i4], jArr3[i6]);
        int i7 = i3 + 2;
        int i8 = i4 + 2;
        MUL64_NO_SIMD_GF2X(jArr4, 4, jArr2[i7], jArr3[i8]);
        int i9 = i3 + 3;
        int i10 = i4 + 3;
        MUL64_NO_SIMD_GF2X(jArr4, 7, jArr2[i9], jArr3[i10]);
        jArr4[7] = jArr4[7] ^ jArr4[5];
        int i11 = i3 + 4;
        int i12 = i4 + 4;
        long jMUL32_NO_SIMD_GF2X = jArr4[8] ^ MUL32_NO_SIMD_GF2X(jArr2[i11], jArr3[i12]);
        jArr4[8] = jMUL32_NO_SIMD_GF2X;
        long j2 = jArr4[7];
        long j3 = jArr4[4];
        long j4 = j2 ^ j3;
        jArr4[5] = j4;
        long j5 = jMUL32_NO_SIMD_GF2X ^ j2;
        jArr4[7] = j5;
        jArr4[6] = j5 ^ j3;
        jArr4[4] = jArr4[2] ^ j3;
        jArr4[5] = j4 ^ jArr4[3];
        jArr[i2] = jArr[i2] ^ jArr4[0];
        int i13 = i2 + 1;
        jArr[i13] = jArr[i13] ^ jArr4[1];
        int i14 = i2 + 2;
        jArr[i14] = jArr[i14] ^ (jArr4[4] ^ jArr4[0]);
        MUL64_NO_SIMD_GF2X_XOR(jArr4, 5, jArr2[i9] ^ jArr2[i7], jArr3[i8] ^ jArr3[i10]);
        MUL64_NO_SIMD_GF2X_XOR(jArr4, 7, jArr2[i11] ^ jArr2[i9], jArr3[i10] ^ jArr3[i12]);
        MUL64_NO_SIMD_GF2X_XOR(jArr4, 6, jArr2[i11] ^ jArr2[i7], jArr3[i8] ^ jArr3[i12]);
        int i15 = i2 + 3;
        jArr[i15] = jArr[i15] ^ (jArr4[5] ^ jArr4[1]);
        int i16 = i2 + 4;
        jArr[i16] = jArr[i16] ^ (jArr4[4] ^ jArr4[6]);
        int i17 = i2 + 5;
        jArr[i17] = jArr[i17] ^ (jArr4[5] ^ jArr4[7]);
        int i18 = i2 + 6;
        jArr[i18] = jArr[i18] ^ (jArr4[6] ^ jArr4[8]);
        int i19 = i2 + 7;
        jArr[i19] = jArr[i19] ^ jArr4[7];
        int i20 = i2 + 8;
        jArr[i20] = jArr[i20] ^ jArr4[8];
        long j6 = jArr2[i3] ^ jArr2[i7];
        long j7 = jArr2[i5] ^ jArr2[i9];
        long j8 = jArr3[i4] ^ jArr3[i8];
        long j9 = jArr3[i6] ^ jArr3[i10];
        MUL64_NO_SIMD_GF2X(jArr4, 0, j6, j8);
        MUL64_NO_SIMD_GF2X(jArr4, 2, j7, j9);
        jArr4[2] = jArr4[2] ^ jArr4[1];
        jArr4[3] = MUL32_NO_SIMD_GF2X(jArr2[i11], jArr3[i12]) ^ jArr4[3];
        jArr[i14] = jArr[i14] ^ jArr4[0];
        jArr[i15] = jArr[i15] ^ (jArr4[2] ^ jArr4[0]);
        long j10 = jArr4[2] ^ jArr4[3];
        jArr4[2] = j10;
        jArr[i16] = (j10 ^ jArr4[0]) ^ jArr[i16];
        jArr[i17] = jArr[i17] ^ jArr4[2];
        jArr[i18] = jArr[i18] ^ jArr4[3];
        MUL64_NO_SIMD_GF2X_XOR(jArr, i15, j6 ^ j7, j8 ^ j9);
        MUL64_NO_SIMD_GF2X_XOR(jArr, i17, j7 ^ jArr2[i11], j9 ^ jArr3[i12]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, i16, jArr2[i11] ^ j6, jArr3[i12] ^ j8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul384_no_simd_gf2x(long[] jArr, long[] jArr2, int i2, long[] jArr3, int i3, long[] jArr4) {
        mul192_no_simd_gf2x(jArr, 0, jArr2, i2, jArr3, i3);
        int i4 = i2 + 3;
        int i5 = i3 + 3;
        mul192_no_simd_gf2x(jArr, 6, jArr2, i4, jArr3, i5);
        long j2 = jArr2[i2] ^ jArr2[i4];
        long j3 = jArr2[i2 + 1] ^ jArr2[i2 + 4];
        long j4 = jArr2[i2 + 2] ^ jArr2[i2 + 5];
        long j5 = jArr3[i3] ^ jArr3[i5];
        long j6 = jArr3[i3 + 1] ^ jArr3[i3 + 4];
        long j7 = jArr3[i3 + 2] ^ jArr3[i3 + 5];
        jArr[6] = jArr[6] ^ jArr[3];
        jArr[7] = jArr[7] ^ jArr[4];
        jArr[8] = jArr[8] ^ jArr[5];
        MUL64_NO_SIMD_GF2X(jArr4, 0, j2, j5);
        MUL64_NO_SIMD_GF2X(jArr4, 4, j4, j7);
        MUL64_NO_SIMD_GF2X(jArr4, 2, j3, j6);
        long j8 = jArr[6];
        long j9 = j8 ^ jArr[0];
        long j10 = jArr4[0];
        jArr[3] = j9 ^ j10;
        long j11 = jArr4[1] ^ jArr4[2];
        jArr4[1] = j11;
        long j12 = j10 ^ j11;
        jArr4[0] = j12;
        long j13 = jArr4[3] ^ jArr4[4];
        jArr4[3] = j13;
        long j14 = j13 ^ jArr4[5];
        jArr4[4] = j14;
        long j15 = jArr[8];
        jArr[5] = ((j15 ^ jArr[2]) ^ j13) ^ j12;
        jArr[6] = j8 ^ ((jArr[9] ^ j11) ^ j14);
        long j16 = jArr[7];
        jArr[4] = (jArr[1] ^ j16) ^ j12;
        jArr[7] = j16 ^ (jArr4[4] ^ jArr[10]);
        jArr[8] = j15 ^ (jArr[11] ^ jArr4[5]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, 4, j2 ^ j3, j5 ^ j6);
        MUL64_NO_SIMD_GF2X_XOR(jArr, 6, j3 ^ j4, j6 ^ j7);
        MUL64_NO_SIMD_GF2X_XOR(jArr, 5, j2 ^ j4, j5 ^ j7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul384_no_simd_gf2x_xor(long[] jArr, long[] jArr2, int i2, long[] jArr3, int i3, long[] jArr4) {
        mul192_no_simd_gf2x(jArr4, 0, jArr2, i2, jArr3, i3);
        int i4 = i2 + 3;
        int i5 = i3 + 3;
        mul192_no_simd_gf2x(jArr4, 6, jArr2, i4, jArr3, i5);
        long j2 = jArr2[i4] ^ jArr2[i2];
        long j3 = jArr2[i2 + 1] ^ jArr2[i2 + 4];
        long j4 = jArr2[i2 + 2] ^ jArr2[i2 + 5];
        long j5 = jArr3[i5] ^ jArr3[i3];
        long j6 = jArr3[i3 + 4] ^ jArr3[i3 + 1];
        long j7 = jArr3[i3 + 5] ^ jArr3[i3 + 2];
        long j8 = jArr4[6] ^ jArr4[3];
        jArr4[6] = j8;
        long j9 = jArr4[7] ^ jArr4[4];
        jArr4[7] = j9;
        long j10 = jArr4[8] ^ jArr4[5];
        jArr4[8] = j10;
        jArr[0] = jArr[0] ^ jArr4[0];
        jArr[1] = jArr[1] ^ jArr4[1];
        jArr[2] = jArr[2] ^ jArr4[2];
        jArr[3] = jArr[3] ^ (j8 ^ jArr4[0]);
        jArr[5] = jArr[5] ^ (j10 ^ jArr4[2]);
        long j11 = jArr[6];
        long j12 = jArr4[9];
        jArr[6] = j11 ^ (j8 ^ j12);
        jArr[4] = jArr[4] ^ (j9 ^ jArr4[1]);
        long j13 = jArr[7];
        long j14 = jArr4[10];
        jArr[7] = j13 ^ (j9 ^ j14);
        long j15 = jArr[8];
        long j16 = jArr4[11];
        jArr[8] = j15 ^ (j10 ^ j16);
        jArr[9] = jArr[9] ^ j12;
        jArr[10] = jArr[10] ^ j14;
        jArr[11] = jArr[11] ^ j16;
        MUL64_NO_SIMD_GF2X(jArr4, 0, j2, j5);
        MUL64_NO_SIMD_GF2X(jArr4, 4, j4, j7);
        MUL64_NO_SIMD_GF2X(jArr4, 2, j3, j6);
        long j17 = jArr[3];
        long j18 = jArr4[0];
        jArr[3] = j17 ^ j18;
        long j19 = jArr4[1] ^ jArr4[2];
        jArr4[1] = j19;
        long j20 = j18 ^ j19;
        jArr4[0] = j20;
        long j21 = jArr4[3] ^ jArr4[4];
        jArr4[3] = j21;
        long j22 = j21 ^ jArr4[5];
        jArr4[4] = j22;
        jArr[5] = jArr[5] ^ (j21 ^ j20);
        jArr[6] = (j19 ^ j22) ^ jArr[6];
        jArr[4] = jArr[4] ^ j20;
        jArr[7] = jArr[7] ^ jArr4[4];
        jArr[8] = jArr[8] ^ jArr4[5];
        MUL64_NO_SIMD_GF2X_XOR(jArr, 4, j2 ^ j3, j5 ^ j6);
        MUL64_NO_SIMD_GF2X_XOR(jArr, 6, j3 ^ j4, j6 ^ j7);
        MUL64_NO_SIMD_GF2X_XOR(jArr, 5, j2 ^ j4, j5 ^ j7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul416_no_simd_gf2x(long[] jArr, long[] jArr2, int i2, long[] jArr3, int i3, long[] jArr4) {
        mul192_no_simd_gf2x(jArr, 0, jArr2, i2, jArr3, i3);
        int i4 = i2 + 3;
        int i5 = i2 + 4;
        int i6 = i3 + 3;
        int i7 = i3 + 4;
        mul128_no_simd_gf2x(jArr, 6, jArr2[i4], jArr2[i5], jArr3[i6], jArr3[i7]);
        int i8 = i2 + 5;
        int i9 = i3 + 5;
        MUL64_NO_SIMD_GF2X(jArr, 10, jArr2[i8], jArr3[i9]);
        int i10 = i2 + 6;
        int i11 = i3 + 6;
        long jMUL32_NO_SIMD_GF2X = MUL32_NO_SIMD_GF2X(jArr2[i10], jArr3[i11]) ^ jArr[11];
        jArr[12] = jMUL32_NO_SIMD_GF2X;
        jArr[11] = jMUL32_NO_SIMD_GF2X ^ jArr[10];
        MUL64_NO_SIMD_GF2X_XOR(jArr, 11, jArr2[i10] ^ jArr2[i8], jArr3[i11] ^ jArr3[i9]);
        long j2 = jArr[8] ^ jArr[10];
        jArr[8] = j2;
        long j3 = jArr[11] ^ jArr[9];
        jArr[11] = j3;
        jArr[10] = jArr[12] ^ j2;
        jArr[8] = j2 ^ jArr[6];
        jArr[9] = jArr[7] ^ j3;
        mul128_no_simd_gf2x_xor(jArr, 8, jArr2[i8] ^ jArr2[i4], jArr2[i10] ^ jArr2[i5], jArr3[i9] ^ jArr3[i6], jArr3[i11] ^ jArr3[i7], jArr4);
        long j4 = jArr2[i4] ^ jArr2[i2];
        long j5 = jArr2[i2 + 1] ^ jArr2[i5];
        long j6 = jArr2[i2 + 2] ^ jArr2[i8];
        long j7 = jArr2[i10];
        long j8 = jArr3[i3] ^ jArr3[i6];
        long j9 = jArr3[i3 + 1] ^ jArr3[i7];
        long j10 = jArr3[i3 + 2] ^ jArr3[i9];
        long j11 = jArr3[i11];
        jArr[6] = jArr[6] ^ jArr[3];
        jArr[7] = jArr[7] ^ jArr[4];
        jArr[8] = jArr[8] ^ jArr[5];
        mul128_no_simd_gf2x(jArr4, 0, j4, j5, j8, j9);
        MUL64_NO_SIMD_GF2X(jArr4, 4, j6, j10);
        long jMUL32_NO_SIMD_GF2X2 = MUL32_NO_SIMD_GF2X(j7, j11) ^ jArr4[5];
        jArr4[6] = jMUL32_NO_SIMD_GF2X2;
        jArr4[5] = jMUL32_NO_SIMD_GF2X2 ^ jArr4[4];
        MUL64_NO_SIMD_GF2X_XOR(jArr4, 5, j6 ^ j7, j10 ^ j11);
        long j12 = jArr[6];
        long j13 = jArr[0] ^ j12;
        long j14 = jArr4[0];
        jArr[3] = j13 ^ j14;
        long j15 = jArr[7];
        long j16 = j15 ^ jArr[1];
        long j17 = jArr4[1];
        jArr[4] = j16 ^ j17;
        long j18 = jArr4[2] ^ jArr4[4];
        jArr4[2] = j18;
        long j19 = jArr4[3] ^ jArr4[5];
        jArr4[3] = j19;
        long j20 = jArr[8];
        jArr[5] = ((j20 ^ jArr[2]) ^ j18) ^ j14;
        long j21 = jArr[9];
        jArr[6] = j12 ^ ((j21 ^ j19) ^ j17);
        long j22 = jArr[10] ^ j18;
        long j23 = jArr4[6];
        jArr[7] = (j22 ^ j23) ^ j15;
        jArr[8] = j20 ^ (jArr[11] ^ j19);
        jArr[9] = j21 ^ (jArr[12] ^ j23);
        mul128_no_simd_gf2x_xor(jArr, 5, j4 ^ j6, j5 ^ j7, j8 ^ j10, j9 ^ j11, jArr4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul416_no_simd_gf2x_xor(long[] jArr, long[] jArr2, int i2, long[] jArr3, int i3, long[] jArr4, long[] jArr5) {
        mul192_no_simd_gf2x(jArr4, 0, jArr2, i2, jArr3, i3);
        int i4 = i2 + 3;
        int i5 = i2 + 4;
        int i6 = i3 + 3;
        int i7 = i3 + 4;
        mul128_no_simd_gf2x(jArr4, 6, jArr2[i4], jArr2[i5], jArr3[i6], jArr3[i7]);
        int i8 = i2 + 5;
        int i9 = i3 + 5;
        MUL64_NO_SIMD_GF2X(jArr4, 10, jArr2[i8], jArr3[i9]);
        int i10 = i2 + 6;
        int i11 = i3 + 6;
        long jMUL32_NO_SIMD_GF2X = MUL32_NO_SIMD_GF2X(jArr2[i10], jArr3[i11]) ^ jArr4[11];
        jArr4[12] = jMUL32_NO_SIMD_GF2X;
        jArr4[11] = jMUL32_NO_SIMD_GF2X ^ jArr4[10];
        MUL64_NO_SIMD_GF2X_XOR(jArr4, 11, jArr2[i10] ^ jArr2[i8], jArr3[i11] ^ jArr3[i9]);
        long j2 = jArr4[8] ^ jArr4[10];
        jArr4[8] = j2;
        long j3 = jArr4[11] ^ jArr4[9];
        jArr4[11] = j3;
        jArr4[10] = jArr4[12] ^ j2;
        long j4 = jArr4[6];
        long j5 = j2 ^ j4;
        jArr4[8] = j5;
        long j6 = jArr4[7];
        jArr4[9] = j3 ^ j6;
        jArr4[6] = jArr4[3] ^ j4;
        jArr4[7] = jArr4[4] ^ j6;
        jArr4[8] = j5 ^ jArr4[5];
        mul128_no_simd_gf2x_xor(jArr4, 8, jArr2[i8] ^ jArr2[i4], jArr2[i10] ^ jArr2[i5], jArr3[i9] ^ jArr3[i6], jArr3[i11] ^ jArr3[i7], jArr5);
        jArr[0] = jArr[0] ^ jArr4[0];
        jArr[1] = jArr[1] ^ jArr4[1];
        jArr[2] = jArr[2] ^ jArr4[2];
        long j7 = jArr[3];
        long j8 = jArr4[6];
        jArr[3] = j7 ^ (jArr4[0] ^ j8);
        long j9 = jArr[4];
        long j10 = jArr4[7];
        jArr[4] = j9 ^ (jArr4[1] ^ j10);
        long j11 = jArr[5];
        long j12 = jArr4[8];
        jArr[5] = j11 ^ (jArr4[2] ^ j12);
        long j13 = jArr[6];
        long j14 = jArr4[9];
        jArr[6] = j13 ^ (j8 ^ j14);
        long j15 = jArr[7];
        long j16 = jArr4[10];
        jArr[7] = j15 ^ (j10 ^ j16);
        long j17 = jArr[8];
        long j18 = jArr4[11];
        jArr[8] = j17 ^ (j12 ^ j18);
        long j19 = jArr[9];
        long j20 = jArr4[12];
        jArr[9] = j19 ^ (j14 ^ j20);
        jArr[10] = jArr[10] ^ j16;
        jArr[11] = jArr[11] ^ j18;
        jArr[12] = jArr[12] ^ j20;
        long j21 = jArr2[i4] ^ jArr2[i2];
        long j22 = jArr2[i5] ^ jArr2[i2 + 1];
        long j23 = jArr2[i2 + 2] ^ jArr2[i8];
        long j24 = jArr2[i10];
        long j25 = jArr3[i3] ^ jArr3[i6];
        long j26 = jArr3[i3 + 1] ^ jArr3[i7];
        long j27 = jArr3[i3 + 2] ^ jArr3[i9];
        long j28 = jArr3[i11];
        mul128_no_simd_gf2x(jArr4, 0, j21, j22, j25, j26);
        MUL64_NO_SIMD_GF2X(jArr4, 4, j23, j27);
        long jMUL32_NO_SIMD_GF2X2 = MUL32_NO_SIMD_GF2X(j24, j28) ^ jArr4[5];
        jArr4[6] = jMUL32_NO_SIMD_GF2X2;
        jArr4[5] = jMUL32_NO_SIMD_GF2X2 ^ jArr4[4];
        MUL64_NO_SIMD_GF2X_XOR(jArr4, 5, j23 ^ j24, j27 ^ j28);
        long j29 = jArr[3];
        long j30 = jArr4[0];
        jArr[3] = j29 ^ j30;
        long j31 = jArr[4];
        long j32 = jArr4[1];
        jArr[4] = j31 ^ j32;
        long j33 = jArr4[2] ^ jArr4[4];
        jArr4[2] = j33;
        long j34 = jArr4[3] ^ jArr4[5];
        jArr4[3] = j34;
        jArr[5] = jArr[5] ^ (j30 ^ j33);
        jArr[6] = jArr[6] ^ (j34 ^ j32);
        long j35 = jArr[7];
        long j36 = jArr4[6];
        jArr[7] = (j33 ^ j36) ^ j35;
        jArr[8] = jArr[8] ^ j34;
        jArr[9] = jArr[9] ^ j36;
        mul128_no_simd_gf2x_xor(jArr, 5, j21 ^ j23, j22 ^ j24, j25 ^ j27, j26 ^ j28, jArr4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul544_no_simd_gf2x(long[] jArr, long[] jArr2, int i2, long[] jArr3, int i3, long[] jArr4, long[] jArr5, long[] jArr6) {
        int i4 = i2 + 1;
        int i5 = i3 + 1;
        mul128_no_simd_gf2x(jArr, 0, jArr2[i2], jArr2[i4], jArr3[i3], jArr3[i5]);
        int i6 = i2 + 2;
        int i7 = i2 + 3;
        int i8 = i3 + 2;
        int i9 = i3 + 3;
        mul128_no_simd_gf2x(jArr, 4, jArr2[i6], jArr2[i7], jArr3[i8], jArr3[i9]);
        long j2 = jArr[4] ^ jArr[2];
        jArr[4] = j2;
        long j3 = jArr[5] ^ jArr[3];
        jArr[5] = j3;
        jArr[2] = jArr[0] ^ j2;
        jArr[3] = jArr[1] ^ j3;
        jArr[4] = j2 ^ jArr[6];
        jArr[5] = j3 ^ jArr[7];
        mul128_no_simd_gf2x_xor(jArr, 2, jArr2[i6] ^ jArr2[i2], jArr2[i4] ^ jArr2[i7], jArr3[i3] ^ jArr3[i8], jArr3[i5] ^ jArr3[i9], jArr6);
        int i10 = i2 + 4;
        int i11 = i3 + 4;
        mul288_no_simd_gf2x(jArr, 8, jArr2, i10, jArr3, i11, jArr6);
        long j4 = jArr[8] ^ jArr[4];
        jArr[8] = j4;
        long j5 = jArr[9] ^ jArr[5];
        jArr[9] = j5;
        long j6 = jArr[10] ^ jArr[6];
        jArr[10] = j6;
        long j7 = jArr[11] ^ jArr[7];
        jArr[11] = j7;
        jArr[4] = j4 ^ jArr[0];
        jArr[5] = j5 ^ jArr[1];
        jArr[6] = j6 ^ jArr[2];
        jArr[7] = j7 ^ jArr[3];
        long j8 = jArr[12];
        jArr[8] = j4 ^ j8;
        jArr[9] = j5 ^ jArr[13];
        jArr[10] = j6 ^ jArr[14];
        jArr[11] = j7 ^ jArr[15];
        jArr[12] = j8 ^ jArr[16];
        jArr4[0] = jArr2[i2] ^ jArr2[i10];
        jArr4[1] = jArr2[i4] ^ jArr2[i2 + 5];
        jArr4[2] = jArr2[i6] ^ jArr2[i2 + 6];
        jArr4[3] = jArr2[i7] ^ jArr2[i2 + 7];
        jArr4[4] = jArr2[i2 + 8];
        jArr5[0] = jArr3[i3] ^ jArr3[i11];
        jArr5[1] = jArr3[i5] ^ jArr3[i3 + 5];
        jArr5[2] = jArr3[i8] ^ jArr3[i3 + 6];
        jArr5[3] = jArr3[i9] ^ jArr3[i3 + 7];
        jArr5[4] = jArr3[i3 + 8];
        mul288_no_simd_gf2x_xor(jArr, 4, jArr4, 0, jArr5, 0, jArr6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul544_no_simd_gf2x_xor(long[] jArr, long[] jArr2, int i2, long[] jArr3, int i3, long[] jArr4, long[] jArr5, long[] jArr6, long[] jArr7) {
        int i4 = i2 + 1;
        int i5 = i3 + 1;
        mul128_no_simd_gf2x(jArr6, 0, jArr2[i2], jArr2[i4], jArr3[i3], jArr3[i5]);
        int i6 = i2 + 2;
        int i7 = i2 + 3;
        int i8 = i3 + 2;
        int i9 = i3 + 3;
        mul128_no_simd_gf2x(jArr6, 4, jArr2[i6], jArr2[i7], jArr3[i8], jArr3[i9]);
        long j2 = jArr6[4] ^ jArr6[2];
        jArr6[4] = j2;
        long j3 = jArr6[5] ^ jArr6[3];
        jArr6[5] = j3;
        jArr6[2] = jArr6[0] ^ j2;
        jArr6[3] = jArr6[1] ^ j3;
        jArr6[4] = j2 ^ jArr6[6];
        jArr6[5] = j3 ^ jArr6[7];
        mul128_no_simd_gf2x_xor(jArr6, 2, jArr2[i6] ^ jArr2[i2], jArr2[i4] ^ jArr2[i7], jArr3[i3] ^ jArr3[i8], jArr3[i5] ^ jArr3[i9], jArr7);
        int i10 = i2 + 4;
        int i11 = i3 + 4;
        mul288_no_simd_gf2x(jArr6, 8, jArr2, i10, jArr3, i11, jArr7);
        long j4 = jArr6[8] ^ jArr6[4];
        jArr6[8] = j4;
        long j5 = jArr6[9] ^ jArr6[5];
        jArr6[9] = j5;
        long j6 = jArr6[10] ^ jArr6[6];
        jArr6[10] = j6;
        long j7 = jArr6[11] ^ jArr6[7];
        jArr6[11] = j7;
        jArr[0] = jArr[0] ^ jArr6[0];
        jArr[1] = jArr[1] ^ jArr6[1];
        jArr[2] = jArr[2] ^ jArr6[2];
        jArr[3] = jArr[3] ^ jArr6[3];
        jArr[4] = jArr[4] ^ (j4 ^ jArr6[0]);
        jArr[5] = jArr[5] ^ (j5 ^ jArr6[1]);
        jArr[6] = jArr[6] ^ (j6 ^ jArr6[2]);
        jArr[7] = jArr[7] ^ (j7 ^ jArr6[3]);
        long j8 = jArr[8];
        long j9 = jArr6[12];
        jArr[8] = j8 ^ (j4 ^ j9);
        long j10 = jArr[9];
        long j11 = jArr6[13];
        jArr[9] = j10 ^ (j5 ^ j11);
        long j12 = jArr[10];
        long j13 = jArr6[14];
        jArr[10] = j12 ^ (j6 ^ j13);
        long j14 = jArr[11];
        long j15 = jArr6[15];
        jArr[11] = j14 ^ (j7 ^ j15);
        long j16 = jArr[12];
        long j17 = jArr6[16];
        jArr[12] = j16 ^ (j9 ^ j17);
        jArr[13] = jArr[13] ^ j11;
        jArr[14] = jArr[14] ^ j13;
        jArr[15] = jArr[15] ^ j15;
        jArr[16] = jArr[16] ^ j17;
        jArr4[0] = jArr2[i2] ^ jArr2[i10];
        jArr4[1] = jArr2[i4] ^ jArr2[i2 + 5];
        jArr4[2] = jArr2[i6] ^ jArr2[i2 + 6];
        jArr4[3] = jArr2[i7] ^ jArr2[i2 + 7];
        jArr4[4] = jArr2[i2 + 8];
        jArr5[0] = jArr3[i3] ^ jArr3[i11];
        jArr5[1] = jArr3[i5] ^ jArr3[i3 + 5];
        jArr5[2] = jArr3[i8] ^ jArr3[i3 + 6];
        jArr5[3] = jArr3[i9] ^ jArr3[i3 + 7];
        jArr5[4] = jArr3[i3 + 8];
        mul288_no_simd_gf2x_xor(jArr, 4, jArr4, 0, jArr5, 0, jArr6);
    }

    public abstract void mul_gf2x(Pointer pointer, Pointer pointer2, Pointer pointer3);

    public abstract void mul_gf2x_xor(Pointer pointer, Pointer pointer2, Pointer pointer3);

    public abstract void sqr_gf2x(long[] jArr, long[] jArr2, int i2);

    private static void mul128_no_simd_gf2x(long[] jArr, int i2, long j2, long j3, long j4, long j5) {
        MUL64_NO_SIMD_GF2X(jArr, i2, j2, j4);
        int i3 = i2 + 2;
        MUL64_NO_SIMD_GF2X(jArr, i3, j3, j5);
        int i4 = i2 + 1;
        long j6 = jArr[i3] ^ jArr[i4];
        jArr[i3] = j6;
        jArr[i4] = j6 ^ jArr[i2];
        jArr[i3] = jArr[i3] ^ jArr[i2 + 3];
        MUL64_NO_SIMD_GF2X_XOR(jArr, i4, j2 ^ j3, j4 ^ j5);
    }
}
