package org.bouncycastle.crypto.engines;

import defpackage.az;
import defpackage.b21;
import defpackage.ct0;
import defpackage.md;
import defpackage.mt;
import defpackage.n00;
import defpackage.no0;
import defpackage.pq0;
import defpackage.r81;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.digests.SparkleDigest;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SparkleEngine implements AEADCipher {
    private static final int[] RCON = {-1209970334, -1083090816, 951376470, 844003128, -1156479509, 1333558103, -809524792, -1028445891};
    private final int CAP_MASK;
    private final int KEY_BYTES;
    private final int KEY_WORDS;
    private final int RATE_BYTES;
    private final int RATE_WORDS;
    private final int SCHWAEMM_KEY_LEN;
    private final int SCHWAEMM_NONCE_LEN;
    private final int SPARKLE_STEPS_BIG;
    private final int SPARKLE_STEPS_SLIM;
    private final int STATE_WORDS;
    private final int TAG_BYTES;
    private final int TAG_WORDS;
    private final int _A0;
    private final int _A1;
    private final int _M2;
    private final int _M3;
    private String algorithmName;
    private boolean encrypted;
    private byte[] initialAssociatedText;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int[] f77618k;
    private final byte[] m_buf;
    private final int m_bufferSizeDecrypt;
    private final int[] npub;
    private final int[] state;
    private byte[] tag;
    private State m_state = State.Uninitialized;
    private int m_bufPos = 0;

    /* JADX INFO: renamed from: org.bouncycastle.crypto.engines.SparkleEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters;
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State = iArr;
            try {
                iArr[State.DecInit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.DecAad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.DecData.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.DecFinal.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.EncData.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.EncFinal.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.EncInit.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.EncAad.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[SparkleParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters = iArr2;
            try {
                iArr2[SparkleParameters.SCHWAEMM128_128.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[SparkleParameters.SCHWAEMM256_128.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[SparkleParameters.SCHWAEMM192_192.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[SparkleParameters.SCHWAEMM256_256.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public enum SparkleParameters {
        SCHWAEMM128_128,
        SCHWAEMM256_128,
        SCHWAEMM192_192,
        SCHWAEMM256_256
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

    /* JADX WARN: Code duplicated, block: B:19:0x0094  */
    /* JADX WARN: Code duplicated, block: B:20:0x0096  */
    public SparkleEngine(SparkleParameters sparkleParameters) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[sparkleParameters.ordinal()];
        int i7 = 256;
        int i8 = 128;
        if (i6 != 1) {
            i2 = KyberEngine.KyberPolyBytes;
            if (i6 != 2) {
                if (i6 == 3) {
                    i7 = 192;
                    this.SCHWAEMM_KEY_LEN = 192;
                    this.SCHWAEMM_NONCE_LEN = 192;
                    this.SPARKLE_STEPS_SLIM = 7;
                    this.SPARKLE_STEPS_BIG = 11;
                    this.algorithmName = "SCHWAEMM192-192";
                } else {
                    if (i6 != 4) {
                        md.n("Invalid definition of SCHWAEMM instance");
                        throw null;
                    }
                    this.SCHWAEMM_KEY_LEN = 256;
                    this.SCHWAEMM_NONCE_LEN = 256;
                    this.SPARKLE_STEPS_SLIM = 8;
                    this.SPARKLE_STEPS_BIG = 12;
                    this.algorithmName = "SCHWAEMM256-256";
                    i2 = 512;
                }
                i8 = i7;
            } else {
                this.SCHWAEMM_KEY_LEN = 128;
                this.SCHWAEMM_NONCE_LEN = 256;
                this.SPARKLE_STEPS_SLIM = 7;
                this.SPARKLE_STEPS_BIG = 11;
                this.algorithmName = "SCHWAEMM256-128";
            }
            int i9 = this.SCHWAEMM_KEY_LEN;
            int i10 = i9 >>> 5;
            this.KEY_WORDS = i10;
            this.KEY_BYTES = i9 >>> 3;
            this.TAG_WORDS = i7 >>> 5;
            int i11 = i7 >>> 3;
            this.TAG_BYTES = i11;
            int i12 = i2 >>> 5;
            this.STATE_WORDS = i12;
            int i13 = this.SCHWAEMM_NONCE_LEN;
            i3 = i13 >>> 5;
            this.RATE_WORDS = i3;
            int i14 = i13 >>> 3;
            this.RATE_BYTES = i14;
            int i15 = i8 >>> 6;
            i4 = i8 >>> 5;
            if (i3 > i4) {
                i5 = i4 - 1;
            } else {
                i5 = -1;
            }
            this.CAP_MASK = i5;
            int i16 = 1 << i15;
            this._A0 = i16 << 24;
            this._A1 = (i16 ^ 1) << 24;
            this._M2 = (i16 ^ 2) << 24;
            this._M3 = (3 ^ i16) << 24;
            this.state = new int[i12];
            this.f77618k = new int[i10];
            this.npub = new int[i3];
            int i17 = i14 + i11;
            this.m_bufferSizeDecrypt = i17;
            this.m_buf = new byte[i17];
        }
        this.SCHWAEMM_KEY_LEN = 128;
        this.SCHWAEMM_NONCE_LEN = 128;
        this.SPARKLE_STEPS_SLIM = 7;
        this.SPARKLE_STEPS_BIG = 10;
        this.algorithmName = "SCHWAEMM128-128";
        i2 = 256;
        i7 = 128;
        int i18 = this.SCHWAEMM_KEY_LEN;
        int i19 = i18 >>> 5;
        this.KEY_WORDS = i19;
        this.KEY_BYTES = i18 >>> 3;
        this.TAG_WORDS = i7 >>> 5;
        int i110 = i7 >>> 3;
        this.TAG_BYTES = i110;
        int i111 = i2 >>> 5;
        this.STATE_WORDS = i111;
        int i112 = this.SCHWAEMM_NONCE_LEN;
        i3 = i112 >>> 5;
        this.RATE_WORDS = i3;
        int i113 = i112 >>> 3;
        this.RATE_BYTES = i113;
        int i114 = i8 >>> 6;
        i4 = i8 >>> 5;
        if (i3 > i4) {
            i5 = i4 - 1;
        } else {
            i5 = -1;
        }
        this.CAP_MASK = i5;
        int i115 = 1 << i114;
        this._A0 = i115 << 24;
        this._A1 = (i115 ^ 1) << 24;
        this._M2 = (i115 ^ 2) << 24;
        this._M3 = (3 ^ i115) << 24;
        this.state = new int[i111];
        this.f77618k = new int[i19];
        this.npub = new int[i3];
        int i116 = i113 + i110;
        this.m_bufferSizeDecrypt = i116;
        this.m_buf = new byte[i116];
    }

    private static int ELL(int i2) {
        return (i2 & 65535) ^ Integers.rotateRight(i2, 16);
    }

    private void checkAAD() {
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[this.m_state.ordinal()];
        if (i2 == 1) {
            this.m_state = State.DecAad;
            return;
        }
        if (i2 != 2) {
            if (i2 == 6) {
                no0.l(getAlgorithmName(), " cannot be reused for encryption");
            } else if (i2 == 7) {
                this.m_state = State.EncAad;
            } else {
                if (i2 == 8) {
                    return;
                }
                no0.l(getAlgorithmName(), " needs to be initialized");
            }
        }
    }

    private boolean checkData() {
        String algorithmName;
        String str;
        switch (AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[this.m_state.ordinal()]) {
            case 1:
            case 2:
                finishAAD(State.DecData);
                return false;
            case 3:
                return false;
            case 4:
            default:
                algorithmName = getAlgorithmName();
                str = " needs to be initialized";
                break;
            case 5:
                return true;
            case 6:
                algorithmName = getAlgorithmName();
                str = " cannot be reused for encryption";
                break;
            case 7:
            case 8:
                finishAAD(State.EncData);
                return true;
        }
        no0.l(algorithmName, str);
        return false;
    }

    private void finishAAD(State state) {
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[this.m_state.ordinal()];
        if (i2 == 2 || i2 == 8) {
            processFinalAAD();
        }
        this.m_bufPos = 0;
        this.m_state = state;
    }

    private void processBufferAAD(byte[] bArr, int i2) {
        int i3 = 0;
        while (true) {
            int i4 = this.RATE_WORDS;
            int i5 = i4 / 2;
            int[] iArr = this.state;
            if (i3 >= i5) {
                sparkle_opt(iArr, this.SPARKLE_STEPS_SLIM);
                return;
            }
            int i6 = (i4 / 2) + i3;
            int i7 = iArr[i3];
            int i8 = iArr[i6];
            int iLittleEndianToInt = Pack.littleEndianToInt(bArr, (i3 * 4) + i2);
            int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, (i6 * 4) + i2);
            int[] iArr2 = this.state;
            int i9 = this.RATE_WORDS;
            iArr2[i3] = (iLittleEndianToInt ^ i8) ^ iArr2[i9 + i3];
            iArr2[i6] = ((i7 ^ i8) ^ iLittleEndianToInt2) ^ iArr2[i9 + (this.CAP_MASK & i6)];
            i3++;
        }
    }

    private void processBufferDecrypt(byte[] bArr, int i2, byte[] bArr2, int i3) {
        if (i3 > bArr2.length - this.RATE_BYTES) {
            mt.n("output buffer too short");
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = this.RATE_WORDS;
            int i6 = i5 / 2;
            int[] iArr = this.state;
            if (i4 >= i6) {
                sparkle_opt(iArr, this.SPARKLE_STEPS_SLIM);
                this.encrypted = true;
                return;
            }
            int i7 = (i5 / 2) + i4;
            int i8 = iArr[i4];
            int i9 = iArr[i7];
            int i10 = i4 * 4;
            int iLittleEndianToInt = Pack.littleEndianToInt(bArr, i2 + i10);
            int i11 = i7 * 4;
            int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, i2 + i11);
            int[] iArr2 = this.state;
            int i12 = this.RATE_WORDS;
            iArr2[i4] = ((i8 ^ i9) ^ iLittleEndianToInt) ^ iArr2[i12 + i4];
            iArr2[i7] = (i8 ^ iLittleEndianToInt2) ^ iArr2[i12 + (this.CAP_MASK & i7)];
            Pack.intToLittleEndian(iLittleEndianToInt ^ i8, bArr2, i3 + i10);
            Pack.intToLittleEndian(iLittleEndianToInt2 ^ i9, bArr2, i3 + i11);
            i4++;
        }
    }

    private void processBufferEncrypt(byte[] bArr, int i2, byte[] bArr2, int i3) {
        if (i3 > bArr2.length - this.RATE_BYTES) {
            mt.n("output buffer too short");
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = this.RATE_WORDS;
            int i6 = i5 / 2;
            int[] iArr = this.state;
            if (i4 >= i6) {
                sparkle_opt(iArr, this.SPARKLE_STEPS_SLIM);
                this.encrypted = true;
                return;
            }
            int i7 = (i5 / 2) + i4;
            int i8 = iArr[i4];
            int i9 = iArr[i7];
            int i10 = i4 * 4;
            int iLittleEndianToInt = Pack.littleEndianToInt(bArr, i2 + i10);
            int i11 = i7 * 4;
            int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, i2 + i11);
            int[] iArr2 = this.state;
            int i12 = this.RATE_WORDS;
            iArr2[i4] = (i9 ^ iLittleEndianToInt) ^ iArr2[i12 + i4];
            iArr2[i7] = ((i8 ^ i9) ^ iLittleEndianToInt2) ^ iArr2[i12 + (this.CAP_MASK & i7)];
            Pack.intToLittleEndian(iLittleEndianToInt ^ i8, bArr2, i3 + i10);
            Pack.intToLittleEndian(iLittleEndianToInt2 ^ i9, bArr2, i3 + i11);
            i4++;
        }
    }

    private void processFinalAAD() {
        int i2 = this.m_bufPos;
        int i3 = this.RATE_BYTES;
        int[] iArr = this.state;
        int i4 = 0;
        if (i2 < i3) {
            int i5 = this.STATE_WORDS - 1;
            iArr[i5] = iArr[i5] ^ this._A0;
            this.m_buf[i2] = -128;
            while (true) {
                int i6 = this.m_bufPos + 1;
                this.m_bufPos = i6;
                if (i6 >= this.RATE_BYTES) {
                    break;
                } else {
                    this.m_buf[i6] = 0;
                }
            }
        } else {
            int i7 = this.STATE_WORDS - 1;
            iArr[i7] = iArr[i7] ^ this._A1;
        }
        while (true) {
            int i8 = this.RATE_WORDS;
            int i9 = i8 / 2;
            int[] iArr2 = this.state;
            if (i4 >= i9) {
                sparkle_opt(iArr2, this.SPARKLE_STEPS_BIG);
                return;
            }
            int i10 = (i8 / 2) + i4;
            int i11 = iArr2[i4];
            int i12 = iArr2[i10];
            int iLittleEndianToInt = Pack.littleEndianToInt(this.m_buf, i4 * 4);
            int iLittleEndianToInt2 = Pack.littleEndianToInt(this.m_buf, i10 * 4);
            int[] iArr3 = this.state;
            int i13 = this.RATE_WORDS;
            iArr3[i4] = (iLittleEndianToInt ^ i12) ^ iArr3[i13 + i4];
            iArr3[i10] = ((i11 ^ i12) ^ iLittleEndianToInt2) ^ iArr3[i13 + (this.CAP_MASK & i10)];
            i4++;
        }
    }

    private void reset(boolean z) {
        if (z) {
            this.tag = null;
        }
        Arrays.clear(this.m_buf);
        this.m_bufPos = 0;
        this.encrypted = false;
        switch (AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[this.m_state.ordinal()]) {
            case 1:
            case 7:
                break;
            case 2:
            case 3:
            case 4:
                this.m_state = State.DecInit;
                break;
            case 5:
            case 6:
            case 8:
                this.m_state = State.EncFinal;
                return;
            default:
                no0.l(getAlgorithmName(), " needs to be initialized");
                return;
        }
        System.arraycopy(this.npub, 0, this.state, 0, this.RATE_WORDS);
        System.arraycopy(this.f77618k, 0, this.state, this.RATE_WORDS, this.KEY_WORDS);
        sparkle_opt(this.state, this.SPARKLE_STEPS_BIG);
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }

    private static void sparkle_opt(int[] iArr, int i2) {
        int length = iArr.length;
        if (length == 8) {
            sparkle_opt8(iArr, i2);
            return;
        }
        if (length == 12) {
            sparkle_opt12(iArr, i2);
        } else if (length == 16) {
            sparkle_opt16(iArr, i2);
        } else {
            r81.b();
        }
    }

    public static void sparkle_opt12(int[] iArr, int i2) {
        int i3 = iArr[0];
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = iArr[3];
        char c2 = 4;
        int i7 = iArr[4];
        char c3 = 5;
        int i8 = iArr[5];
        char c4 = 6;
        int i9 = iArr[6];
        char c5 = 7;
        int i10 = iArr[7];
        int i11 = iArr[8];
        int i12 = iArr[9];
        int i13 = iArr[10];
        int i14 = iArr[11];
        int i15 = 0;
        int i16 = i12;
        while (i15 < i2) {
            int[] iArr2 = RCON;
            int i17 = i4 ^ iArr2[i15 & 7];
            int i18 = i6 ^ i15;
            int i19 = iArr2[0];
            char c6 = c2;
            int iRotateRight = Integers.rotateRight(i17, 31) + i3;
            char c7 = c3;
            int iRotateRight2 = i17 ^ Integers.rotateRight(iRotateRight, 24);
            char c8 = c4;
            int iRotateRight3 = Integers.rotateRight(iRotateRight2, 17) + (iRotateRight ^ i19);
            int iRotateRight4 = iRotateRight2 ^ Integers.rotateRight(iRotateRight3, 17);
            int i20 = (iRotateRight3 ^ i19) + iRotateRight4;
            int iRotateRight5 = iRotateRight4 ^ Integers.rotateRight(i20, 31);
            int iRotateRight6 = Integers.rotateRight(iRotateRight5, 24) + (i20 ^ i19);
            char c9 = c5;
            int iRotateRight7 = iRotateRight5 ^ Integers.rotateRight(iRotateRight6, 16);
            int i21 = iRotateRight6 ^ i19;
            int i22 = iArr2[1];
            int iRotateRight8 = Integers.rotateRight(i18, 31) + i5;
            int iRotateRight9 = i18 ^ Integers.rotateRight(iRotateRight8, 24);
            int iRotateRight10 = Integers.rotateRight(iRotateRight9, 17) + (iRotateRight8 ^ i22);
            int iRotateRight11 = iRotateRight9 ^ Integers.rotateRight(iRotateRight10, 17);
            int i23 = (iRotateRight10 ^ i22) + iRotateRight11;
            int iRotateRight12 = iRotateRight11 ^ Integers.rotateRight(i23, 31);
            int iRotateRight13 = Integers.rotateRight(iRotateRight12, 24) + (i23 ^ i22);
            int iRotateRight14 = iRotateRight12 ^ Integers.rotateRight(iRotateRight13, 16);
            int i24 = iRotateRight13 ^ i22;
            int i25 = iArr2[2];
            int iRotateRight15 = Integers.rotateRight(i8, 31) + i7;
            int iRotateRight16 = i8 ^ Integers.rotateRight(iRotateRight15, 24);
            int iRotateRight17 = Integers.rotateRight(iRotateRight16, 17) + (iRotateRight15 ^ i25);
            int iRotateRight18 = iRotateRight16 ^ Integers.rotateRight(iRotateRight17, 17);
            int i26 = (iRotateRight17 ^ i25) + iRotateRight18;
            int iRotateRight19 = iRotateRight18 ^ Integers.rotateRight(i26, 31);
            int iRotateRight20 = Integers.rotateRight(iRotateRight19, 24) + (i26 ^ i25);
            int iRotateRight21 = iRotateRight19 ^ Integers.rotateRight(iRotateRight20, 16);
            int i27 = iRotateRight20 ^ i25;
            int i28 = iArr2[3];
            int iRotateRight22 = Integers.rotateRight(i10, 31) + i9;
            int iRotateRight23 = i10 ^ Integers.rotateRight(iRotateRight22, 24);
            int iRotateRight24 = Integers.rotateRight(iRotateRight23, 17) + (iRotateRight22 ^ i28);
            int iRotateRight25 = iRotateRight23 ^ Integers.rotateRight(iRotateRight24, 17);
            int i29 = (iRotateRight24 ^ i28) + iRotateRight25;
            int iRotateRight26 = iRotateRight25 ^ Integers.rotateRight(i29, 31);
            int iRotateRight27 = Integers.rotateRight(iRotateRight26, 24) + (i29 ^ i28);
            int iRotateRight28 = iRotateRight26 ^ Integers.rotateRight(iRotateRight27, 16);
            int i30 = iRotateRight27 ^ i28;
            int i31 = iArr2[c6];
            int iRotateRight29 = Integers.rotateRight(i16, 31) + i11;
            int iRotateRight30 = i16 ^ Integers.rotateRight(iRotateRight29, 24);
            int iRotateRight31 = Integers.rotateRight(iRotateRight30, 17) + (iRotateRight29 ^ i31);
            int iRotateRight32 = iRotateRight30 ^ Integers.rotateRight(iRotateRight31, 17);
            int i32 = (iRotateRight31 ^ i31) + iRotateRight32;
            int iRotateRight33 = iRotateRight32 ^ Integers.rotateRight(i32, 31);
            int iRotateRight34 = Integers.rotateRight(iRotateRight33, 24) + (i32 ^ i31);
            int iRotateRight35 = iRotateRight33 ^ Integers.rotateRight(iRotateRight34, 16);
            int i33 = iRotateRight34 ^ i31;
            int i34 = iArr2[c7];
            int iRotateRight36 = Integers.rotateRight(i14, 31) + i13;
            int iRotateRight37 = i14 ^ Integers.rotateRight(iRotateRight36, 24);
            int iRotateRight38 = Integers.rotateRight(iRotateRight37, 17) + (iRotateRight36 ^ i34);
            int iRotateRight39 = iRotateRight37 ^ Integers.rotateRight(iRotateRight38, 17);
            int i35 = (iRotateRight38 ^ i34) + iRotateRight39;
            int iRotateRight40 = iRotateRight39 ^ Integers.rotateRight(i35, 31);
            int iRotateRight41 = Integers.rotateRight(iRotateRight40, 24) + (i35 ^ i34);
            int iRotateRight42 = iRotateRight40 ^ Integers.rotateRight(iRotateRight41, 16);
            int i36 = iRotateRight41 ^ i34;
            int iELL = ELL((i21 ^ i24) ^ i27);
            int iELL2 = ELL((iRotateRight7 ^ iRotateRight14) ^ iRotateRight21);
            int i37 = (i33 ^ i24) ^ iELL2;
            int i38 = (iRotateRight35 ^ iRotateRight14) ^ iELL;
            int i39 = (iRotateRight42 ^ iRotateRight21) ^ iELL;
            int i40 = iELL ^ (iRotateRight28 ^ iRotateRight7);
            i15++;
            i10 = iRotateRight7;
            i11 = i24;
            i5 = (i36 ^ i27) ^ iELL2;
            i13 = i27;
            i7 = (i30 ^ i21) ^ iELL2;
            c2 = c6;
            c5 = c9;
            i4 = i38;
            i9 = i21;
            i16 = iRotateRight14;
            i3 = i37;
            c4 = c8;
            i6 = i39;
            i14 = iRotateRight21;
            i8 = i40;
            c3 = c7;
        }
        iArr[0] = i3;
        iArr[1] = i4;
        iArr[2] = i5;
        iArr[3] = i6;
        iArr[c2] = i7;
        iArr[c3] = i8;
        iArr[c4] = i9;
        iArr[c5] = i10;
        iArr[8] = i11;
        iArr[9] = i16;
        iArr[10] = i13;
        iArr[11] = i14;
    }

    public static void sparkle_opt16(int[] iArr, int i2) {
        int i3 = iArr[0];
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = iArr[3];
        int i7 = iArr[4];
        int i8 = iArr[5];
        char c2 = 6;
        int i9 = iArr[6];
        char c3 = 7;
        int i10 = iArr[7];
        int i11 = iArr[8];
        int i12 = iArr[9];
        int i13 = iArr[10];
        int i14 = iArr[11];
        int i15 = iArr[12];
        int i16 = iArr[13];
        int i17 = iArr[14];
        int i18 = i14;
        int i19 = i16;
        int i20 = iArr[15];
        int i21 = 0;
        int i22 = i12;
        while (i21 < i2) {
            int[] iArr2 = RCON;
            int i23 = i4 ^ iArr2[i21 & 7];
            int i24 = i6 ^ i21;
            int i25 = iArr2[0];
            char c4 = c2;
            int iRotateRight = Integers.rotateRight(i23, 31) + i3;
            char c5 = c3;
            int iRotateRight2 = i23 ^ Integers.rotateRight(iRotateRight, 24);
            int iRotateRight3 = Integers.rotateRight(iRotateRight2, 17) + (iRotateRight ^ i25);
            int iRotateRight4 = iRotateRight2 ^ Integers.rotateRight(iRotateRight3, 17);
            int i26 = (iRotateRight3 ^ i25) + iRotateRight4;
            int iRotateRight5 = iRotateRight4 ^ Integers.rotateRight(i26, 31);
            int iRotateRight6 = Integers.rotateRight(iRotateRight5, 24) + (i26 ^ i25);
            int iRotateRight7 = iRotateRight5 ^ Integers.rotateRight(iRotateRight6, 16);
            int i27 = iRotateRight6 ^ i25;
            int i28 = iArr2[1];
            int iRotateRight8 = Integers.rotateRight(i24, 31) + i5;
            int iRotateRight9 = i24 ^ Integers.rotateRight(iRotateRight8, 24);
            int iRotateRight10 = Integers.rotateRight(iRotateRight9, 17) + (iRotateRight8 ^ i28);
            int iRotateRight11 = iRotateRight9 ^ Integers.rotateRight(iRotateRight10, 17);
            int i29 = (iRotateRight10 ^ i28) + iRotateRight11;
            int iRotateRight12 = iRotateRight11 ^ Integers.rotateRight(i29, 31);
            int iRotateRight13 = Integers.rotateRight(iRotateRight12, 24) + (i29 ^ i28);
            int iRotateRight14 = iRotateRight12 ^ Integers.rotateRight(iRotateRight13, 16);
            int i30 = iRotateRight13 ^ i28;
            int i31 = iArr2[2];
            int iRotateRight15 = Integers.rotateRight(i8, 31) + i7;
            int iRotateRight16 = i8 ^ Integers.rotateRight(iRotateRight15, 24);
            int iRotateRight17 = Integers.rotateRight(iRotateRight16, 17) + (iRotateRight15 ^ i31);
            int iRotateRight18 = iRotateRight16 ^ Integers.rotateRight(iRotateRight17, 17);
            int i32 = (iRotateRight17 ^ i31) + iRotateRight18;
            int iRotateRight19 = iRotateRight18 ^ Integers.rotateRight(i32, 31);
            int iRotateRight20 = Integers.rotateRight(iRotateRight19, 24) + (i32 ^ i31);
            int iRotateRight21 = iRotateRight19 ^ Integers.rotateRight(iRotateRight20, 16);
            int i33 = iRotateRight20 ^ i31;
            int i34 = iArr2[3];
            int iRotateRight22 = Integers.rotateRight(i10, 31) + i9;
            int iRotateRight23 = i10 ^ Integers.rotateRight(iRotateRight22, 24);
            int iRotateRight24 = Integers.rotateRight(iRotateRight23, 17) + (iRotateRight22 ^ i34);
            int iRotateRight25 = iRotateRight23 ^ Integers.rotateRight(iRotateRight24, 17);
            int i35 = (iRotateRight24 ^ i34) + iRotateRight25;
            int iRotateRight26 = iRotateRight25 ^ Integers.rotateRight(i35, 31);
            int iRotateRight27 = Integers.rotateRight(iRotateRight26, 24) + (i35 ^ i34);
            int iRotateRight28 = iRotateRight26 ^ Integers.rotateRight(iRotateRight27, 16);
            int i36 = i34 ^ iRotateRight27;
            int i37 = iArr2[4];
            int iRotateRight29 = Integers.rotateRight(i22, 31) + i11;
            int iRotateRight30 = i22 ^ Integers.rotateRight(iRotateRight29, 24);
            int iRotateRight31 = Integers.rotateRight(iRotateRight30, 17) + (iRotateRight29 ^ i37);
            int iRotateRight32 = iRotateRight30 ^ Integers.rotateRight(iRotateRight31, 17);
            int i38 = (iRotateRight31 ^ i37) + iRotateRight32;
            int iRotateRight33 = iRotateRight32 ^ Integers.rotateRight(i38, 31);
            int iRotateRight34 = Integers.rotateRight(iRotateRight33, 24) + (i38 ^ i37);
            int iRotateRight35 = iRotateRight33 ^ Integers.rotateRight(iRotateRight34, 16);
            int i39 = iRotateRight34 ^ i37;
            int i40 = iArr2[5];
            int iRotateRight36 = Integers.rotateRight(i18, 31) + i13;
            int iRotateRight37 = i18 ^ Integers.rotateRight(iRotateRight36, 24);
            int iRotateRight38 = Integers.rotateRight(iRotateRight37, 17) + (iRotateRight36 ^ i40);
            int iRotateRight39 = iRotateRight37 ^ Integers.rotateRight(iRotateRight38, 17);
            int i41 = (iRotateRight38 ^ i40) + iRotateRight39;
            int iRotateRight40 = iRotateRight39 ^ Integers.rotateRight(i41, 31);
            int iRotateRight41 = Integers.rotateRight(iRotateRight40, 24) + (i41 ^ i40);
            int iRotateRight42 = iRotateRight40 ^ Integers.rotateRight(iRotateRight41, 16);
            int i42 = iRotateRight41 ^ i40;
            int i43 = iArr2[c4];
            int iRotateRight43 = Integers.rotateRight(i19, 31) + i15;
            int iRotateRight44 = i19 ^ Integers.rotateRight(iRotateRight43, 24);
            int iRotateRight45 = Integers.rotateRight(iRotateRight44, 17) + (iRotateRight43 ^ i43);
            int iRotateRight46 = iRotateRight44 ^ Integers.rotateRight(iRotateRight45, 17);
            int i44 = (iRotateRight45 ^ i43) + iRotateRight46;
            int iRotateRight47 = iRotateRight46 ^ Integers.rotateRight(i44, 31);
            int iRotateRight48 = Integers.rotateRight(iRotateRight47, 24) + (i44 ^ i43);
            int iRotateRight49 = iRotateRight47 ^ Integers.rotateRight(iRotateRight48, 16);
            int i45 = iRotateRight48 ^ i43;
            int i46 = iArr2[c5];
            int iRotateRight50 = Integers.rotateRight(i20, 31) + i17;
            int iRotateRight51 = i20 ^ Integers.rotateRight(iRotateRight50, 24);
            int iRotateRight52 = Integers.rotateRight(iRotateRight51, 17) + (iRotateRight50 ^ i46);
            int iRotateRight53 = iRotateRight51 ^ Integers.rotateRight(iRotateRight52, 17);
            int i47 = (iRotateRight52 ^ i46) + iRotateRight53;
            int iRotateRight54 = iRotateRight53 ^ Integers.rotateRight(i47, 31);
            int iRotateRight55 = Integers.rotateRight(iRotateRight54, 24) + (i47 ^ i46);
            int iRotateRight56 = iRotateRight54 ^ Integers.rotateRight(iRotateRight55, 16);
            int i48 = iRotateRight55 ^ i46;
            int iELL = ELL(((i27 ^ i30) ^ i33) ^ i36);
            int iELL2 = ELL(((iRotateRight7 ^ iRotateRight14) ^ iRotateRight21) ^ iRotateRight28);
            int i49 = iRotateRight14 ^ iRotateRight42;
            int i50 = (i42 ^ i30) ^ iELL2;
            int i51 = (i45 ^ i33) ^ iELL2;
            int i52 = (iRotateRight21 ^ iRotateRight49) ^ iELL;
            int i53 = (i48 ^ i36) ^ iELL2;
            int i54 = (i27 ^ i39) ^ iELL2;
            i10 = (iRotateRight7 ^ iRotateRight35) ^ iELL;
            i21++;
            i8 = (iRotateRight56 ^ iRotateRight28) ^ iELL;
            i22 = iRotateRight7;
            i4 = i49 ^ iELL;
            i13 = i30;
            i5 = i51;
            i19 = iRotateRight21;
            i9 = i54;
            i3 = i50;
            i18 = iRotateRight14;
            i17 = i36;
            i6 = i52;
            c2 = c4;
            i11 = i27;
            i15 = i33;
            i7 = i53;
            i20 = iRotateRight28;
            c3 = c5;
        }
        iArr[0] = i3;
        iArr[1] = i4;
        iArr[2] = i5;
        iArr[3] = i6;
        iArr[4] = i7;
        iArr[5] = i8;
        iArr[c2] = i9;
        iArr[c3] = i10;
        iArr[8] = i11;
        iArr[9] = i22;
        iArr[10] = i13;
        iArr[11] = i18;
        iArr[12] = i15;
        iArr[13] = i19;
        iArr[14] = i17;
        iArr[15] = i20;
    }

    public static void sparkle_opt8(int[] iArr, int i2) {
        int i3 = iArr[0];
        int i4 = iArr[1];
        char c2 = 2;
        int i5 = iArr[2];
        char c3 = 3;
        int i6 = iArr[3];
        char c4 = 4;
        int i7 = iArr[4];
        char c5 = 5;
        int i8 = iArr[5];
        int i9 = iArr[6];
        int i10 = iArr[7];
        int i11 = 0;
        while (i11 < i2) {
            int[] iArr2 = RCON;
            int i12 = i4 ^ iArr2[i11 & 7];
            int i13 = i6 ^ i11;
            int i14 = iArr2[0];
            char c6 = c2;
            int iRotateRight = Integers.rotateRight(i12, 31) + i3;
            char c7 = c3;
            int iRotateRight2 = i12 ^ Integers.rotateRight(iRotateRight, 24);
            char c8 = c4;
            int iRotateRight3 = Integers.rotateRight(iRotateRight2, 17) + (iRotateRight ^ i14);
            int iRotateRight4 = iRotateRight2 ^ Integers.rotateRight(iRotateRight3, 17);
            int i15 = (iRotateRight3 ^ i14) + iRotateRight4;
            int iRotateRight5 = iRotateRight4 ^ Integers.rotateRight(i15, 31);
            int iRotateRight6 = Integers.rotateRight(iRotateRight5, 24) + (i15 ^ i14);
            char c9 = c5;
            int iRotateRight7 = iRotateRight5 ^ Integers.rotateRight(iRotateRight6, 16);
            int i16 = iRotateRight6 ^ i14;
            int i17 = iArr2[1];
            int iRotateRight8 = Integers.rotateRight(i13, 31) + i5;
            int iRotateRight9 = i13 ^ Integers.rotateRight(iRotateRight8, 24);
            int iRotateRight10 = Integers.rotateRight(iRotateRight9, 17) + (iRotateRight8 ^ i17);
            int iRotateRight11 = iRotateRight9 ^ Integers.rotateRight(iRotateRight10, 17);
            int i18 = (iRotateRight10 ^ i17) + iRotateRight11;
            int iRotateRight12 = iRotateRight11 ^ Integers.rotateRight(i18, 31);
            int iRotateRight13 = Integers.rotateRight(iRotateRight12, 24) + (i18 ^ i17);
            int iRotateRight14 = iRotateRight12 ^ Integers.rotateRight(iRotateRight13, 16);
            int i19 = iRotateRight13 ^ i17;
            int i20 = iArr2[c6];
            int iRotateRight15 = Integers.rotateRight(i8, 31) + i7;
            int iRotateRight16 = i8 ^ Integers.rotateRight(iRotateRight15, 24);
            int iRotateRight17 = Integers.rotateRight(iRotateRight16, 17) + (iRotateRight15 ^ i20);
            int iRotateRight18 = iRotateRight16 ^ Integers.rotateRight(iRotateRight17, 17);
            int i21 = (iRotateRight17 ^ i20) + iRotateRight18;
            int iRotateRight19 = iRotateRight18 ^ Integers.rotateRight(i21, 31);
            int iRotateRight20 = Integers.rotateRight(iRotateRight19, 24) + (i21 ^ i20);
            int iRotateRight21 = iRotateRight19 ^ Integers.rotateRight(iRotateRight20, 16);
            int i22 = iArr2[c7];
            int iRotateRight22 = Integers.rotateRight(i10, 31) + i9;
            int iRotateRight23 = i10 ^ Integers.rotateRight(iRotateRight22, 24);
            int iRotateRight24 = Integers.rotateRight(iRotateRight23, 17) + (iRotateRight22 ^ i22);
            int iRotateRight25 = Integers.rotateRight(iRotateRight24, 17) ^ iRotateRight23;
            int i23 = (iRotateRight24 ^ i22) + iRotateRight25;
            int iRotateRight26 = Integers.rotateRight(i23, 31) ^ iRotateRight25;
            int iRotateRight27 = Integers.rotateRight(iRotateRight26, 24) + (i23 ^ i22);
            int iRotateRight28 = iRotateRight26 ^ Integers.rotateRight(iRotateRight27, 16);
            int iELL = ELL(i16 ^ i19);
            int iELL2 = ELL(iRotateRight7 ^ iRotateRight14);
            int i24 = ((iRotateRight27 ^ i22) ^ i19) ^ iELL2;
            int i25 = (iRotateRight28 ^ iRotateRight14) ^ iELL;
            int i26 = iELL ^ (iRotateRight21 ^ iRotateRight7);
            i11++;
            i8 = iRotateRight7;
            i4 = i25;
            i9 = i19;
            i10 = iRotateRight14;
            i6 = i26;
            i5 = ((iRotateRight20 ^ i20) ^ i16) ^ iELL2;
            c2 = c6;
            c4 = c8;
            c5 = c9;
            i7 = i16;
            i3 = i24;
            c3 = c7;
        }
        iArr[0] = i3;
        iArr[1] = i4;
        iArr[c2] = i5;
        iArr[c3] = i6;
        iArr[c4] = i7;
        iArr[c5] = i8;
        iArr[6] = i9;
        iArr[7] = i10;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i2) throws InvalidCipherTextException, IllegalStateException {
        int i3;
        int i4;
        boolean zCheckData = checkData();
        int i5 = this.m_bufPos;
        int i6 = this.TAG_BYTES;
        if (zCheckData) {
            i3 = i5 + i6;
        } else {
            if (i5 < i6) {
                az.x("data too short");
                return 0;
            }
            i3 = i5 - i6;
            this.m_bufPos = i3;
        }
        if (i2 > bArr.length - i3) {
            mt.n("output buffer too short");
            return 0;
        }
        if (this.encrypted || this.m_bufPos > 0) {
            int[] iArr = this.state;
            int i7 = this.STATE_WORDS - 1;
            iArr[i7] = iArr[i7] ^ (this.m_bufPos < this.RATE_BYTES ? this._M2 : this._M3);
            int[] iArr2 = new int[this.RATE_WORDS];
            int i8 = 0;
            while (true) {
                i4 = this.m_bufPos;
                if (i8 >= i4) {
                    break;
                }
                int i9 = i8 >>> 2;
                iArr2[i9] = iArr2[i9] | ((this.m_buf[i8] & 255) << ((i8 & 3) << 3));
                i8++;
            }
            if (i4 < this.RATE_BYTES) {
                if (!zCheckData) {
                    int i10 = (i4 & 3) << 3;
                    int i11 = i4 >>> 2;
                    int i12 = iArr2[i11];
                    int[] iArr3 = this.state;
                    iArr2[i11] = ((iArr3[i4 >>> 2] >>> i10) << i10) | i12;
                    int i13 = (i4 >>> 2) + 1;
                    System.arraycopy(iArr3, i13, iArr2, i13, this.RATE_WORDS - i13);
                }
                int i14 = this.m_bufPos;
                int i15 = i14 >>> 2;
                iArr2[i15] = (128 << ((i14 & 3) << 3)) ^ iArr2[i15];
            }
            int i16 = 0;
            while (true) {
                int i17 = this.RATE_WORDS;
                if (i16 >= i17 / 2) {
                    break;
                }
                int i18 = (i17 / 2) + i16;
                int[] iArr4 = this.state;
                int i19 = iArr4[i16];
                int i20 = iArr4[i18];
                if (zCheckData) {
                    iArr4[i16] = (iArr2[i16] ^ i20) ^ iArr4[i17 + i16];
                    iArr4[i18] = iArr4[i17 + (this.CAP_MASK & i18)] ^ ((i19 ^ i20) ^ iArr2[i18]);
                } else {
                    iArr4[i16] = ((i19 ^ i20) ^ iArr2[i16]) ^ iArr4[i17 + i16];
                    iArr4[i18] = iArr4[i17 + (this.CAP_MASK & i18)] ^ (iArr2[i18] ^ i19);
                }
                iArr2[i16] = iArr2[i16] ^ i19;
                iArr2[i18] = iArr2[i18] ^ i20;
                i16++;
            }
            int i21 = 0;
            while (i21 < this.m_bufPos) {
                bArr[i2] = (byte) (iArr2[i21 >>> 2] >>> ((i21 & 3) << 3));
                i21++;
                i2++;
            }
            sparkle_opt(this.state, this.SPARKLE_STEPS_BIG);
        }
        for (int i22 = 0; i22 < this.KEY_WORDS; i22++) {
            int[] iArr5 = this.state;
            int i23 = this.RATE_WORDS + i22;
            iArr5[i23] = iArr5[i23] ^ this.f77618k[i22];
        }
        byte[] bArr2 = new byte[this.TAG_BYTES];
        this.tag = bArr2;
        Pack.intToLittleEndian(this.state, this.RATE_WORDS, this.TAG_WORDS, bArr2, 0);
        if (zCheckData) {
            System.arraycopy(this.tag, 0, bArr, i2, this.TAG_BYTES);
        } else if (!Arrays.constantTimeAreEqual(this.TAG_BYTES, this.tag, 0, this.m_buf, this.m_bufPos)) {
            throw new InvalidCipherTextException(n00.r(this.algorithmName, " mac does not match", new StringBuilder()));
        }
        reset(!zCheckData);
        return i3;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    public int getIVBytesSize() {
        return this.RATE_BYTES;
    }

    public int getKeyBytesSize() {
        return this.KEY_BYTES;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.tag;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i2) {
        int iMax = Math.max(0, i2);
        switch (AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[this.m_state.ordinal()]) {
            case 1:
            case 2:
                break;
            case 3:
            case 4:
                iMax += this.m_bufPos;
                break;
            case 5:
            case 6:
                iMax += this.m_bufPos;
            default:
                return iMax + this.TAG_BYTES;
        }
        return Math.max(0, iMax - this.TAG_BYTES);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0011. Please report as an issue. */
    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i2) {
        int i3;
        int iMax = Math.max(0, i2) - 1;
        switch (AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[this.m_state.ordinal()]) {
            case 3:
            case 4:
                iMax += this.m_bufPos;
            case 1:
            case 2:
                i3 = iMax - this.TAG_BYTES;
                iMax = Math.max(0, i3);
                break;
            case 5:
            case 6:
                i3 = iMax + this.m_bufPos;
                iMax = Math.max(0, i3);
                break;
        }
        return iMax - (iMax % this.RATE_BYTES);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        KeyParameter key;
        byte[] iv;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            key = aEADParameters.getKey();
            iv = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize != this.TAG_BYTES * 8) {
                md.n(pq0.k(macSize, "Invalid value for MAC size: "));
                return;
            }
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                md.n("invalid parameters passed to Sparkle");
                return;
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            CipherParameters parameters = parametersWithIV.getParameters();
            key = parameters instanceof KeyParameter ? (KeyParameter) parameters : null;
            iv = parametersWithIV.getIV();
            this.initialAssociatedText = null;
        }
        if (key == null) {
            md.n("Sparkle init parameters must include a key");
            return;
        }
        int i2 = this.KEY_WORDS * 4;
        if (i2 != key.getKeyLength()) {
            ct0.f(this.algorithmName, " bytes of key", i2);
            return;
        }
        int i3 = this.RATE_WORDS * 4;
        if (iv == null || i3 != iv.length) {
            ct0.f(this.algorithmName, " bytes of IV", i3);
            return;
        }
        Pack.littleEndianToInt(key.getKey(), 0, this.f77618k);
        Pack.littleEndianToInt(iv, 0, this.npub);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z)));
        this.m_state = z ? State.EncInit : State.DecInit;
        reset();
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b2) {
        checkAAD();
        if (this.m_bufPos == this.RATE_BYTES) {
            processBufferAAD(this.m_buf, 0);
            this.m_bufPos = 0;
        }
        byte[] bArr = this.m_buf;
        int i2 = this.m_bufPos;
        this.m_bufPos = i2 + 1;
        bArr[i2] = b2;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i2, int i3) {
        if (i2 > bArr.length - i3) {
            b21.q("input buffer too short");
            return;
        }
        if (i3 <= 0) {
            return;
        }
        checkAAD();
        int i4 = this.m_bufPos;
        if (i4 > 0) {
            int i5 = this.RATE_BYTES - i4;
            byte[] bArr2 = this.m_buf;
            if (i3 <= i5) {
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
        while (i3 > this.RATE_BYTES) {
            processBufferAAD(bArr, i2);
            int i6 = this.RATE_BYTES;
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
        int i6;
        if (i2 > bArr.length - i3) {
            b21.q("input buffer too short");
            return 0;
        }
        if (checkData()) {
            int i7 = this.m_bufPos;
            if (i7 > 0) {
                int i8 = this.RATE_BYTES - i7;
                byte[] bArr3 = this.m_buf;
                if (i3 <= i8) {
                    System.arraycopy(bArr, i2, bArr3, i7, i3);
                    this.m_bufPos += i3;
                    return 0;
                }
                System.arraycopy(bArr, i2, bArr3, i7, i8);
                i2 += i8;
                i3 -= i8;
                processBufferEncrypt(this.m_buf, 0, bArr2, i4);
                i6 = this.RATE_BYTES;
            } else {
                i6 = 0;
            }
            while (i3 > this.RATE_BYTES) {
                processBufferEncrypt(bArr, i2, bArr2, i4 + i6);
                int i9 = this.RATE_BYTES;
                i2 += i9;
                i3 -= i9;
                i6 += i9;
            }
        } else {
            int i10 = this.m_bufferSizeDecrypt;
            int i11 = this.m_bufPos;
            int i12 = i10 - i11;
            if (i3 <= i12) {
                System.arraycopy(bArr, i2, this.m_buf, i11, i3);
                this.m_bufPos += i3;
                return 0;
            }
            if (i11 > this.RATE_BYTES) {
                processBufferDecrypt(this.m_buf, 0, bArr2, i4);
                int i13 = this.m_bufPos;
                int i14 = this.RATE_BYTES;
                int i15 = i13 - i14;
                this.m_bufPos = i15;
                byte[] bArr4 = this.m_buf;
                System.arraycopy(bArr4, i14, bArr4, 0, i15);
                i5 = this.RATE_BYTES;
                if (i3 <= i12 + i5) {
                    System.arraycopy(bArr, i2, this.m_buf, this.m_bufPos, i3);
                    this.m_bufPos += i3;
                    return i5;
                }
            } else {
                i5 = 0;
            }
            int i16 = this.RATE_BYTES;
            int i17 = this.m_bufPos;
            int i18 = i16 - i17;
            System.arraycopy(bArr, i2, this.m_buf, i17, i18);
            i2 += i18;
            i3 -= i18;
            processBufferDecrypt(this.m_buf, 0, bArr2, i4 + i5);
            i6 = i5 + this.RATE_BYTES;
            while (i3 > this.m_bufferSizeDecrypt) {
                processBufferDecrypt(bArr, i2, bArr2, i4 + i6);
                int i19 = this.RATE_BYTES;
                i2 += i19;
                i3 -= i19;
                i6 += i19;
            }
        }
        System.arraycopy(bArr, i2, this.m_buf, 0, i3);
        this.m_bufPos = i3;
        return i6;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
    }

    public static void sparkle_opt12(SparkleDigest.Friend friend, int[] iArr, int i2) {
        if (friend != null) {
            sparkle_opt12(iArr, i2);
        } else {
            r81.d("This method is only for use by SparkleDigest");
        }
    }

    public static void sparkle_opt16(SparkleDigest.Friend friend, int[] iArr, int i2) {
        if (friend != null) {
            sparkle_opt16(iArr, i2);
        } else {
            r81.d("This method is only for use by SparkleDigest");
        }
    }
}
