package org.bouncycastle.pqc.crypto.gemss;

/* JADX INFO: loaded from: classes5.dex */
abstract class Rem_GF2n {
    protected int ki;
    protected int ki64;
    protected long mask;

    public static class REM192_SPECIALIZED_TRINOMIAL_GF2X extends Rem_GF2n {
        private final int k3;
        private final int k364;
        private final int ki_k3;

        public REM192_SPECIALIZED_TRINOMIAL_GF2X(int i2, int i3, int i4, int i5, long j2) {
            this.k3 = i2;
            this.ki = i3;
            this.ki64 = i4;
            this.k364 = i5;
            this.mask = j2;
            this.ki_k3 = i3 - i2;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[2];
            int i3 = this.ki;
            long j3 = jArr2[3];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = jArr2[4];
            long j6 = (j3 >>> i3) ^ (j5 << i4);
            long j7 = (j5 >>> i3) ^ (jArr2[5] << i4);
            long j8 = jArr2[1] ^ j6;
            int i5 = this.k364;
            int i6 = this.k3;
            jArr[i2 + 1] = (j8 ^ (j4 >>> i5)) ^ (j6 << i6);
            jArr[i2 + 2] = (((j6 >>> i5) ^ (jArr2[2] ^ j7)) ^ (j7 << i6)) & this.mask;
            long j9 = j4 ^ (j7 >>> this.ki_k3);
            jArr[i2] = (j9 << i6) ^ (jArr2[0] ^ j9);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[2];
            int i3 = this.ki;
            long j3 = jArr2[3];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = jArr2[4];
            long j6 = (j3 >>> i3) ^ (j5 << i4);
            long j7 = (j5 >>> i3) ^ (jArr2[5] << i4);
            int i5 = i2 + 1;
            long j8 = jArr[i5];
            long j9 = jArr2[1] ^ j6;
            int i6 = this.k364;
            int i7 = this.k3;
            jArr[i5] = j8 ^ ((j9 ^ (j4 >>> i6)) ^ (j6 << i7));
            int i8 = i2 + 2;
            jArr[i8] = ((((j6 >>> i6) ^ (jArr2[2] ^ j7)) ^ (j7 << i7)) & this.mask) ^ jArr[i8];
            long j10 = (j7 >>> this.ki_k3) ^ j4;
            jArr[i2] = ((j10 << i7) ^ (jArr2[0] ^ j10)) ^ jArr[i2];
        }
    }

    public static class REM288_SPECIALIZED_TRINOMIAL_GF2X extends Rem_GF2n {
        private final int k3;
        private final int k364;
        private final int k364ki;
        private final int k3_ki;

        public REM288_SPECIALIZED_TRINOMIAL_GF2X(int i2, int i3, int i4, int i5, long j2) {
            this.k3 = i2;
            this.ki = i3;
            this.ki64 = i4;
            this.k364 = i5;
            this.mask = j2;
            this.k364ki = i5 + i3;
            this.k3_ki = i2 - i3;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[5];
            int i3 = this.ki;
            long j3 = jArr2[6];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = (j3 >>> i3) ^ (jArr2[7] << i4);
            long j6 = jArr2[2] ^ j5;
            int i5 = this.k364;
            int i6 = this.k3;
            jArr[i2 + 2] = (j6 ^ (j4 >>> i5)) ^ (j5 << i6);
            long j7 = (jArr2[7] >>> i3) ^ (jArr2[8] << i4);
            jArr[i2 + 3] = ((j5 >>> i5) ^ (jArr2[3] ^ j7)) ^ (j7 << i6);
            long j8 = jArr2[8] >>> i3;
            long j9 = jArr2[4];
            long j10 = (((j9 >>> i3) ^ (jArr2[5] << i4)) ^ (j7 >>> this.k364ki)) ^ (j8 << this.k3_ki);
            long j11 = j8 << i6;
            jArr[i2 + 4] = (j11 ^ ((j7 >>> i5) ^ (j9 ^ j8))) & this.mask;
            jArr[i2] = (jArr2[0] ^ j10) ^ (j10 << i6);
            jArr[i2 + 1] = ((j4 << i6) ^ (jArr2[1] ^ j4)) ^ (j10 >>> i5);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[5];
            int i3 = this.ki;
            long j3 = jArr2[6];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = (j3 >>> i3) ^ (jArr2[7] << i4);
            int i5 = i2 + 2;
            long j6 = jArr[i5];
            long j7 = jArr2[2] ^ j5;
            int i6 = this.k364;
            int i7 = this.k3;
            jArr[i5] = j6 ^ ((j7 ^ (j4 >>> i6)) ^ (j5 << i7));
            long j8 = (jArr2[7] >>> i3) ^ (jArr2[8] << i4);
            int i8 = i2 + 3;
            jArr[i8] = (((jArr2[3] ^ j8) ^ (j5 >>> i6)) ^ (j8 << i7)) ^ jArr[i8];
            long j9 = jArr2[8] >>> i3;
            int i9 = i2 + 4;
            jArr[i9] = ((((jArr2[4] ^ j9) ^ (j8 >>> i6)) ^ (j9 << i7)) & this.mask) ^ jArr[i9];
            long j10 = (((jArr2[4] >>> i3) ^ (jArr2[5] << i4)) ^ (j8 >>> this.k364ki)) ^ (j9 << this.k3_ki);
            jArr[i2] = jArr[i2] ^ ((jArr2[0] ^ j10) ^ (j10 << i7));
            int i10 = i2 + 1;
            jArr[i10] = ((j10 >>> i6) ^ ((jArr2[1] ^ j4) ^ (j4 << i7))) ^ jArr[i10];
        }
    }

    public static class REM384_SPECIALIZED358_TRINOMIAL_GF2X extends Rem_GF2n {
        private final int k3;
        private final int k364;
        private final int k364ki;
        private final int k3_ki;

        public REM384_SPECIALIZED358_TRINOMIAL_GF2X(int i2, int i3, int i4, int i5, long j2) {
            this.k3 = i2;
            this.ki = i3;
            this.ki64 = i4;
            this.k364 = i5;
            this.mask = j2;
            this.k364ki = i5 + i3;
            this.k3_ki = i2 - i3;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[6];
            int i3 = this.ki;
            long j3 = jArr2[7];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = (j3 >>> i3) ^ (jArr2[8] << i4);
            long j6 = jArr2[2] ^ j5;
            int i5 = this.k364;
            int i6 = this.k3;
            jArr[i2 + 2] = (j6 ^ (j4 >>> i5)) ^ (j5 << i6);
            long j7 = (jArr2[8] >>> i3) ^ (jArr2[9] << i4);
            jArr[i2 + 3] = ((j5 >>> i5) ^ (jArr2[3] ^ j7)) ^ (j7 << i6);
            long j8 = (jArr2[9] >>> i3) ^ (jArr2[10] << i4);
            jArr[i2 + 4] = ((j7 >>> i5) ^ (jArr2[4] ^ j8)) ^ (j8 << i6);
            long j9 = (jArr2[10] >>> i3) ^ (jArr2[11] << i4);
            long j10 = jArr2[5];
            long j11 = (((j10 >>> i3) ^ (jArr2[6] << i4)) ^ (j8 >>> this.k364ki)) ^ (j9 << this.k3_ki);
            jArr[i2 + 5] = ((j8 >>> i5) ^ (j10 ^ j9)) & this.mask;
            jArr[i2] = (jArr2[0] ^ j11) ^ (j11 << i6);
            jArr[i2 + 1] = (j4 << i6) ^ ((jArr2[1] ^ j4) ^ (j11 >>> i5));
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[6];
            int i3 = this.ki;
            long j3 = jArr2[7];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = (j3 >>> i3) ^ (jArr2[8] << i4);
            int i5 = i2 + 2;
            long j6 = jArr[i5];
            long j7 = jArr2[2] ^ j5;
            int i6 = this.k364;
            int i7 = this.k3;
            jArr[i5] = j6 ^ ((j7 ^ (j4 >>> i6)) ^ (j5 << i7));
            long j8 = (jArr2[8] >>> i3) ^ (jArr2[9] << i4);
            int i8 = i2 + 3;
            jArr[i8] = (((jArr2[3] ^ j8) ^ (j5 >>> i6)) ^ (j8 << i7)) ^ jArr[i8];
            long j9 = (jArr2[9] >>> i3) ^ (jArr2[10] << i4);
            int i9 = i2 + 4;
            jArr[i9] = (((jArr2[4] ^ j9) ^ (j8 >>> i6)) ^ (j9 << i7)) ^ jArr[i9];
            long j10 = (jArr2[10] >>> i3) ^ (jArr2[11] << i4);
            int i10 = i2 + 5;
            jArr[i10] = (((jArr2[5] ^ j10) ^ (j9 >>> i6)) & this.mask) ^ jArr[i10];
            long j11 = (((jArr2[5] >>> i3) ^ (jArr2[6] << i4)) ^ (j9 >>> this.k364ki)) ^ (j10 << this.k3_ki);
            jArr[i2] = jArr[i2] ^ ((jArr2[0] ^ j11) ^ (j11 << i7));
            int i11 = i2 + 1;
            jArr[i11] = (((j11 >>> i6) ^ (jArr2[1] ^ j4)) ^ (j4 << i7)) ^ jArr[i11];
        }
    }

    public static class REM384_SPECIALIZED_TRINOMIAL_GF2X extends Rem_GF2n {
        private final int k3;
        private final int k364;
        private final int k364ki;
        private final int k3_ki;

        public REM384_SPECIALIZED_TRINOMIAL_GF2X(int i2, int i3, int i4, int i5, long j2) {
            this.k3 = i2;
            this.ki = i3;
            this.ki64 = i4;
            this.k364 = i5;
            this.mask = j2;
            this.k364ki = i5 + i3;
            this.k3_ki = i2 - i3;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[7];
            int i3 = this.ki;
            long j3 = jArr2[8];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = jArr2[9];
            long j6 = (j3 >>> i3) ^ (j5 << i4);
            long j7 = jArr2[10];
            long j8 = (j5 >>> i3) ^ (j7 << i4);
            long j9 = (j7 >>> i3) ^ (jArr2[11] << i4);
            long j10 = jArr2[5] >>> i3;
            long j11 = jArr2[6];
            int i5 = this.k364ki;
            int i6 = this.k3_ki;
            long j12 = ((j10 ^ (j11 << i4)) ^ (j6 >>> i5)) ^ (j8 << i6);
            long j13 = (((j11 >>> i3) ^ (j2 << i4)) ^ (j8 >>> i5)) ^ (j9 << i6);
            jArr[i2] = jArr2[0] ^ j12;
            long j14 = jArr2[1] ^ j13;
            int i7 = this.k3;
            jArr[i2 + 1] = j14 ^ (j12 << i7);
            long j15 = jArr2[2] ^ j4;
            int i8 = this.k364;
            jArr[i2 + 2] = (j15 ^ (j12 >>> i8)) ^ (j13 << i7);
            jArr[i2 + 3] = ((j13 >>> i8) ^ (jArr2[3] ^ j6)) ^ (j4 << i7);
            jArr[i2 + 4] = ((jArr2[4] ^ j8) ^ (j4 >>> i8)) ^ (j6 << i7);
            jArr[i2 + 5] = ((jArr2[5] ^ j9) ^ (j6 >>> i8)) & this.mask;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[7];
            int i3 = this.ki;
            long j3 = jArr2[8];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = jArr2[9];
            long j6 = (j3 >>> i3) ^ (j5 << i4);
            long j7 = jArr2[10];
            long j8 = (j5 >>> i3) ^ (j7 << i4);
            long j9 = (j7 >>> i3) ^ (jArr2[11] << i4);
            long j10 = jArr2[5] >>> i3;
            long j11 = jArr2[6];
            int i5 = this.k364ki;
            int i6 = this.k3_ki;
            long j12 = ((j10 ^ (j11 << i4)) ^ (j6 >>> i5)) ^ (j8 << i6);
            long j13 = (((j11 >>> i3) ^ (j2 << i4)) ^ (j8 >>> i5)) ^ (j9 << i6);
            jArr[i2] = jArr[i2] ^ (jArr2[0] ^ j12);
            int i7 = i2 + 1;
            long j14 = jArr[i7];
            long j15 = jArr2[1] ^ j13;
            int i8 = this.k3;
            jArr[i7] = j14 ^ (j15 ^ (j12 << i8));
            int i9 = i2 + 2;
            long j16 = jArr[i9];
            long j17 = jArr2[2] ^ j4;
            int i10 = this.k364;
            jArr[i9] = j16 ^ ((j17 ^ (j12 >>> i10)) ^ (j13 << i8));
            int i11 = i2 + 3;
            jArr[i11] = (((jArr2[3] ^ j6) ^ (j13 >>> i10)) ^ (j4 << i8)) ^ jArr[i11];
            int i12 = i2 + 4;
            jArr[i12] = jArr[i12] ^ (((j4 >>> i10) ^ (j8 ^ jArr2[4])) ^ (j6 << i8));
            int i13 = i2 + 5;
            jArr[i13] = jArr[i13] ^ (((jArr2[5] ^ j9) ^ (j6 >>> i10)) & this.mask);
        }
    }

    public static class REM384_TRINOMIAL_GF2X extends Rem_GF2n {
        private final int k3;
        private final int k364;
        private final int ki_k3;

        public REM384_TRINOMIAL_GF2X(int i2, int i3, int i4, int i5, long j2) {
            this.k3 = i2;
            this.ki = i3;
            this.ki64 = i4;
            this.k364 = i5;
            this.mask = j2;
            this.ki_k3 = i3 - i2;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[5];
            int i3 = this.ki;
            long j3 = jArr2[6];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = jArr2[7];
            long j6 = (j3 >>> i3) ^ (j5 << i4);
            long j7 = jArr2[8];
            long j8 = (j5 >>> i3) ^ (j7 << i4);
            long j9 = jArr2[9];
            long j10 = (j7 >>> i3) ^ (j9 << i4);
            long j11 = jArr2[10];
            long j12 = (j9 >>> i3) ^ (j11 << i4);
            long j13 = (j11 >>> i3) ^ (jArr2[11] << i4);
            long j14 = j4 ^ (j13 >>> this.ki_k3);
            long j15 = jArr2[0] ^ j14;
            int i5 = this.k3;
            jArr[i2] = j15 ^ (j14 << i5);
            long j16 = jArr2[1] ^ j6;
            int i6 = this.k364;
            jArr[i2 + 1] = (j16 ^ (j4 >>> i6)) ^ (j6 << i5);
            jArr[i2 + 2] = ((jArr2[2] ^ j8) ^ (j6 >>> i6)) ^ (j8 << i5);
            jArr[i2 + 3] = ((jArr2[3] ^ j10) ^ (j8 >>> i6)) ^ (j10 << i5);
            jArr[i2 + 4] = ((jArr2[4] ^ j12) ^ (j10 >>> i6)) ^ (j12 << i5);
            jArr[i2 + 5] = this.mask & ((j13 << i5) ^ ((jArr2[5] ^ j13) ^ (j12 >>> i6)));
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[5];
            int i3 = this.ki;
            long j3 = jArr2[6];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = jArr2[7];
            long j6 = (j3 >>> i3) ^ (j5 << i4);
            long j7 = jArr2[8];
            long j8 = (j5 >>> i3) ^ (j7 << i4);
            long j9 = jArr2[9];
            long j10 = (j7 >>> i3) ^ (j9 << i4);
            long j11 = jArr2[10];
            long j12 = (j9 >>> i3) ^ (j11 << i4);
            long j13 = (j11 >>> i3) ^ (jArr2[11] << i4);
            long j14 = j4 ^ (j13 >>> this.ki_k3);
            long j15 = jArr[i2];
            long j16 = jArr2[0] ^ j14;
            int i5 = this.k3;
            jArr[i2] = j15 ^ (j16 ^ (j14 << i5));
            int i6 = i2 + 1;
            long j17 = jArr[i6];
            long j18 = jArr2[1] ^ j6;
            int i7 = this.k364;
            jArr[i6] = j17 ^ ((j18 ^ (j4 >>> i7)) ^ (j6 << i5));
            int i8 = i2 + 2;
            jArr[i8] = jArr[i8] ^ (((jArr2[2] ^ j8) ^ (j6 >>> i7)) ^ (j8 << i5));
            int i9 = i2 + 3;
            jArr[i9] = jArr[i9] ^ (((jArr2[3] ^ j10) ^ (j8 >>> i7)) ^ (j10 << i5));
            int i10 = i2 + 4;
            jArr[i10] = jArr[i10] ^ (((jArr2[4] ^ j12) ^ (j10 >>> i7)) ^ (j12 << i5));
            int i11 = i2 + 5;
            jArr[i11] = (this.mask & ((j13 << i5) ^ ((jArr2[5] ^ j13) ^ (j12 >>> i7)))) ^ jArr[i11];
        }
    }

    public static class REM402_SPECIALIZED_TRINOMIAL_GF2X extends Rem_GF2n {
        private final int k3;
        private final int k364;

        public REM402_SPECIALIZED_TRINOMIAL_GF2X(int i2, int i3, int i4, int i5, long j2) {
            this.k3 = i2;
            this.ki = i3;
            this.ki64 = i4;
            this.k364 = i5;
            this.mask = j2;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[9];
            int i3 = this.ki;
            long j3 = jArr2[10];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = jArr2[11];
            long j6 = (j3 >>> i3) ^ (j5 << i4);
            long j7 = jArr2[12];
            long j8 = (j5 >>> i3) ^ (j7 << i4);
            long j9 = j7 >>> i3;
            long j10 = ((j4 >>> 39) ^ (j6 << 25)) ^ (jArr2[6] >>> i3);
            long j11 = jArr2[7];
            long j12 = j10 ^ (j11 << i4);
            long j13 = jArr2[8];
            long j14 = (((j6 >>> 39) ^ (j8 << 25)) ^ (j11 >>> i3)) ^ (j13 << i4);
            long j15 = (((j8 >>> 39) ^ (j9 << 25)) ^ (j13 >>> i3)) ^ (j2 << i4);
            jArr[i2] = jArr2[0] ^ j12;
            jArr[i2 + 1] = jArr2[1] ^ j14;
            long j16 = jArr2[2] ^ j15;
            int i5 = this.k3;
            jArr[i2 + 2] = j16 ^ (j12 << i5);
            long j17 = jArr2[3] ^ j4;
            int i6 = this.k364;
            jArr[i2 + 3] = (j17 ^ (j12 >>> i6)) ^ (j14 << i5);
            jArr[i2 + 4] = ((j6 ^ jArr2[4]) ^ (j14 >>> i6)) ^ (j15 << i5);
            jArr[i2 + 5] = ((j15 >>> i6) ^ (jArr2[5] ^ j8)) ^ (j4 << i5);
            jArr[i2 + 6] = ((jArr2[6] ^ j9) ^ (j4 >>> i6)) & this.mask;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[9];
            int i3 = this.ki;
            long j3 = jArr2[10];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = jArr2[11];
            long j6 = (j3 >>> i3) ^ (j5 << i4);
            long j7 = jArr2[12];
            long j8 = (j5 >>> i3) ^ (j7 << i4);
            long j9 = j7 >>> i3;
            long j10 = ((j4 >>> 39) ^ (j6 << 25)) ^ (jArr2[6] >>> i3);
            long j11 = jArr2[7];
            long j12 = j10 ^ (j11 << i4);
            long j13 = jArr2[8];
            long j14 = (((j6 >>> 39) ^ (j8 << 25)) ^ (j11 >>> i3)) ^ (j13 << i4);
            long j15 = (((j8 >>> 39) ^ (j9 << 25)) ^ (j13 >>> i3)) ^ (j2 << i4);
            jArr[i2] = jArr[i2] ^ (jArr2[0] ^ j12);
            int i5 = i2 + 1;
            jArr[i5] = jArr[i5] ^ (jArr2[1] ^ j14);
            int i6 = i2 + 2;
            long j16 = jArr[i6];
            long j17 = jArr2[2] ^ j15;
            int i7 = this.k3;
            jArr[i6] = j16 ^ (j17 ^ (j12 << i7));
            int i8 = i2 + 3;
            long j18 = jArr[i8];
            long j19 = jArr2[3] ^ j4;
            int i9 = this.k364;
            jArr[i8] = j18 ^ ((j19 ^ (j12 >>> i9)) ^ (j14 << i7));
            int i10 = i2 + 4;
            jArr[i10] = (((jArr2[4] ^ j6) ^ (j14 >>> i9)) ^ (j15 << i7)) ^ jArr[i10];
            int i11 = i2 + 5;
            jArr[i11] = (((j15 >>> i9) ^ (j8 ^ jArr2[5])) ^ (j4 << i7)) ^ jArr[i11];
            int i12 = i2 + 6;
            jArr[i12] = jArr[i12] ^ (((j4 >>> i9) ^ (jArr2[6] ^ j9)) & this.mask);
        }
    }

    public static class REM544_PENTANOMIAL_GF2X extends Rem_GF2n {
        private final int k1;
        private final int k164;
        private final int k2;
        private final int k264;
        private final int k3;
        private final int k364;
        private final int ki_k1;
        private final int ki_k2;
        private final int ki_k3;

        public REM544_PENTANOMIAL_GF2X(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, long j2) {
            this.k1 = i2;
            this.k2 = i3;
            this.k3 = i4;
            this.ki = i5;
            this.ki64 = i6;
            this.k164 = i7;
            this.k264 = i8;
            this.k364 = i9;
            this.mask = j2;
            this.ki_k3 = i5 - i4;
            this.ki_k2 = i5 - i3;
            this.ki_k1 = i5 - i2;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[16];
            int i3 = this.ki;
            long j3 = j2 >>> i3;
            long j4 = jArr2[8] >>> i3;
            long j5 = jArr2[9];
            int i4 = this.ki64;
            long j6 = j4 ^ (j5 << i4);
            long j7 = (j5 >>> i3) ^ (jArr2[10] << i4);
            long j8 = jArr2[1] ^ j7;
            int i5 = this.k164;
            int i6 = this.k1;
            int i7 = this.k264;
            int i8 = this.k2;
            long j9 = (((j8 ^ (j6 >>> i5)) ^ (j7 << i6)) ^ (j6 >>> i7)) ^ (j7 << i8);
            int i9 = this.k364;
            long j10 = j9 ^ (j6 >>> i9);
            int i10 = this.k3;
            jArr[i2 + 1] = j10 ^ (j7 << i10);
            long j11 = j6 ^ (((j3 >>> this.ki_k3) ^ (j3 >>> this.ki_k2)) ^ (j3 >>> this.ki_k1));
            jArr[i2] = (j11 << i10) ^ (((jArr2[0] ^ j11) ^ (j11 << i6)) ^ (j11 << i8));
            long j12 = (jArr2[10] >>> i3) ^ (jArr2[11] << i4);
            jArr[i2 + 2] = ((((((jArr2[2] ^ j12) ^ (j7 >>> i5)) ^ (j12 << i6)) ^ (j7 >>> i7)) ^ (j12 << i8)) ^ (j7 >>> i9)) ^ (j12 << i10);
            long j13 = (jArr2[11] >>> i3) ^ (jArr2[12] << i4);
            jArr[i2 + 3] = ((((((jArr2[3] ^ j13) ^ (j12 >>> i5)) ^ (j13 << i6)) ^ (j12 >>> i7)) ^ (j13 << i8)) ^ (j12 >>> i9)) ^ (j13 << i10);
            long j14 = (jArr2[12] >>> i3) ^ (jArr2[13] << i4);
            jArr[i2 + 4] = ((((((jArr2[4] ^ j14) ^ (j13 >>> i5)) ^ (j14 << i6)) ^ (j13 >>> i7)) ^ (j14 << i8)) ^ (j13 >>> i9)) ^ (j14 << i10);
            long j15 = (jArr2[13] >>> i3) ^ (jArr2[14] << i4);
            jArr[i2 + 5] = ((((((jArr2[5] ^ j15) ^ (j14 >>> i5)) ^ (j15 << i6)) ^ (j14 >>> i7)) ^ (j15 << i8)) ^ (j14 >>> i9)) ^ (j15 << i10);
            long j16 = (jArr2[14] >>> i3) ^ (jArr2[15] << i4);
            jArr[i2 + 6] = ((((((jArr2[6] ^ j16) ^ (j15 >>> i5)) ^ (j16 << i6)) ^ (j15 >>> i7)) ^ (j16 << i8)) ^ (j15 >>> i9)) ^ (j16 << i10);
            long j17 = (jArr2[15] >>> i3) ^ (jArr2[16] << i4);
            jArr[i2 + 7] = ((j16 >>> i9) ^ (((((jArr2[7] ^ j17) ^ (j16 >>> i5)) ^ (j17 << i6)) ^ (j16 >>> i7)) ^ (j17 << i8))) ^ (j17 << i10);
            jArr[i2 + 8] = ((j3 << i10) ^ ((((((jArr2[8] ^ j3) ^ (j17 >>> i5)) ^ (j3 << i6)) ^ (j17 >>> i7)) ^ (j3 << i8)) ^ (j17 >>> i9))) & this.mask;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[16];
            int i3 = this.ki;
            long j3 = j2 >>> i3;
            long j4 = jArr2[8] >>> i3;
            long j5 = jArr2[9];
            int i4 = this.ki64;
            long j6 = j4 ^ (j5 << i4);
            long j7 = (j5 >>> i3) ^ (jArr2[10] << i4);
            int i5 = i2 + 1;
            long j8 = jArr[i5];
            long j9 = jArr2[1] ^ j7;
            int i6 = this.k164;
            int i7 = this.k1;
            int i8 = this.k264;
            long j10 = ((j9 ^ (j6 >>> i6)) ^ (j7 << i7)) ^ (j6 >>> i8);
            int i9 = this.k2;
            long j11 = j10 ^ (j7 << i9);
            int i10 = this.k364;
            long j12 = j11 ^ (j6 >>> i10);
            int i11 = this.k3;
            jArr[i5] = j8 ^ (j12 ^ (j7 << i11));
            long j13 = j6 ^ (((j3 >>> this.ki_k3) ^ (j3 >>> this.ki_k2)) ^ (j3 >>> this.ki_k1));
            jArr[i2] = ((j13 << i11) ^ (((jArr2[0] ^ j13) ^ (j13 << i7)) ^ (j13 << i9))) ^ jArr[i2];
            long j14 = (jArr2[10] >>> i3) ^ (jArr2[11] << i4);
            int i12 = i2 + 2;
            jArr[i12] = (((((((jArr2[2] ^ j14) ^ (j7 >>> i6)) ^ (j14 << i7)) ^ (j7 >>> i8)) ^ (j14 << i9)) ^ (j7 >>> i10)) ^ (j14 << i11)) ^ jArr[i12];
            long j15 = (jArr2[11] >>> i3) ^ (jArr2[12] << i4);
            int i13 = i2 + 3;
            jArr[i13] = (((((((jArr2[3] ^ j15) ^ (j14 >>> i6)) ^ (j15 << i7)) ^ (j14 >>> i8)) ^ (j15 << i9)) ^ (j14 >>> i10)) ^ (j15 << i11)) ^ jArr[i13];
            long j16 = (jArr2[12] >>> i3) ^ (jArr2[13] << i4);
            int i14 = i2 + 4;
            jArr[i14] = (((((((jArr2[4] ^ j16) ^ (j15 >>> i6)) ^ (j16 << i7)) ^ (j15 >>> i8)) ^ (j16 << i9)) ^ (j15 >>> i10)) ^ (j16 << i11)) ^ jArr[i14];
            long j17 = (jArr2[13] >>> i3) ^ (jArr2[14] << i4);
            int i15 = i2 + 5;
            jArr[i15] = (((((((jArr2[5] ^ j17) ^ (j16 >>> i6)) ^ (j17 << i7)) ^ (j16 >>> i8)) ^ (j17 << i9)) ^ (j16 >>> i10)) ^ (j17 << i11)) ^ jArr[i15];
            long j18 = (jArr2[14] >>> i3) ^ (jArr2[15] << i4);
            int i16 = i2 + 6;
            jArr[i16] = (((((((jArr2[6] ^ j18) ^ (j17 >>> i6)) ^ (j18 << i7)) ^ (j17 >>> i8)) ^ (j18 << i9)) ^ (j17 >>> i10)) ^ (j18 << i11)) ^ jArr[i16];
            long j19 = (jArr2[15] >>> i3) ^ (jArr2[16] << i4);
            int i17 = i2 + 7;
            jArr[i17] = (((j18 >>> i10) ^ (((((jArr2[7] ^ j19) ^ (j18 >>> i6)) ^ (j19 << i7)) ^ (j18 >>> i8)) ^ (j19 << i9))) ^ (j19 << i11)) ^ jArr[i17];
            int i18 = i2 + 8;
            jArr[i18] = (((j3 << i11) ^ ((j19 >>> i10) ^ (((j19 >>> i8) ^ (((jArr2[8] ^ j3) ^ (j19 >>> i6)) ^ (j3 << i7))) ^ (j3 << i9)))) & this.mask) ^ jArr[i18];
        }
    }

    public static class REM544_PENTANOMIAL_K3_IS_128_GF2X extends Rem_GF2n {
        private final int k1;
        private final int k164;
        private final int k2;
        private final int k264;

        public REM544_PENTANOMIAL_K3_IS_128_GF2X(int i2, int i3, int i4, int i5, int i6, int i7, long j2) {
            this.k1 = i2;
            this.k2 = i3;
            this.ki = i4;
            this.ki64 = i5;
            this.k164 = i6;
            this.k264 = i7;
            this.mask = j2;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[10];
            int i3 = this.ki;
            long j3 = jArr2[11];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = jArr2[12];
            long j6 = (j3 >>> i3) ^ (j5 << i4);
            long j7 = (j5 >>> i3) ^ (jArr2[13] << i4);
            long j8 = (jArr2[4] ^ j7) ^ j4;
            int i5 = this.k164;
            int i6 = this.k1;
            int i7 = this.k264;
            int i8 = this.k2;
            jArr[i2 + 4] = (((j8 ^ (j6 >>> i5)) ^ (j7 << i6)) ^ (j6 >>> i7)) ^ (j7 << i8);
            long j9 = (jArr2[13] >>> i3) ^ (jArr2[14] << i4);
            jArr[i2 + 5] = (((((jArr2[5] ^ j9) ^ j6) ^ (j7 >>> i5)) ^ (j9 << i6)) ^ (j7 >>> i7)) ^ (j9 << i8);
            long j10 = (jArr2[14] >>> i3) ^ (jArr2[15] << i4);
            jArr[i2 + 6] = (((((jArr2[6] ^ j10) ^ j7) ^ (j9 >>> i5)) ^ (j10 << i6)) ^ (j9 >>> i7)) ^ (j10 << i8);
            long j11 = (jArr2[15] >>> i3) ^ (jArr2[16] << i4);
            jArr[i2 + 7] = (((((jArr2[7] ^ j11) ^ j9) ^ (j10 >>> i5)) ^ (j11 << i6)) ^ (j10 >>> i7)) ^ (j11 << i8);
            long j12 = jArr2[16] >>> i3;
            jArr[i2 + 8] = ((((((jArr2[8] ^ j12) ^ j10) ^ (j11 >>> i5)) ^ (j12 << i6)) ^ (j11 >>> i7)) ^ (j12 << i8)) & this.mask;
            long j13 = (jArr2[8] ^ j10) >>> i3;
            long j14 = jArr2[9];
            long j15 = (j13 ^ ((j14 ^ j11) << i4)) ^ (jArr2[16] >>> i7);
            long j16 = ((j14 ^ j11) >>> i3) ^ ((jArr2[10] ^ j12) << i4);
            jArr[i2] = ((jArr2[0] ^ j15) ^ (j15 << i6)) ^ (j15 << i8);
            jArr[i2 + 1] = ((((jArr2[1] ^ j16) ^ (j15 >>> i5)) ^ (j16 << i6)) ^ (j15 >>> i7)) ^ (j16 << i8);
            jArr[i2 + 2] = (((((jArr2[2] ^ j4) ^ j15) ^ (j16 >>> i5)) ^ (j4 << i6)) ^ (j16 >>> i7)) ^ (j4 << i8);
            jArr[i2 + 3] = ((j4 >>> i7) ^ (((j16 ^ (jArr2[3] ^ j6)) ^ (j4 >>> i5)) ^ (j6 << i6))) ^ (j6 << i8);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int i2, long[] jArr2) {
            long j2 = jArr2[10];
            int i3 = this.ki;
            long j3 = jArr2[11];
            int i4 = this.ki64;
            long j4 = (j2 >>> i3) ^ (j3 << i4);
            long j5 = jArr2[12];
            long j6 = (j3 >>> i3) ^ (j5 << i4);
            long j7 = (j5 >>> i3) ^ (jArr2[13] << i4);
            int i5 = i2 + 4;
            long j8 = jArr[i5];
            long j9 = (jArr2[4] ^ j7) ^ j4;
            int i6 = this.k164;
            int i7 = this.k1;
            long j10 = (j9 ^ (j6 >>> i6)) ^ (j7 << i7);
            int i8 = this.k264;
            long j11 = j10 ^ (j6 >>> i8);
            int i9 = this.k2;
            jArr[i5] = j8 ^ (j11 ^ (j7 << i9));
            long j12 = (jArr2[13] >>> i3) ^ (jArr2[14] << i4);
            int i10 = i2 + 5;
            jArr[i10] = jArr[i10] ^ ((((((jArr2[5] ^ j12) ^ j6) ^ (j7 >>> i6)) ^ (j12 << i7)) ^ (j7 >>> i8)) ^ (j12 << i9));
            long j13 = (jArr2[14] >>> i3) ^ (jArr2[15] << i4);
            int i11 = i2 + 6;
            jArr[i11] = jArr[i11] ^ ((((((jArr2[6] ^ j13) ^ j7) ^ (j12 >>> i6)) ^ (j13 << i7)) ^ (j12 >>> i8)) ^ (j13 << i9));
            long j14 = (jArr2[15] >>> i3) ^ (jArr2[16] << i4);
            int i12 = i2 + 7;
            jArr[i12] = jArr[i12] ^ ((((((jArr2[7] ^ j14) ^ j12) ^ (j13 >>> i6)) ^ (j14 << i7)) ^ (j13 >>> i8)) ^ (j14 << i9));
            long j15 = jArr2[16] >>> i3;
            int i13 = i2 + 8;
            jArr[i13] = jArr[i13] ^ (((((((jArr2[8] ^ j15) ^ j13) ^ (j14 >>> i6)) ^ (j15 << i7)) ^ (j14 >>> i8)) ^ (j15 << i9)) & this.mask);
            long j16 = (jArr2[8] ^ j13) >>> i3;
            long j17 = jArr2[9];
            long j18 = (j16 ^ ((j17 ^ j14) << i4)) ^ (jArr2[16] >>> i8);
            long j19 = ((j14 ^ j17) >>> i3) ^ ((j15 ^ jArr2[10]) << i4);
            jArr[i2] = jArr[i2] ^ (((jArr2[0] ^ j18) ^ (j18 << i7)) ^ (j18 << i9));
            int i14 = i2 + 1;
            jArr[i14] = jArr[i14] ^ (((((jArr2[1] ^ j19) ^ (j18 >>> i6)) ^ (j19 << i7)) ^ (j18 >>> i8)) ^ (j19 << i9));
            int i15 = i2 + 2;
            jArr[i15] = (((((j18 ^ (jArr2[2] ^ j4)) ^ (j19 >>> i6)) ^ (j4 << i7)) ^ (j19 >>> i8)) ^ (j4 << i9)) ^ jArr[i15];
            int i16 = i2 + 3;
            jArr[i16] = (((j4 >>> i8) ^ (((j19 ^ (jArr2[3] ^ j6)) ^ (j4 >>> i6)) ^ (j6 << i7))) ^ (j6 << i9)) ^ jArr[i16];
        }
    }

    public abstract void rem_gf2n(long[] jArr, int i2, long[] jArr2);

    public abstract void rem_gf2n_xor(long[] jArr, int i2, long[] jArr2);
}
