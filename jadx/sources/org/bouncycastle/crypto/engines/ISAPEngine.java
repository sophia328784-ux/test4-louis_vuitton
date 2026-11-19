package org.bouncycastle.crypto.engines;

import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class ISAPEngine implements AEADCipher {
    private ISAP_AEAD ISAPAEAD;
    private int ISAP_rH;
    private int ISAP_rH_SZ;
    private byte[] ad;
    private String algorithmName;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f77615c;
    private boolean forEncryption;
    private boolean initialised;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f77616k;
    private byte[] mac;
    private byte[] npub;
    final int CRYPTO_KEYBYTES = 16;
    final int CRYPTO_NPUBBYTES = 16;
    final int ISAP_STATE_SZ = 40;
    private ByteArrayOutputStream aadData = new ByteArrayOutputStream();
    private final ByteArrayOutputStream message = new ByteArrayOutputStream();
    private final ByteArrayOutputStream outputStream = new ByteArrayOutputStream();

    /* JADX INFO: renamed from: org.bouncycastle.crypto.engines.ISAPEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType;

        static {
            int[] iArr = new int[IsapType.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType = iArr;
            try {
                iArr[IsapType.ISAP_A_128A.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType[IsapType.ISAP_K_128A.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType[IsapType.ISAP_A_128.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType[IsapType.ISAP_K_128.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public abstract class ISAPAEAD_A implements ISAP_AEAD {
        protected long ISAP_IV1_64;
        protected long ISAP_IV2_64;
        protected long ISAP_IV3_64;
        protected long[] k64;
        protected long[] npub64;
        protected long t0;
        protected long t1;
        protected long t2;
        protected long t3;
        protected long t4;
        protected long x0;
        protected long x1;
        protected long x2;
        protected long x3;
        protected long x4;

        public ISAPAEAD_A() {
            ISAPEngine.this.ISAP_rH = 64;
            ISAPEngine.this.ISAP_rH_SZ = (ISAPEngine.this.ISAP_rH + 7) >> 3;
        }

        private long ROTR(long j2, long j3) {
            return (j2 << ((int) (64 - j3))) | (j2 >>> ((int) j3));
        }

        private int getLongSize(int i2) {
            return (i2 >>> 3) + ((i2 & 7) != 0 ? 1 : 0);
        }

        public void ABSORB_MAC(byte[] bArr, int i2) {
            int length = bArr.length >> 3;
            long[] jArr = new long[length];
            int i3 = 0;
            Pack.littleEndianToLong(bArr, 0, jArr, 0, length);
            int i4 = 0;
            while (i2 >= ISAPEngine.this.ISAP_rH_SZ) {
                this.x0 ^= U64BIG(jArr[i4]);
                P12();
                i2 -= ISAPEngine.this.ISAP_rH_SZ;
                i4++;
            }
            while (true) {
                long j2 = this.x0;
                if (i3 >= i2) {
                    this.x0 = (128 << ((7 - i2) << 3)) ^ j2;
                    P12();
                    return;
                } else {
                    this.x0 = j2 ^ ((((long) bArr[(i4 << 3) + i3]) & 255) << ((7 - i3) << 3));
                    i3++;
                }
            }
        }

        public void P12() {
            ROUND(240L);
            ROUND(225L);
            ROUND(210L);
            ROUND(195L);
            ROUND(180L);
            ROUND(165L);
            P6();
        }

        public void P6() {
            ROUND(150L);
            ROUND(135L);
            ROUND(120L);
            ROUND(105L);
            ROUND(90L);
            ROUND(75L);
        }

        public abstract void PX1();

        public abstract void PX2();

        public void ROUND(long j2) {
            long j3 = this.x0;
            long j4 = this.x1;
            long j5 = this.x2;
            long j6 = this.x3;
            long j7 = this.x4;
            long j8 = ((((j3 ^ j4) ^ j5) ^ j6) ^ j2) ^ ((((j3 ^ j5) ^ j7) ^ j2) & j4);
            this.t0 = j8;
            this.t1 = ((((j3 ^ j5) ^ j6) ^ j7) ^ j2) ^ (((j4 ^ j5) ^ j2) & (j4 ^ j6));
            this.t2 = (((j4 ^ j5) ^ j7) ^ j2) ^ (j6 & j7);
            this.t3 = ((j5 ^ (j3 ^ j4)) ^ j2) ^ ((~j3) & (j6 ^ j7));
            this.t4 = ((j3 ^ j7) & j4) ^ ((j4 ^ j6) ^ j7);
            this.x0 = (ROTR(j8, 19L) ^ j8) ^ ROTR(this.t0, 28L);
            long j9 = this.t1;
            this.x1 = (j9 ^ ROTR(j9, 39L)) ^ ROTR(this.t1, 61L);
            long j10 = this.t2;
            this.x2 = ~((j10 ^ ROTR(j10, 1L)) ^ ROTR(this.t2, 6L));
            long j11 = this.t3;
            this.x3 = (j11 ^ ROTR(j11, 10L)) ^ ROTR(this.t3, 17L);
            long j12 = this.t4;
            this.x4 = (j12 ^ ROTR(j12, 7L)) ^ ROTR(this.t4, 41L);
        }

        public long U64BIG(long j2) {
            return (ROTR(j2, 56L) & 1095216660735L) | (ROTR(j2, 8L) & (-72057589759737856L)) | (ROTR(j2, 24L) & 71776119077928960L) | (ROTR(j2, 40L) & 280375465148160L);
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void init() {
            this.npub64 = new long[getLongSize(ISAPEngine.this.npub.length)];
            byte[] bArr = ISAPEngine.this.npub;
            long[] jArr = this.npub64;
            Pack.littleEndianToLong(bArr, 0, jArr, 0, jArr.length);
            long[] jArr2 = this.npub64;
            jArr2[0] = U64BIG(jArr2[0]);
            long[] jArr3 = this.npub64;
            jArr3[1] = U64BIG(jArr3[1]);
            this.k64 = new long[getLongSize(ISAPEngine.this.f77616k.length)];
            byte[] bArr2 = ISAPEngine.this.f77616k;
            long[] jArr4 = this.k64;
            Pack.littleEndianToLong(bArr2, 0, jArr4, 0, jArr4.length);
            long[] jArr5 = this.k64;
            jArr5[0] = U64BIG(jArr5[0]);
            long[] jArr6 = this.k64;
            jArr6[1] = U64BIG(jArr6[1]);
            reset();
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void isap_enc(byte[] bArr, int i2, int i3, byte[] bArr2, int i4, int i5) {
            int i6 = i3 >> 3;
            long[] jArr = new long[i6];
            Pack.littleEndianToLong(bArr, i2, jArr, 0, i6);
            long[] jArr2 = new long[i6];
            int i7 = 0;
            while (i3 >= ISAPEngine.this.ISAP_rH_SZ) {
                jArr2[i7] = U64BIG(this.x0) ^ jArr[i7];
                PX1();
                i7++;
                i3 -= ISAPEngine.this.ISAP_rH_SZ;
            }
            Pack.longToLittleEndian(jArr2, 0, i6, bArr2, i4);
            byte[] bArrLongToLittleEndian = Pack.longToLittleEndian(this.x0);
            while (i3 > 0) {
                int i8 = i7 << 3;
                int i9 = ((i8 + i4) + i3) - 1;
                byte b2 = bArrLongToLittleEndian[ISAPEngine.this.ISAP_rH_SZ - i3];
                i3--;
                bArr2[i9] = (byte) (bArr[(i8 + i2) + i3] ^ b2);
            }
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void isap_mac(byte[] bArr, int i2, byte[] bArr2, int i3, byte[] bArr3, int i4) {
            long[] jArr = this.npub64;
            this.x0 = jArr[0];
            this.x1 = jArr[1];
            this.x2 = this.ISAP_IV1_64;
            this.x4 = 0L;
            this.x3 = 0L;
            P12();
            ABSORB_MAC(bArr, i2);
            this.x4 ^= 1;
            ABSORB_MAC(bArr2, i3);
            Pack.longToLittleEndian(U64BIG(this.x0), bArr3, 0);
            Pack.longToLittleEndian(U64BIG(this.x1), bArr3, 8);
            long j2 = this.x2;
            long j3 = this.x3;
            long j4 = this.x4;
            isap_rk(this.ISAP_IV2_64, bArr3, 16);
            this.x2 = j2;
            this.x3 = j3;
            this.x4 = j4;
            P12();
            Pack.longToLittleEndian(U64BIG(this.x0), bArr3, i4);
            Pack.longToLittleEndian(U64BIG(this.x1), bArr3, i4 + 8);
        }

        public void isap_rk(long j2, byte[] bArr, int i2) {
            long[] jArr = this.k64;
            int i3 = 0;
            this.x0 = jArr[0];
            this.x1 = jArr[1];
            this.x2 = j2;
            this.x4 = 0L;
            this.x3 = 0L;
            P12();
            while (true) {
                int i4 = (i2 << 3) - 1;
                long j3 = this.x0;
                if (i3 >= i4) {
                    this.x0 = ((((long) bArr[i2 - 1]) & 1) << 63) ^ j3;
                    P12();
                    return;
                } else {
                    this.x0 = ((((long) (((bArr[i3 >>> 3] >>> (7 - (i3 & 7))) & 1) << 7)) & 255) << 56) ^ j3;
                    PX2();
                    i3++;
                }
            }
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void reset() {
            isap_rk(this.ISAP_IV3_64, ISAPEngine.this.npub, 16);
            long[] jArr = this.npub64;
            this.x3 = jArr[0];
            this.x4 = jArr[1];
            PX1();
        }
    }

    public class ISAPAEAD_A_128 extends ISAPAEAD_A {
        public ISAPAEAD_A_128() {
            super();
            this.ISAP_IV1_64 = 108156764298152972L;
            this.ISAP_IV2_64 = 180214358336080908L;
            this.ISAP_IV3_64 = 252271952374008844L;
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_A
        public void PX1() {
            P12();
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_A
        public void PX2() {
            P12();
        }
    }

    public class ISAPAEAD_A_128A extends ISAPAEAD_A {
        public ISAPAEAD_A_128A() {
            super();
            this.ISAP_IV1_64 = 108156764297430540L;
            this.ISAP_IV2_64 = 180214358335358476L;
            this.ISAP_IV3_64 = 252271952373286412L;
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_A
        public void PX1() {
            P6();
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_A
        public void PX2() {
            ROUND(75L);
        }
    }

    public abstract class ISAPAEAD_K implements ISAP_AEAD {
        protected short[] ISAP_IV1_16;
        protected short[] ISAP_IV2_16;
        protected short[] ISAP_IV3_16;
        protected short[] iv16;
        protected short[] k16;
        final int ISAP_STATE_SZ_CRYPTO_NPUBBYTES = 24;
        private final int[] KeccakF400RoundConstants = {1, 32898, 32906, 32768, 32907, 1, 32897, 32777, 138, 136, 32777, 10, 32907, 139, 32905, 32771, 32770, 128, 32778, 10};
        protected short[] SX = new short[25];
        protected short[] E = new short[25];
        protected short[] C = new short[5];

        public ISAPAEAD_K() {
            ISAPEngine.this.ISAP_rH = 144;
            ISAPEngine.this.ISAP_rH_SZ = (ISAPEngine.this.ISAP_rH + 7) >> 3;
        }

        private short ROL16(short s, int i2) {
            int i3 = 65535 & s;
            return (short) ((i3 >>> (16 - i2)) ^ (i3 << i2));
        }

        private void byteToShort(byte[] bArr, short[] sArr, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                sArr[i3] = Pack.littleEndianToShort(bArr, i3 << 1);
            }
        }

        private void byteToShortXor(byte[] bArr, short[] sArr, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                sArr[i3] = (short) (sArr[i3] ^ Pack.littleEndianToShort(bArr, i3 << 1));
            }
        }

        private void shortToByte(short[] sArr, byte[] bArr, int i2) {
            for (int i3 = 0; i3 < 8; i3++) {
                Pack.shortToLittleEndian(sArr[i3], bArr, (i3 << 1) + i2);
            }
        }

        public void ABSORB_MAC(short[] sArr, byte[] bArr, int i2, short[] sArr2, short[] sArr3) {
            ISAPEngine iSAPEngine;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                int i5 = ISAPEngine.this.ISAP_rH_SZ;
                iSAPEngine = ISAPEngine.this;
                if (i2 <= i5) {
                    break;
                }
                byteToShortXor(bArr, sArr, iSAPEngine.ISAP_rH_SZ >> 1);
                i4 += ISAPEngine.this.ISAP_rH_SZ;
                i2 -= ISAPEngine.this.ISAP_rH_SZ;
                PermuteRoundsHX(sArr, sArr2, sArr3);
            }
            if (i2 == iSAPEngine.ISAP_rH_SZ) {
                byteToShortXor(bArr, sArr, ISAPEngine.this.ISAP_rH_SZ >> 1);
                PermuteRoundsHX(sArr, sArr2, sArr3);
                sArr[0] = (short) (sArr[0] ^ 128);
            } else {
                while (i3 < i2) {
                    int i6 = i3 >> 1;
                    sArr[i6] = (short) (((bArr[i4] & 255) << ((i3 & 1) << 3)) ^ sArr[i6]);
                    i3++;
                    i4++;
                }
                int i7 = i2 >> 1;
                sArr[i7] = (short) ((128 << ((i2 & 1) << 3)) ^ sArr[i7]);
            }
            PermuteRoundsHX(sArr, sArr2, sArr3);
        }

        public abstract void PermuteRoundsBX(short[] sArr, short[] sArr2, short[] sArr3);

        public abstract void PermuteRoundsHX(short[] sArr, short[] sArr2, short[] sArr3);

        public abstract void PermuteRoundsKX(short[] sArr, short[] sArr2, short[] sArr3);

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void init() {
            this.k16 = new short[ISAPEngine.this.f77616k.length >> 1];
            byte[] bArr = ISAPEngine.this.f77616k;
            short[] sArr = this.k16;
            byteToShort(bArr, sArr, sArr.length);
            this.iv16 = new short[ISAPEngine.this.npub.length >> 1];
            byte[] bArr2 = ISAPEngine.this.npub;
            short[] sArr2 = this.iv16;
            byteToShort(bArr2, sArr2, sArr2.length);
            reset();
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void isap_enc(byte[] bArr, int i2, int i3, byte[] bArr2, int i4, int i5) {
            int i6;
            while (true) {
                i6 = 0;
                if (i3 < ISAPEngine.this.ISAP_rH_SZ) {
                    break;
                }
                while (i6 < ISAPEngine.this.ISAP_rH_SZ) {
                    bArr2[i4] = (byte) (bArr[i2] ^ (this.SX[i6 >> 1] >>> ((i6 & 1) << 3)));
                    i6++;
                    i4++;
                    i2++;
                }
                i3 -= ISAPEngine.this.ISAP_rH_SZ;
                PermuteRoundsKX(this.SX, this.E, this.C);
            }
            while (i6 < i3) {
                bArr2[i4] = (byte) (bArr[i2] ^ (this.SX[i6 >> 1] >>> ((i6 & 1) << 3)));
                i6++;
                i4++;
                i2++;
            }
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void isap_mac(byte[] bArr, int i2, byte[] bArr2, int i3, byte[] bArr3, int i4) {
            short[] sArr = new short[25];
            this.SX = sArr;
            System.arraycopy(this.iv16, 0, sArr, 0, 8);
            System.arraycopy(this.ISAP_IV1_16, 0, this.SX, 8, 4);
            PermuteRoundsHX(this.SX, this.E, this.C);
            ABSORB_MAC(this.SX, bArr, i2, this.E, this.C);
            short[] sArr2 = this.SX;
            sArr2[24] = (short) (sArr2[24] ^ 256);
            ABSORB_MAC(sArr2, bArr2, i3, this.E, this.C);
            shortToByte(this.SX, bArr3, i4);
            isap_rk(this.ISAP_IV2_16, bArr3, 16, this.SX, 16, this.C);
            PermuteRoundsHX(this.SX, this.E, this.C);
            shortToByte(this.SX, bArr3, i4);
        }

        public void isap_rk(short[] sArr, byte[] bArr, int i2, short[] sArr2, int i3, short[] sArr3) {
            short[] sArr4 = new short[25];
            short[] sArr5 = new short[25];
            System.arraycopy(this.k16, 0, sArr4, 0, 8);
            System.arraycopy(sArr, 0, sArr4, 8, 4);
            PermuteRoundsKX(sArr4, sArr5, sArr3);
            for (int i4 = 0; i4 < (i2 << 3) - 1; i4++) {
                sArr4[0] = (short) (sArr4[0] ^ (((bArr[i4 >> 3] >>> (7 - (i4 & 7))) & 1) << 7));
                PermuteRoundsBX(sArr4, sArr5, sArr3);
            }
            sArr4[0] = (short) (sArr4[0] ^ ((bArr[i2 - 1] & 1) << 7));
            PermuteRoundsKX(sArr4, sArr5, sArr3);
            System.arraycopy(sArr4, 0, sArr2, 0, i3 == 24 ? 17 : 8);
        }

        public void prepareThetaX(short[] sArr, short[] sArr2) {
            sArr2[0] = (short) ((((sArr[0] ^ sArr[5]) ^ sArr[10]) ^ sArr[15]) ^ sArr[20]);
            sArr2[1] = (short) ((((sArr[1] ^ sArr[6]) ^ sArr[11]) ^ sArr[16]) ^ sArr[21]);
            sArr2[2] = (short) ((((sArr[2] ^ sArr[7]) ^ sArr[12]) ^ sArr[17]) ^ sArr[22]);
            sArr2[3] = (short) ((((sArr[3] ^ sArr[8]) ^ sArr[13]) ^ sArr[18]) ^ sArr[23]);
            sArr2[4] = (short) (sArr[24] ^ (((sArr[4] ^ sArr[9]) ^ sArr[14]) ^ sArr[19]));
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void reset() {
            this.SX = new short[25];
            this.E = new short[25];
            this.C = new short[5];
            isap_rk(this.ISAP_IV3_16, ISAPEngine.this.npub, 16, this.SX, 24, this.C);
            System.arraycopy(this.iv16, 0, this.SX, 17, 8);
            PermuteRoundsKX(this.SX, this.E, this.C);
        }

        public void rounds12X(short[] sArr, short[] sArr2, short[] sArr3) {
            prepareThetaX(sArr, sArr3);
            rounds_8_18(sArr, sArr2, sArr3);
        }

        public void rounds_12_18(short[] sArr, short[] sArr2, short[] sArr3) {
            thetaRhoPiChiIotaPrepareTheta(12, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(13, sArr2, sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(14, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(15, sArr2, sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(16, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(17, sArr2, sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(18, sArr, sArr2, sArr3);
            thetaRhoPiChiIota(sArr2, sArr, sArr3);
        }

        public void rounds_4_18(short[] sArr, short[] sArr2, short[] sArr3) {
            thetaRhoPiChiIotaPrepareTheta(4, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(5, sArr2, sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(6, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(7, sArr2, sArr, sArr3);
            rounds_8_18(sArr, sArr2, sArr3);
        }

        public void rounds_8_18(short[] sArr, short[] sArr2, short[] sArr3) {
            thetaRhoPiChiIotaPrepareTheta(8, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(9, sArr2, sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(10, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(11, sArr2, sArr, sArr3);
            rounds_12_18(sArr, sArr2, sArr3);
        }

        public void thetaRhoPiChiIota(short[] sArr, short[] sArr2, short[] sArr3) {
            short sROL16 = (short) (sArr3[4] ^ ROL16(sArr3[1], 1));
            short sROL17 = (short) (sArr3[0] ^ ROL16(sArr3[2], 1));
            short sROL18 = (short) (sArr3[1] ^ ROL16(sArr3[3], 1));
            short sROL19 = (short) (sArr3[2] ^ ROL16(sArr3[4], 1));
            short sROL110 = (short) (sArr3[3] ^ ROL16(sArr3[0], 1));
            short s = (short) (sArr[0] ^ sROL16);
            sArr[0] = s;
            short s2 = (short) (sArr[6] ^ sROL17);
            sArr[6] = s2;
            short sROL111 = ROL16(s2, 12);
            short s3 = (short) (sArr[12] ^ sROL18);
            sArr[12] = s3;
            short sROL112 = ROL16(s3, 11);
            short s4 = (short) (sArr[18] ^ sROL19);
            sArr[18] = s4;
            short sROL113 = ROL16(s4, 5);
            short s5 = (short) (sArr[24] ^ sROL110);
            sArr[24] = s5;
            short sROL114 = ROL16(s5, 14);
            sArr2[0] = (short) (this.KeccakF400RoundConstants[19] ^ (((~sROL111) & sROL112) ^ s));
            sArr2[1] = (short) (((~sROL112) & sROL113) ^ sROL111);
            sArr2[2] = (short) (((~sROL113) & sROL114) ^ sROL112);
            sArr2[3] = (short) (((~sROL114) & s) ^ sROL113);
            sArr2[4] = (short) (((~s) & sROL111) ^ sROL114);
            short s6 = (short) (sArr[3] ^ sROL19);
            sArr[3] = s6;
            short sROL115 = ROL16(s6, 12);
            short s7 = (short) (sArr[9] ^ sROL110);
            sArr[9] = s7;
            short sROL116 = ROL16(s7, 4);
            short s8 = (short) (sArr[10] ^ sROL16);
            sArr[10] = s8;
            short sROL117 = ROL16(s8, 3);
            short s9 = (short) (sArr[16] ^ sROL17);
            sArr[16] = s9;
            short sROL118 = ROL16(s9, 13);
            short s10 = (short) (sArr[22] ^ sROL18);
            sArr[22] = s10;
            short sROL119 = ROL16(s10, 13);
            sArr2[5] = (short) (((~sROL116) & sROL117) ^ sROL115);
            sArr2[6] = (short) (((~sROL117) & sROL118) ^ sROL116);
            sArr2[7] = (short) (sROL117 ^ ((~sROL118) & sROL119));
            sArr2[8] = (short) (((~sROL119) & sROL115) ^ sROL118);
            sArr2[9] = (short) (((~sROL115) & sROL116) ^ sROL119);
            short s11 = (short) (sArr[1] ^ sROL17);
            sArr[1] = s11;
            short sROL120 = ROL16(s11, 1);
            short s12 = (short) (sArr[7] ^ sROL18);
            sArr[7] = s12;
            short sROL121 = ROL16(s12, 6);
            short s13 = (short) (sArr[13] ^ sROL19);
            sArr[13] = s13;
            short sROL122 = ROL16(s13, 9);
            short s14 = (short) (sArr[19] ^ sROL110);
            sArr[19] = s14;
            short sROL123 = ROL16(s14, 8);
            short s15 = (short) (sArr[20] ^ sROL16);
            sArr[20] = s15;
            short sROL124 = ROL16(s15, 2);
            sArr2[10] = (short) (((~sROL121) & sROL122) ^ sROL120);
            sArr2[11] = (short) (((~sROL122) & sROL123) ^ sROL121);
            sArr2[12] = (short) (((~sROL123) & sROL124) ^ sROL122);
            sArr2[13] = (short) (((~sROL124) & sROL120) ^ sROL123);
            sArr2[14] = (short) (((~sROL120) & sROL121) ^ sROL124);
            short s16 = (short) (sArr[4] ^ sROL110);
            sArr[4] = s16;
            short sROL125 = ROL16(s16, 11);
            short s17 = (short) (sArr[5] ^ sROL16);
            sArr[5] = s17;
            short sROL126 = ROL16(s17, 4);
            short s18 = (short) (sArr[11] ^ sROL17);
            sArr[11] = s18;
            short sROL127 = ROL16(s18, 10);
            short s19 = (short) (sArr[17] ^ sROL18);
            sArr[17] = s19;
            short sROL128 = ROL16(s19, 15);
            short s20 = (short) (sArr[23] ^ sROL19);
            sArr[23] = s20;
            short sROL129 = ROL16(s20, 8);
            sArr2[15] = (short) (((~sROL126) & sROL127) ^ sROL125);
            sArr2[16] = (short) (((~sROL127) & sROL128) ^ sROL126);
            sArr2[17] = (short) (sROL127 ^ ((~sROL128) & sROL129));
            sArr2[18] = (short) (((~sROL129) & sROL125) ^ sROL128);
            sArr2[19] = (short) ((sROL126 & (~sROL125)) ^ sROL129);
            short s21 = (short) (sArr[2] ^ sROL18);
            sArr[2] = s21;
            short sROL130 = ROL16(s21, 14);
            short s22 = (short) (sArr[8] ^ sROL19);
            sArr[8] = s22;
            short sROL131 = ROL16(s22, 7);
            short s23 = (short) (sArr[14] ^ sROL110);
            sArr[14] = s23;
            short sROL132 = ROL16(s23, 7);
            short s24 = (short) (sROL16 ^ sArr[15]);
            sArr[15] = s24;
            short sROL133 = ROL16(s24, 9);
            short s25 = (short) (sROL17 ^ sArr[21]);
            sArr[21] = s25;
            short sROL134 = ROL16(s25, 2);
            sArr2[20] = (short) (((~sROL131) & sROL132) ^ sROL130);
            sArr2[21] = (short) (((~sROL132) & sROL133) ^ sROL131);
            sArr2[22] = (short) (sROL132 ^ ((~sROL133) & sROL134));
            sArr2[23] = (short) (sROL133 ^ ((~sROL134) & sROL130));
            sArr2[24] = (short) (sROL134 ^ ((~sROL130) & sROL131));
        }

        public void thetaRhoPiChiIotaPrepareTheta(int i2, short[] sArr, short[] sArr2, short[] sArr3) {
            short sROL16 = (short) (sArr3[4] ^ ROL16(sArr3[1], 1));
            short sROL17 = (short) (sArr3[0] ^ ROL16(sArr3[2], 1));
            short sROL18 = (short) (sArr3[1] ^ ROL16(sArr3[3], 1));
            short sROL19 = (short) (sArr3[2] ^ ROL16(sArr3[4], 1));
            short sROL110 = (short) (sArr3[3] ^ ROL16(sArr3[0], 1));
            short s = (short) (sArr[0] ^ sROL16);
            sArr[0] = s;
            short s2 = (short) (sArr[6] ^ sROL17);
            sArr[6] = s2;
            short sROL111 = ROL16(s2, 12);
            short s3 = (short) (sArr[12] ^ sROL18);
            sArr[12] = s3;
            short sROL112 = ROL16(s3, 11);
            short s4 = (short) (sArr[18] ^ sROL19);
            sArr[18] = s4;
            short sROL113 = ROL16(s4, 5);
            short s5 = (short) (sArr[24] ^ sROL110);
            sArr[24] = s5;
            short sROL114 = ROL16(s5, 14);
            short s6 = (short) (this.KeccakF400RoundConstants[i2] ^ (((~sROL111) & sROL112) ^ s));
            sArr2[0] = s6;
            sArr3[0] = s6;
            short s7 = (short) (((~sROL112) & sROL113) ^ sROL111);
            sArr2[1] = s7;
            sArr3[1] = s7;
            short s8 = (short) (((~sROL113) & sROL114) ^ sROL112);
            sArr2[2] = s8;
            sArr3[2] = s8;
            short s9 = (short) (((~sROL114) & s) ^ sROL113);
            sArr2[3] = s9;
            sArr3[3] = s9;
            short s10 = (short) (((~s) & sROL111) ^ sROL114);
            sArr2[4] = s10;
            sArr3[4] = s10;
            short s11 = (short) (sArr[3] ^ sROL19);
            sArr[3] = s11;
            short sROL115 = ROL16(s11, 12);
            short s12 = (short) (sArr[9] ^ sROL110);
            sArr[9] = s12;
            short sROL116 = ROL16(s12, 4);
            short s13 = (short) (sArr[10] ^ sROL16);
            sArr[10] = s13;
            short sROL117 = ROL16(s13, 3);
            short s14 = (short) (sArr[16] ^ sROL17);
            sArr[16] = s14;
            short sROL118 = ROL16(s14, 13);
            short s15 = (short) (sArr[22] ^ sROL18);
            sArr[22] = s15;
            short sROL119 = ROL16(s15, 13);
            short s16 = (short) (((~sROL116) & sROL117) ^ sROL115);
            sArr2[5] = s16;
            sArr3[0] = (short) (sArr3[0] ^ s16);
            short s17 = (short) (((~sROL117) & sROL118) ^ sROL116);
            sArr2[6] = s17;
            sArr3[1] = (short) (sArr3[1] ^ s17);
            short s18 = (short) (((~sROL118) & sROL119) ^ sROL117);
            sArr2[7] = s18;
            sArr3[2] = (short) (sArr3[2] ^ s18);
            short s19 = (short) (((~sROL119) & sROL115) ^ sROL118);
            sArr2[8] = s19;
            sArr3[3] = (short) (sArr3[3] ^ s19);
            short s20 = (short) (((~sROL115) & sROL116) ^ sROL119);
            sArr2[9] = s20;
            sArr3[4] = (short) (s20 ^ sArr3[4]);
            short s21 = (short) (sArr[1] ^ sROL17);
            sArr[1] = s21;
            short sROL120 = ROL16(s21, 1);
            short s22 = (short) (sArr[7] ^ sROL18);
            sArr[7] = s22;
            short sROL121 = ROL16(s22, 6);
            short s23 = (short) (sArr[13] ^ sROL19);
            sArr[13] = s23;
            short sROL122 = ROL16(s23, 9);
            short s24 = (short) (sArr[19] ^ sROL110);
            sArr[19] = s24;
            short sROL123 = ROL16(s24, 8);
            short s25 = (short) (sArr[20] ^ sROL16);
            sArr[20] = s25;
            short sROL124 = ROL16(s25, 2);
            short s26 = (short) (((~sROL121) & sROL122) ^ sROL120);
            sArr2[10] = s26;
            sArr3[0] = (short) (sArr3[0] ^ s26);
            short s27 = (short) (((~sROL122) & sROL123) ^ sROL121);
            sArr2[11] = s27;
            sArr3[1] = (short) (sArr3[1] ^ s27);
            short s28 = (short) (((~sROL123) & sROL124) ^ sROL122);
            sArr2[12] = s28;
            sArr3[2] = (short) (s28 ^ sArr3[2]);
            short s29 = (short) (((~sROL124) & sROL120) ^ sROL123);
            sArr2[13] = s29;
            sArr3[3] = (short) (s29 ^ sArr3[3]);
            short s30 = (short) (((~sROL120) & sROL121) ^ sROL124);
            sArr2[14] = s30;
            sArr3[4] = (short) (s30 ^ sArr3[4]);
            short s31 = (short) (sArr[4] ^ sROL110);
            sArr[4] = s31;
            short sROL125 = ROL16(s31, 11);
            short s32 = (short) (sArr[5] ^ sROL16);
            sArr[5] = s32;
            short sROL126 = ROL16(s32, 4);
            short s33 = (short) (sArr[11] ^ sROL17);
            sArr[11] = s33;
            short sROL127 = ROL16(s33, 10);
            short s34 = (short) (sArr[17] ^ sROL18);
            sArr[17] = s34;
            short sROL128 = ROL16(s34, 15);
            short s35 = (short) (sArr[23] ^ sROL19);
            sArr[23] = s35;
            short sROL129 = ROL16(s35, 8);
            short s36 = (short) (((~sROL126) & sROL127) ^ sROL125);
            sArr2[15] = s36;
            sArr3[0] = (short) (sArr3[0] ^ s36);
            short s37 = (short) (((~sROL127) & sROL128) ^ sROL126);
            sArr2[16] = s37;
            sArr3[1] = (short) (sArr3[1] ^ s37);
            short s38 = (short) (sROL127 ^ ((~sROL128) & sROL129));
            sArr2[17] = s38;
            sArr3[2] = (short) (s38 ^ sArr3[2]);
            short s39 = (short) (((~sROL129) & sROL125) ^ sROL128);
            sArr2[18] = s39;
            sArr3[3] = (short) (s39 ^ sArr3[3]);
            short s40 = (short) (sROL129 ^ ((~sROL125) & sROL126));
            sArr2[19] = s40;
            sArr3[4] = (short) (s40 ^ sArr3[4]);
            short s41 = (short) (sArr[2] ^ sROL18);
            sArr[2] = s41;
            short sROL130 = ROL16(s41, 14);
            short s42 = (short) (sArr[8] ^ sROL19);
            sArr[8] = s42;
            short sROL131 = ROL16(s42, 7);
            short s43 = (short) (sArr[14] ^ sROL110);
            sArr[14] = s43;
            short sROL132 = ROL16(s43, 7);
            short s44 = (short) (sROL16 ^ sArr[15]);
            sArr[15] = s44;
            short sROL133 = ROL16(s44, 9);
            short s45 = (short) (sROL17 ^ sArr[21]);
            sArr[21] = s45;
            short sROL134 = ROL16(s45, 2);
            short s46 = (short) (((~sROL131) & sROL132) ^ sROL130);
            sArr2[20] = s46;
            sArr3[0] = (short) (s46 ^ sArr3[0]);
            short s47 = (short) (((~sROL132) & sROL133) ^ sROL131);
            sArr2[21] = s47;
            sArr3[1] = (short) (s47 ^ sArr3[1]);
            short s48 = (short) (sROL132 ^ ((~sROL133) & sROL134));
            sArr2[22] = s48;
            sArr3[2] = (short) (s48 ^ sArr3[2]);
            short s49 = (short) (sROL133 ^ ((~sROL134) & sROL130));
            sArr2[23] = s49;
            sArr3[3] = (short) (s49 ^ sArr3[3]);
            short s50 = (short) (sROL134 ^ ((~sROL130) & sROL131));
            sArr2[24] = s50;
            sArr3[4] = (short) (s50 ^ sArr3[4]);
        }
    }

    public class ISAPAEAD_K_128 extends ISAPAEAD_K {
        public ISAPAEAD_K_128() {
            super();
            this.ISAP_IV1_16 = new short[]{-32767, 400, 3092, 3084};
            this.ISAP_IV2_16 = new short[]{-32766, 400, 3092, 3084};
            this.ISAP_IV3_16 = new short[]{-32765, 400, 3092, 3084};
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K
        public void PermuteRoundsBX(short[] sArr, short[] sArr2, short[] sArr3) {
            rounds12X(sArr, sArr2, sArr3);
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K
        public void PermuteRoundsHX(short[] sArr, short[] sArr2, short[] sArr3) {
            prepareThetaX(sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(0, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(1, sArr2, sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(2, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(3, sArr2, sArr, sArr3);
            rounds_4_18(sArr, sArr2, sArr3);
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K
        public void PermuteRoundsKX(short[] sArr, short[] sArr2, short[] sArr3) {
            rounds12X(sArr, sArr2, sArr3);
        }
    }

    public class ISAPAEAD_K_128A extends ISAPAEAD_K {
        public ISAPAEAD_K_128A() {
            super();
            this.ISAP_IV1_16 = new short[]{-32767, 400, 272, 2056};
            this.ISAP_IV2_16 = new short[]{-32766, 400, 272, 2056};
            this.ISAP_IV3_16 = new short[]{-32765, 400, 272, 2056};
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K
        public void PermuteRoundsBX(short[] sArr, short[] sArr2, short[] sArr3) {
            prepareThetaX(sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(19, sArr, sArr2, sArr3);
            System.arraycopy(sArr2, 0, sArr, 0, sArr2.length);
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K
        public void PermuteRoundsHX(short[] sArr, short[] sArr2, short[] sArr3) {
            prepareThetaX(sArr, sArr3);
            rounds_4_18(sArr, sArr2, sArr3);
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K
        public void PermuteRoundsKX(short[] sArr, short[] sArr2, short[] sArr3) {
            prepareThetaX(sArr, sArr3);
            rounds_12_18(sArr, sArr2, sArr3);
        }
    }

    public interface ISAP_AEAD {
        void init();

        void isap_enc(byte[] bArr, int i2, int i3, byte[] bArr2, int i4, int i5);

        void isap_mac(byte[] bArr, int i2, byte[] bArr2, int i3, byte[] bArr3, int i4);

        void reset();
    }

    public enum IsapType {
        ISAP_A_128A,
        ISAP_K_128A,
        ISAP_A_128,
        ISAP_K_128
    }

    public ISAPEngine(IsapType isapType) {
        String str;
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType[isapType.ordinal()];
        if (i2 == 1) {
            this.ISAPAEAD = new ISAPAEAD_A_128A();
            str = "ISAP-A-128A AEAD";
        } else if (i2 == 2) {
            this.ISAPAEAD = new ISAPAEAD_K_128A();
            str = "ISAP-K-128A AEAD";
        } else if (i2 == 3) {
            this.ISAPAEAD = new ISAPAEAD_A_128();
            str = "ISAP-A-128 AEAD";
        } else {
            if (i2 != 4) {
                return;
            }
            this.ISAPAEAD = new ISAPAEAD_K_128();
            str = "ISAP-K-128 AEAD";
        }
        this.algorithmName = str;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i2) throws InvalidCipherTextException, IllegalStateException {
        if (!this.initialised) {
            md.n("Need call init function before encryption/decryption");
            return 0;
        }
        if (this.forEncryption) {
            byte[] byteArray = this.message.toByteArray();
            int length = byteArray.length;
            int i3 = i2 + length;
            if (i3 + 16 > bArr.length) {
                mt.n("output buffer is too short");
                return 0;
            }
            this.ISAPAEAD.isap_enc(byteArray, 0, length, bArr, i2, bArr.length);
            this.outputStream.write(bArr, i2, length);
            this.ad = this.aadData.toByteArray();
            byte[] byteArray2 = this.outputStream.toByteArray();
            this.f77615c = byteArray2;
            byte[] bArr2 = new byte[16];
            this.mac = bArr2;
            ISAP_AEAD isap_aead = this.ISAPAEAD;
            byte[] bArr3 = this.ad;
            isap_aead.isap_mac(bArr3, bArr3.length, byteArray2, byteArray2.length, bArr2, 0);
            System.arraycopy(this.mac, 0, bArr, i3, 16);
            return length + 16;
        }
        this.ad = this.aadData.toByteArray();
        byte[] byteArray3 = this.message.toByteArray();
        this.f77615c = byteArray3;
        byte[] bArr4 = new byte[16];
        this.mac = bArr4;
        int length2 = byteArray3.length - bArr4.length;
        if (length2 + i2 > bArr.length) {
            mt.n("output buffer is too short");
            return 0;
        }
        ISAP_AEAD isap_aead2 = this.ISAPAEAD;
        byte[] bArr5 = this.ad;
        isap_aead2.isap_mac(bArr5, bArr5.length, byteArray3, length2, bArr4, 0);
        this.ISAPAEAD.reset();
        for (int i4 = 0; i4 < 16; i4++) {
            if (this.mac[i4] != this.f77615c[length2 + i4]) {
                md.n("Mac does not match");
                return 0;
            }
        }
        this.ISAPAEAD.isap_enc(this.f77615c, 0, length2, bArr, i2, bArr.length);
        return length2;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    public int getBlockSize() {
        return this.ISAP_rH_SZ;
    }

    public int getIVBytesSize() {
        return 16;
    }

    public int getKeyBytesSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.mac;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i2) {
        return i2 + 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i2) {
        return i2;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z;
        if (!(cipherParameters instanceof ParametersWithIV)) {
            md.n("ISAP AEAD init parameters must include an IV");
            return;
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] iv = parametersWithIV.getIV();
        if (iv == null || iv.length != 16) {
            md.n("ISAP AEAD requires exactly 12 bytes of IV");
            return;
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            md.n("ISAP AEAD init parameters must include a key");
            return;
        }
        byte[] key = ((KeyParameter) parametersWithIV.getParameters()).getKey();
        if (key.length != 16) {
            md.n("ISAP AEAD key must be 128 bits long");
            return;
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z)));
        byte[] bArr = new byte[iv.length];
        this.npub = bArr;
        this.f77616k = new byte[key.length];
        System.arraycopy(iv, 0, bArr, 0, iv.length);
        System.arraycopy(key, 0, this.f77616k, 0, key.length);
        this.ISAPAEAD.init();
        this.initialised = true;
        reset();
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b2) {
        this.aadData.write(b2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i2, int i3) {
        if (i2 + i3 > bArr.length) {
            throw new DataLengthException("input buffer too short".concat(this.forEncryption ? "encryption" : "decryption"));
        }
        this.aadData.write(bArr, i2, i3);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b2, byte[] bArr, int i2) throws DataLengthException {
        return processBytes(new byte[]{b2}, 0, 1, bArr, i2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws DataLengthException {
        if (!this.initialised) {
            md.n("Need call init function before encryption/decryption");
            return 0;
        }
        if (i2 + i3 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        this.message.write(bArr, i2, i3);
        if (this.forEncryption && this.message.size() >= this.ISAP_rH_SZ) {
            int size = this.message.size();
            int i5 = this.ISAP_rH_SZ;
            int i6 = (size / i5) * i5;
            if (i4 + i6 <= bArr2.length) {
                byte[] byteArray = this.message.toByteArray();
                this.ISAPAEAD.isap_enc(byteArray, 0, i6, bArr2, i4, bArr2.length);
                this.outputStream.write(bArr2, i4, i6);
                this.message.reset();
                this.message.write(byteArray, i6, byteArray.length - i6);
                return i6;
            }
            mt.n("output buffer is too short");
        }
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        if (!this.initialised) {
            md.n("Need call init function before encryption/decryption");
            return;
        }
        this.aadData.reset();
        this.ISAPAEAD.reset();
        this.message.reset();
        this.outputStream.reset();
    }
}
