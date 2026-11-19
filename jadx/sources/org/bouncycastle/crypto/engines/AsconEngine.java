package org.bouncycastle.crypto.engines;

import defpackage.a;
import defpackage.az;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import defpackage.no0;
import defpackage.pq0;
import defpackage.r81;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Longs;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class AsconEngine implements AEADCipher {
    private final int ASCON_AEAD_RATE;
    private final long ASCON_IV;
    private final int CRYPTO_ABYTES;
    private final int CRYPTO_KEYBYTES;
    private long K0;
    private long K1;
    private long K2;
    private long N0;
    private long N1;
    private final String algorithmName;
    private final AsconParameters asconParameters;
    private byte[] initialAssociatedText;
    private final byte[] m_buf;
    private final int m_bufferSizeDecrypt;
    private byte[] mac;
    private final int nr;
    private long x0;
    private long x1;
    private long x2;
    private long x3;
    private long x4;
    private State m_state = State.Uninitialized;
    private int m_bufPos = 0;

    /* JADX INFO: renamed from: org.bouncycastle.crypto.engines.AsconEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters;
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State = iArr;
            try {
                iArr[State.DecInit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.EncInit.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.DecAad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.EncAad.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.EncFinal.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.DecData.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.EncData.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.DecFinal.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[AsconParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters = iArr2;
            try {
                iArr2[AsconParameters.ascon80pq.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters[AsconParameters.ascon128a.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters[AsconParameters.ascon128.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public enum AsconParameters {
        ascon80pq,
        ascon128a,
        ascon128
    }

    public enum State {
        Uninitialized,
        EncInit,
        EncAad,
        EncData,
        EncFinal,
        DecInit,
        DecAad,
        DecData,
        DecFinal
    }

    public AsconEngine(AsconParameters asconParameters) {
        String str;
        this.asconParameters = asconParameters;
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters[asconParameters.ordinal()];
        if (i2 == 1) {
            this.CRYPTO_KEYBYTES = 20;
            this.CRYPTO_ABYTES = 16;
            this.ASCON_AEAD_RATE = 8;
            this.ASCON_IV = -6899501409222262784L;
            str = "Ascon-80pq AEAD";
        } else if (i2 == 2) {
            this.CRYPTO_KEYBYTES = 16;
            this.CRYPTO_ABYTES = 16;
            this.ASCON_AEAD_RATE = 16;
            this.ASCON_IV = -9187330011336540160L;
            str = "Ascon-128a AEAD";
        } else {
            if (i2 != 3) {
                md.n("invalid parameter setting for ASCON AEAD");
                throw null;
            }
            this.CRYPTO_KEYBYTES = 16;
            this.CRYPTO_ABYTES = 16;
            this.ASCON_AEAD_RATE = 8;
            this.ASCON_IV = -9205344418435956736L;
            str = "Ascon-128 AEAD";
        }
        this.algorithmName = str;
        int i3 = this.ASCON_AEAD_RATE;
        this.nr = i3 == 8 ? 6 : 8;
        int i4 = i3 + this.CRYPTO_ABYTES;
        this.m_bufferSizeDecrypt = i4;
        this.m_buf = new byte[i4];
    }

    private void P(int i2) {
        if (i2 >= 8) {
            if (i2 == 12) {
                ROUND(240L);
                ROUND(225L);
                ROUND(210L);
                ROUND(195L);
            }
            ROUND(180L);
            ROUND(165L);
        }
        ROUND(150L);
        ROUND(135L);
        ROUND(120L);
        ROUND(105L);
        ROUND(90L);
        ROUND(75L);
    }

    private long PAD(int i2) {
        return 128 << (56 - (i2 << 3));
    }

    private void ROUND(long j2) {
        long j3 = this.x0;
        long j4 = this.x1;
        long j5 = this.x2;
        long j6 = this.x3;
        long j7 = this.x4;
        long j8 = ((((j3 ^ j4) ^ j5) ^ j6) ^ j2) ^ ((((j3 ^ j5) ^ j7) ^ j2) & j4);
        long j9 = ((((j3 ^ j5) ^ j6) ^ j7) ^ j2) ^ (((j4 ^ j5) ^ j2) & (j4 ^ j6));
        long j10 = (((j4 ^ j5) ^ j7) ^ j2) ^ (j6 & j7);
        long j11 = ((j5 ^ (j3 ^ j4)) ^ j2) ^ ((~j3) & (j6 ^ j7));
        long j12 = ((j3 ^ j7) & j4) ^ ((j4 ^ j6) ^ j7);
        this.x0 = Longs.rotateRight(j8, 28) ^ (Longs.rotateRight(j8, 19) ^ j8);
        this.x1 = (Longs.rotateRight(j9, 39) ^ j9) ^ Longs.rotateRight(j9, 61);
        this.x2 = ~(Longs.rotateRight(j10, 6) ^ (Longs.rotateRight(j10, 1) ^ j10));
        this.x3 = (Longs.rotateRight(j11, 10) ^ j11) ^ Longs.rotateRight(j11, 17);
        this.x4 = Longs.rotateRight(j12, 41) ^ (Longs.rotateRight(j12, 7) ^ j12);
    }

    private void ascon_aeadinit() {
        long j2 = this.ASCON_IV;
        this.x0 = j2;
        if (this.CRYPTO_KEYBYTES == 20) {
            this.x0 = j2 ^ this.K0;
        }
        this.x1 = this.K1;
        this.x2 = this.K2;
        this.x3 = this.N0;
        this.x4 = this.N1;
        P(12);
        if (this.CRYPTO_KEYBYTES == 20) {
            this.x2 ^= this.K0;
        }
        this.x3 ^= this.K1;
        this.x4 ^= this.K2;
    }

    private void checkAAD() {
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[this.m_state.ordinal()];
        if (i2 == 1) {
            this.m_state = State.DecAad;
            return;
        }
        if (i2 == 2) {
            this.m_state = State.EncAad;
            return;
        }
        if (i2 == 3 || i2 == 4) {
            return;
        }
        String algorithmName = getAlgorithmName();
        if (i2 != 5) {
            no0.l(algorithmName, " needs to be initialized");
        } else {
            no0.l(algorithmName, " cannot be reused for encryption");
        }
    }

    private boolean checkData() {
        String algorithmName;
        String str;
        switch (AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[this.m_state.ordinal()]) {
            case 1:
            case 3:
                finishAAD(State.DecData);
                return false;
            case 2:
            case 4:
                finishAAD(State.EncData);
                return true;
            case 5:
                algorithmName = getAlgorithmName();
                str = " cannot be reused for encryption";
                break;
            case 6:
                return false;
            case 7:
                return true;
            default:
                algorithmName = getAlgorithmName();
                str = " needs to be initialized";
                break;
        }
        no0.l(algorithmName, str);
        return false;
    }

    private void finishAAD(State state) {
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[this.m_state.ordinal()];
        if (i2 == 3 || i2 == 4) {
            byte[] bArr = this.m_buf;
            int i3 = this.m_bufPos;
            bArr[i3] = -128;
            long j2 = this.x0;
            if (i3 >= 8) {
                this.x0 = j2 ^ Pack.bigEndianToLong(bArr, 0);
                this.x1 ^= ((-1) << (56 - ((this.m_bufPos - 8) << 3))) & Pack.bigEndianToLong(this.m_buf, 8);
            } else {
                this.x0 = (((-1) << (56 - (this.m_bufPos << 3))) & Pack.bigEndianToLong(bArr, 0)) ^ j2;
            }
            P(this.nr);
        }
        this.x4 ^= 1;
        this.m_bufPos = 0;
        this.m_state = state;
    }

    private void finishData(State state) {
        long j2;
        long j3;
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters[this.asconParameters.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                this.x2 ^= this.K1;
                j2 = this.x3;
                j3 = this.K2;
            } else if (i2 != 3) {
                r81.b();
                return;
            } else {
                this.x1 ^= this.K1;
                this.x2 ^= this.K2;
            }
            P(12);
            this.x3 ^= this.K1;
            this.x4 ^= this.K2;
            this.m_state = state;
        }
        long j4 = this.x1;
        long j5 = this.K0 << 32;
        long j6 = this.K1;
        this.x1 = j4 ^ (j5 | (j6 >> 32));
        long j7 = this.x2;
        long j8 = j6 << 32;
        long j9 = this.K2;
        this.x2 = j7 ^ (j8 | (j9 >> 32));
        j2 = this.x3;
        j3 = j9 << 32;
        this.x3 = j2 ^ j3;
        P(12);
        this.x3 ^= this.K1;
        this.x4 ^= this.K2;
        this.m_state = state;
    }

    private void processBufferAAD(byte[] bArr, int i2) {
        this.x0 ^= Pack.bigEndianToLong(bArr, i2);
        if (this.ASCON_AEAD_RATE == 16) {
            this.x1 = Pack.bigEndianToLong(bArr, i2 + 8) ^ this.x1;
        }
        P(this.nr);
    }

    private void processBufferDecrypt(byte[] bArr, int i2, byte[] bArr2, int i3) {
        if (this.ASCON_AEAD_RATE + i3 > bArr2.length) {
            mt.n("output buffer too short");
            return;
        }
        long jBigEndianToLong = Pack.bigEndianToLong(bArr, i2);
        Pack.longToBigEndian(this.x0 ^ jBigEndianToLong, bArr2, i3);
        this.x0 = jBigEndianToLong;
        if (this.ASCON_AEAD_RATE == 16) {
            long jBigEndianToLong2 = Pack.bigEndianToLong(bArr, i2 + 8);
            Pack.longToBigEndian(this.x1 ^ jBigEndianToLong2, bArr2, i3 + 8);
            this.x1 = jBigEndianToLong2;
        }
        P(this.nr);
    }

    private void processBufferEncrypt(byte[] bArr, int i2, byte[] bArr2, int i3) {
        if (this.ASCON_AEAD_RATE + i3 > bArr2.length) {
            mt.n("output buffer too short");
            return;
        }
        long jBigEndianToLong = this.x0 ^ Pack.bigEndianToLong(bArr, i2);
        this.x0 = jBigEndianToLong;
        Pack.longToBigEndian(jBigEndianToLong, bArr2, i3);
        if (this.ASCON_AEAD_RATE == 16) {
            long jBigEndianToLong2 = Pack.bigEndianToLong(bArr, i2 + 8) ^ this.x1;
            this.x1 = jBigEndianToLong2;
            Pack.longToBigEndian(jBigEndianToLong2, bArr2, i3 + 8);
        }
        P(this.nr);
    }

    private void processFinalDecrypt(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        if (i3 >= 8) {
            long jBigEndianToLong = Pack.bigEndianToLong(bArr, i2);
            long j2 = this.x0 ^ jBigEndianToLong;
            this.x0 = j2;
            Pack.longToBigEndian(j2, bArr2, i4);
            this.x0 = jBigEndianToLong;
            int i5 = i2 + 8;
            int i6 = i4 + 8;
            int i7 = i3 - 8;
            this.x1 ^= PAD(i7);
            if (i7 != 0) {
                long jLittleEndianToLong_High = Pack.littleEndianToLong_High(bArr, i5, i7);
                long j3 = this.x1 ^ jLittleEndianToLong_High;
                this.x1 = j3;
                Pack.longToLittleEndian_High(j3, bArr2, i6, i7);
                this.x1 = jLittleEndianToLong_High ^ (this.x1 & ((-1) >>> (i7 << 3)));
            }
        } else {
            this.x0 ^= PAD(i3);
            if (i3 != 0) {
                long jLittleEndianToLong_High2 = Pack.littleEndianToLong_High(bArr, i2, i3);
                long j4 = this.x0 ^ jLittleEndianToLong_High2;
                this.x0 = j4;
                Pack.longToLittleEndian_High(j4, bArr2, i4, i3);
                this.x0 = jLittleEndianToLong_High2 ^ (this.x0 & ((-1) >>> (i3 << 3)));
            }
        }
        finishData(State.DecFinal);
    }

    private void processFinalEncrypt(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        long jLittleEndianToLong_High;
        long j2 = this.x0;
        if (i3 >= 8) {
            long jBigEndianToLong = j2 ^ Pack.bigEndianToLong(bArr, i2);
            this.x0 = jBigEndianToLong;
            Pack.longToBigEndian(jBigEndianToLong, bArr2, i4);
            int i5 = i2 + 8;
            i4 += 8;
            i3 -= 8;
            long jPAD = this.x1 ^ PAD(i3);
            this.x1 = jPAD;
            if (i3 != 0) {
                jLittleEndianToLong_High = Pack.littleEndianToLong_High(bArr, i5, i3) ^ jPAD;
                this.x1 = jLittleEndianToLong_High;
                Pack.longToLittleEndian_High(jLittleEndianToLong_High, bArr2, i4, i3);
            }
        } else {
            long jPAD2 = j2 ^ PAD(i3);
            this.x0 = jPAD2;
            if (i3 != 0) {
                jLittleEndianToLong_High = Pack.littleEndianToLong_High(bArr, i2, i3) ^ jPAD2;
                this.x0 = jLittleEndianToLong_High;
                Pack.longToLittleEndian_High(jLittleEndianToLong_High, bArr2, i4, i3);
            }
        }
        finishData(State.EncFinal);
    }

    private void reset(boolean z) {
        if (z) {
            this.mac = null;
        }
        Arrays.clear(this.m_buf);
        this.m_bufPos = 0;
        switch (AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[this.m_state.ordinal()]) {
            case 1:
            case 2:
                break;
            case 3:
            case 6:
            case 8:
                this.m_state = State.DecInit;
                break;
            case 4:
            case 5:
            case 7:
                this.m_state = State.EncFinal;
                return;
            default:
                no0.l(getAlgorithmName(), " needs to be initialized");
                return;
        }
        ascon_aeadinit();
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i2) throws InvalidCipherTextException, IllegalStateException, DataLengthException {
        boolean zCheckData = checkData();
        int i3 = this.m_bufPos;
        if (zCheckData) {
            int i4 = i3 + this.CRYPTO_ABYTES;
            if (i2 + i4 > bArr.length) {
                mt.n("output buffer too short");
                return 0;
            }
            processFinalEncrypt(this.m_buf, 0, i3, bArr, i2);
            byte[] bArr2 = new byte[this.CRYPTO_ABYTES];
            this.mac = bArr2;
            Pack.longToBigEndian(this.x3, bArr2, 0);
            Pack.longToBigEndian(this.x4, this.mac, 8);
            System.arraycopy(this.mac, 0, bArr, this.m_bufPos + i2, this.CRYPTO_ABYTES);
            reset(false);
            return i4;
        }
        int i5 = this.CRYPTO_ABYTES;
        if (i3 < i5) {
            az.x("data too short");
            return 0;
        }
        int i6 = i3 - i5;
        this.m_bufPos = i6;
        if (i2 + i6 > bArr.length) {
            mt.n("output buffer too short");
            return 0;
        }
        processFinalDecrypt(this.m_buf, 0, i6, bArr, i2);
        this.x3 ^= Pack.bigEndianToLong(this.m_buf, this.m_bufPos);
        long jBigEndianToLong = this.x4 ^ Pack.bigEndianToLong(this.m_buf, this.m_bufPos + 8);
        this.x4 = jBigEndianToLong;
        if ((jBigEndianToLong | this.x3) == 0) {
            reset(true);
            return i6;
        }
        throw new InvalidCipherTextException("mac check in " + getAlgorithmName() + " failed");
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    public String getAlgorithmVersion() {
        return "v1.2";
    }

    public int getIVBytesSize() {
        return this.CRYPTO_ABYTES;
    }

    public int getKeyBytesSize() {
        return this.CRYPTO_KEYBYTES;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.mac;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0031  */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0020, code lost:
    
        if (r1 != 8) goto L14;
     */
    @Override // org.bouncycastle.crypto.modes.AEADCipher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getOutputSize(int r4) {
        /*
            r3 = this;
            r0 = 0
            int r4 = java.lang.Math.max(r0, r4)
            int[] r1 = org.bouncycastle.crypto.engines.AsconEngine.AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State
            org.bouncycastle.crypto.engines.AsconEngine$State r2 = r3.m_state
            int r2 = r2.ordinal()
            r1 = r1[r2]
            r2 = 1
            if (r1 == r2) goto L29
            r2 = 3
            if (r1 == r2) goto L29
            r2 = 5
            if (r1 == r2) goto L31
            r2 = 6
            if (r1 == r2) goto L26
            r2 = 7
            if (r1 == r2) goto L31
            r2 = 8
            if (r1 == r2) goto L26
        L22:
            int r3 = r3.CRYPTO_ABYTES
            int r4 = r4 + r3
            return r4
        L26:
            int r1 = r3.m_bufPos
            int r4 = r4 + r1
        L29:
            int r3 = r3.CRYPTO_ABYTES
            int r4 = r4 - r3
            int r3 = java.lang.Math.max(r0, r4)
            return r3
        L31:
            int r0 = r3.m_bufPos
            int r4 = r4 + r0
            goto L22
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.engines.AsconEngine.getOutputSize(int):int");
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002e  */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0020, code lost:
    
        if (r1 != 8) goto L18;
     */
    @Override // org.bouncycastle.crypto.modes.AEADCipher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getUpdateOutputSize(int r4) {
        /*
            r3 = this;
            r0 = 0
            int r4 = java.lang.Math.max(r0, r4)
            int[] r1 = org.bouncycastle.crypto.engines.AsconEngine.AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State
            org.bouncycastle.crypto.engines.AsconEngine$State r2 = r3.m_state
            int r2 = r2.ordinal()
            r1 = r1[r2]
            r2 = 1
            if (r1 == r2) goto L26
            r2 = 3
            if (r1 == r2) goto L26
            r2 = 5
            if (r1 == r2) goto L2e
            r2 = 6
            if (r1 == r2) goto L23
            r2 = 7
            if (r1 == r2) goto L2e
            r2 = 8
            if (r1 == r2) goto L23
            goto L31
        L23:
            int r1 = r3.m_bufPos
            int r4 = r4 + r1
        L26:
            int r1 = r3.CRYPTO_ABYTES
            int r4 = r4 - r1
            int r4 = java.lang.Math.max(r0, r4)
            goto L31
        L2e:
            int r0 = r3.m_bufPos
            int r4 = r4 + r0
        L31:
            int r3 = r3.ASCON_AEAD_RATE
            int r3 = r4 % r3
            int r4 = r4 - r3
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.engines.AsconEngine.getUpdateOutputSize(int):int");
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        KeyParameter key;
        byte[] iv;
        long jBigEndianToLong;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            key = aEADParameters.getKey();
            iv = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize != this.CRYPTO_ABYTES * 8) {
                md.n(pq0.k(macSize, "Invalid value for MAC size: "));
                return;
            }
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                md.n("invalid parameters passed to Ascon");
                return;
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            key = (KeyParameter) parametersWithIV.getParameters();
            iv = parametersWithIV.getIV();
            this.initialAssociatedText = null;
        }
        if (key == null) {
            md.n("Ascon Init parameters must include a key");
            return;
        }
        if (iv == null || iv.length != this.CRYPTO_ABYTES) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.asconParameters);
            sb.append(" requires exactly ");
            md.n(a.i(this.CRYPTO_ABYTES, " bytes of IV", sb));
            return;
        }
        byte[] key2 = key.getKey();
        if (key2.length != this.CRYPTO_KEYBYTES) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.asconParameters);
            sb2.append(" key must be ");
            md.n(a.i(this.CRYPTO_KEYBYTES, " bytes long", sb2));
            return;
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z)));
        this.N0 = Pack.bigEndianToLong(iv, 0);
        this.N1 = Pack.bigEndianToLong(iv, 8);
        int i2 = this.CRYPTO_KEYBYTES;
        if (i2 == 16) {
            this.K1 = Pack.bigEndianToLong(key2, 0);
            jBigEndianToLong = Pack.bigEndianToLong(key2, 8);
        } else if (i2 != 20) {
            r81.b();
            return;
        } else {
            this.K0 = Pack.bigEndianToInt(key2, 0);
            this.K1 = Pack.bigEndianToLong(key2, 4);
            jBigEndianToLong = Pack.bigEndianToLong(key2, 12);
        }
        this.K2 = jBigEndianToLong;
        this.m_state = z ? State.EncInit : State.DecInit;
        reset(true);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b2) {
        checkAAD();
        byte[] bArr = this.m_buf;
        int i2 = this.m_bufPos;
        bArr[i2] = b2;
        int i3 = i2 + 1;
        this.m_bufPos = i3;
        if (i3 == this.ASCON_AEAD_RATE) {
            processBufferAAD(bArr, 0);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i2, int i3) {
        if (i2 + i3 > bArr.length) {
            b21.q("input buffer too short");
            return;
        }
        if (i3 <= 0) {
            return;
        }
        checkAAD();
        int i4 = this.m_bufPos;
        if (i4 > 0) {
            int i5 = this.ASCON_AEAD_RATE - i4;
            byte[] bArr2 = this.m_buf;
            if (i3 < i5) {
                System.arraycopy(bArr, i2, bArr2, i4, i3);
                this.m_bufPos += i3;
                return;
            } else {
                System.arraycopy(bArr, i2, bArr2, i4, i5);
                i2 += i5;
                i3 -= i5;
                processBufferAAD(this.m_buf, 0);
            }
        }
        while (i3 >= this.ASCON_AEAD_RATE) {
            processBufferAAD(bArr, i2);
            int i6 = this.ASCON_AEAD_RATE;
            i2 += i6;
            i3 -= i6;
        }
        System.arraycopy(bArr, i2, this.m_buf, 0, i3);
        this.m_bufPos = i3;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b2, byte[] bArr, int i2) throws DataLengthException {
        return processBytes(new byte[]{b2}, 0, 1, bArr, i2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws DataLengthException {
        int i5;
        if (i2 + i3 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        if (!checkData()) {
            int i6 = this.m_bufferSizeDecrypt;
            int i7 = this.m_bufPos;
            int i8 = i6 - i7;
            if (i3 < i8) {
                System.arraycopy(bArr, i2, this.m_buf, i7, i3);
                this.m_bufPos += i3;
                return 0;
            }
            int i9 = 0;
            do {
                int i10 = this.m_bufPos;
                int i11 = this.ASCON_AEAD_RATE;
                byte[] bArr3 = this.m_buf;
                if (i10 >= i11) {
                    processBufferDecrypt(bArr3, 0, bArr2, i4 + i9);
                    int i12 = this.m_bufPos;
                    int i13 = this.ASCON_AEAD_RATE;
                    int i14 = i12 - i13;
                    this.m_bufPos = i14;
                    byte[] bArr4 = this.m_buf;
                    System.arraycopy(bArr4, i13, bArr4, 0, i14);
                    int i15 = this.ASCON_AEAD_RATE;
                    i9 += i15;
                    i8 += i15;
                } else {
                    int i16 = i11 - i10;
                    System.arraycopy(bArr, i2, bArr3, i10, i16);
                    i2 += i16;
                    i3 -= i16;
                    processBufferDecrypt(this.m_buf, 0, bArr2, i4 + i9);
                    i5 = i9 + this.ASCON_AEAD_RATE;
                    while (i3 >= this.m_bufferSizeDecrypt) {
                        processBufferDecrypt(bArr, i2, bArr2, i4 + i5);
                        int i17 = this.ASCON_AEAD_RATE;
                        i2 += i17;
                        i3 -= i17;
                        i5 += i17;
                    }
                }
            } while (i3 >= i8);
            System.arraycopy(bArr, i2, this.m_buf, this.m_bufPos, i3);
            this.m_bufPos += i3;
            return i9;
        }
        int i18 = this.m_bufPos;
        if (i18 > 0) {
            int i19 = this.ASCON_AEAD_RATE - i18;
            byte[] bArr5 = this.m_buf;
            if (i3 < i19) {
                System.arraycopy(bArr, i2, bArr5, i18, i3);
                this.m_bufPos += i3;
                return 0;
            }
            System.arraycopy(bArr, i2, bArr5, i18, i19);
            i2 += i19;
            i3 -= i19;
            processBufferEncrypt(this.m_buf, 0, bArr2, i4);
            i5 = this.ASCON_AEAD_RATE;
        } else {
            i5 = 0;
        }
        while (i3 >= this.ASCON_AEAD_RATE) {
            processBufferEncrypt(bArr, i2, bArr2, i4 + i5);
            int i20 = this.ASCON_AEAD_RATE;
            i2 += i20;
            i3 -= i20;
            i5 += i20;
        }
        System.arraycopy(bArr, i2, this.m_buf, 0, i3);
        this.m_bufPos = i3;
        return i5;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
    }
}
