package org.bouncycastle.crypto.modes;

import defpackage.az;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import defpackage.pq0;
import defpackage.r81;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.engines.ChaCha7539Engine;
import org.bouncycastle.crypto.macs.Poly1305;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class ChaCha20Poly1305 implements AEADCipher {
    private static final long AAD_LIMIT = -1;
    private static final int BUF_SIZE = 64;
    private static final long DATA_LIMIT = 274877906880L;
    private static final int KEY_SIZE = 32;
    private static final int MAC_SIZE = 16;
    private static final int NONCE_SIZE = 12;
    private static final byte[] ZEROES = new byte[15];
    private long aadCount;
    private final byte[] buf;
    private int bufPos;
    private final ChaCha7539Engine chacha20;
    private long dataCount;
    private byte[] initialAAD;
    private final byte[] key;
    private final byte[] mac;
    private final byte[] nonce;
    private final Mac poly1305;
    private int state;

    public static final class State {
        static final int DEC_AAD = 6;
        static final int DEC_DATA = 7;
        static final int DEC_FINAL = 8;
        static final int DEC_INIT = 5;
        static final int ENC_AAD = 2;
        static final int ENC_DATA = 3;
        static final int ENC_FINAL = 4;
        static final int ENC_INIT = 1;
        static final int UNINITIALIZED = 0;

        private State() {
        }
    }

    public ChaCha20Poly1305(Mac mac) {
        this.key = new byte[32];
        this.nonce = new byte[12];
        this.buf = new byte[80];
        this.mac = new byte[16];
        this.state = 0;
        if (mac == null) {
            r81.d("'poly1305' cannot be null");
            throw null;
        }
        if (16 != mac.getMacSize()) {
            md.n("'poly1305' must be a 128-bit MAC");
            throw null;
        }
        this.chacha20 = new ChaCha7539Engine();
        this.poly1305 = mac;
    }

    private void checkAAD() {
        int i2 = this.state;
        if (i2 == 1) {
            this.state = 2;
            return;
        }
        if (i2 != 2) {
            if (i2 == 4) {
                md.k("ChaCha20Poly1305 cannot be reused for encryption");
            } else if (i2 == 5) {
                this.state = 6;
            } else {
                if (i2 == 6) {
                    return;
                }
                r81.b();
            }
        }
    }

    private void checkData() {
        switch (this.state) {
            case 1:
            case 2:
                finishAAD(3);
                break;
            case 3:
            case 7:
                break;
            case 4:
                md.k("ChaCha20Poly1305 cannot be reused for encryption");
                break;
            case 5:
            case 6:
                finishAAD(7);
                break;
            default:
                r81.b();
                break;
        }
    }

    private void finishAAD(int i2) {
        padMAC(this.aadCount);
        this.state = i2;
    }

    private void finishData(int i2) {
        padMAC(this.dataCount);
        byte[] bArr = new byte[16];
        Pack.longToLittleEndian(this.aadCount, bArr, 0);
        Pack.longToLittleEndian(this.dataCount, bArr, 8);
        this.poly1305.update(bArr, 0, 16);
        this.poly1305.doFinal(this.mac, 0);
        this.state = i2;
    }

    private long incrementCount(long j2, int i2, long j3) {
        long j4 = i2;
        if (j2 - Long.MIN_VALUE <= (j3 - j4) - Long.MIN_VALUE) {
            return j2 + j4;
        }
        md.k("Limit exceeded");
        return 0L;
    }

    private void initMAC() {
        byte[] bArr = new byte[64];
        try {
            this.chacha20.processBytes(bArr, 0, 64, bArr, 0);
            this.poly1305.init(new KeyParameter(bArr, 0, 32));
        } finally {
            Arrays.clear(bArr);
        }
    }

    private void padMAC(long j2) {
        int i2 = ((int) j2) & 15;
        if (i2 != 0) {
            this.poly1305.update(ZEROES, 0, 16 - i2);
        }
    }

    private void processData(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        if (i4 > bArr2.length - i3) {
            mt.n("Output buffer too short");
        } else {
            this.chacha20.processBytes(bArr, i2, i3, bArr2, i4);
            this.dataCount = incrementCount(this.dataCount, i3, DATA_LIMIT);
        }
    }

    private void reset(boolean z, boolean z2) {
        Arrays.clear(this.buf);
        if (z) {
            Arrays.clear(this.mac);
        }
        this.aadCount = 0L;
        this.dataCount = 0L;
        this.bufPos = 0;
        switch (this.state) {
            case 1:
            case 5:
                break;
            case 2:
            case 3:
            case 4:
                this.state = 4;
                return;
            case 6:
            case 7:
            case 8:
                this.state = 5;
                break;
            default:
                r81.b();
                return;
        }
        if (z2) {
            this.chacha20.reset();
        }
        initMAC();
        byte[] bArr = this.initialAAD;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i2) throws InvalidCipherTextException, IllegalStateException {
        int i3;
        int i4;
        if (bArr == null) {
            r81.d("'out' cannot be null");
            return 0;
        }
        if (i2 < 0) {
            md.n("'outOff' cannot be negative");
            return 0;
        }
        checkData();
        Arrays.clear(this.mac);
        int i5 = this.state;
        if (i5 == 3) {
            int i6 = this.bufPos;
            int i7 = i6 + 16;
            if (i2 > bArr.length - i7) {
                mt.n("Output buffer too short");
                return 0;
            }
            if (i6 > 0) {
                processData(this.buf, 0, i6, bArr, i2);
                this.poly1305.update(bArr, i2, this.bufPos);
            }
            finishData(4);
            System.arraycopy(this.mac, 0, bArr, this.bufPos + i2, 16);
            i3 = i7;
        } else {
            if (i5 != 7) {
                r81.b();
                return 0;
            }
            int i8 = this.bufPos;
            if (i8 < 16) {
                az.x("data too short");
                return 0;
            }
            int i9 = i8 - 16;
            if (i2 > bArr.length - i9) {
                mt.n("Output buffer too short");
                return 0;
            }
            if (i9 > 0) {
                this.poly1305.update(this.buf, 0, i9);
                i4 = i9;
                processData(this.buf, 0, i4, bArr, i2);
            } else {
                i4 = i9;
            }
            finishData(8);
            if (!Arrays.constantTimeAreEqual(16, this.mac, 0, this.buf, i4)) {
                az.x("mac check in ChaCha20Poly1305 failed");
                return 0;
            }
            i3 = i4;
        }
        reset(false, true);
        return i3;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return "ChaCha20Poly1305";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return Arrays.clone(this.mac);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i2) {
        int iMax = Math.max(0, i2) + this.bufPos;
        int i3 = this.state;
        if (i3 == 1 || i3 == 2 || i3 == 3) {
            return iMax + 16;
        }
        if (i3 == 5 || i3 == 6 || i3 == 7) {
            return Math.max(0, iMax - 16);
        }
        r81.b();
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i2) {
        int iMax = Math.max(0, i2) + this.bufPos;
        int i3 = this.state;
        if (i3 != 1 && i3 != 2 && i3 != 3) {
            if (i3 != 5 && i3 != 6 && i3 != 7) {
                r81.b();
                return 0;
            }
            iMax = Math.max(0, iMax - 16);
        }
        return iMax - (iMax % 64);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        ParametersWithIV parametersWithIV;
        KeyParameter key;
        byte[] iv;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            int macSize = aEADParameters.getMacSize();
            if (128 != macSize) {
                md.n(pq0.k(macSize, "Invalid value for MAC size: "));
                return;
            }
            key = aEADParameters.getKey();
            iv = aEADParameters.getNonce();
            parametersWithIV = new ParametersWithIV(key, iv);
            this.initialAAD = aEADParameters.getAssociatedText();
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                md.n("invalid parameters passed to ChaCha20Poly1305");
                return;
            }
            parametersWithIV = (ParametersWithIV) cipherParameters;
            key = (KeyParameter) parametersWithIV.getParameters();
            iv = parametersWithIV.getIV();
            this.initialAAD = null;
        }
        if (key == null) {
            if (this.state == 0) {
                md.n("Key must be specified in initial init");
                return;
            }
        } else if (32 != key.getKeyLength()) {
            md.n("Key must be 256 bits");
            return;
        }
        if (iv == null || 12 != iv.length) {
            md.n("Nonce must be 96 bits");
            return;
        }
        if (this.state != 0 && z && Arrays.areEqual(this.nonce, iv) && (key == null || Arrays.areEqual(this.key, key.getKey()))) {
            md.n("cannot reuse nonce for ChaCha20Poly1305 encryption");
            return;
        }
        if (key != null) {
            key.copyTo(this.key, 0, 32);
        }
        System.arraycopy(iv, 0, this.nonce, 0, 12);
        this.chacha20.init(true, parametersWithIV);
        this.state = z ? 1 : 5;
        reset(true, false);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b2) {
        checkAAD();
        this.aadCount = incrementCount(this.aadCount, 1, -1L);
        this.poly1305.update(b2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            r81.d("'in' cannot be null");
            return;
        }
        if (i2 < 0) {
            md.n("'inOff' cannot be negative");
            return;
        }
        if (i3 < 0) {
            md.n("'len' cannot be negative");
            return;
        }
        if (i2 > bArr.length - i3) {
            b21.q("Input buffer too short");
            return;
        }
        checkAAD();
        if (i3 > 0) {
            this.aadCount = incrementCount(this.aadCount, i3, -1L);
            this.poly1305.update(bArr, i2, i3);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b2, byte[] bArr, int i2) throws DataLengthException {
        checkData();
        int i3 = this.state;
        if (i3 == 3) {
            byte[] bArr2 = this.buf;
            int i4 = this.bufPos;
            bArr2[i4] = b2;
            int i5 = i4 + 1;
            this.bufPos = i5;
            if (i5 != 64) {
                return 0;
            }
            processData(bArr2, 0, 64, bArr, i2);
            this.poly1305.update(bArr, i2, 64);
            this.bufPos = 0;
            return 64;
        }
        if (i3 != 7) {
            r81.b();
            return 0;
        }
        byte[] bArr3 = this.buf;
        int i6 = this.bufPos;
        bArr3[i6] = b2;
        int i7 = i6 + 1;
        this.bufPos = i7;
        if (i7 != bArr3.length) {
            return 0;
        }
        this.poly1305.update(bArr3, 0, 64);
        processData(this.buf, 0, 64, bArr, i2);
        byte[] bArr4 = this.buf;
        System.arraycopy(bArr4, 64, bArr4, 0, 16);
        this.bufPos = 16;
        return 64;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws DataLengthException {
        int i5;
        int i6;
        if (bArr == null) {
            r81.d("'in' cannot be null");
            return 0;
        }
        if (i2 < 0) {
            md.n("'inOff' cannot be negative");
            return 0;
        }
        if (i3 < 0) {
            md.n("'len' cannot be negative");
            return 0;
        }
        if (i2 > bArr.length - i3) {
            b21.q("Input buffer too short");
            return 0;
        }
        if (i4 < 0) {
            md.n("'outOff' cannot be negative");
            return 0;
        }
        checkData();
        int i7 = this.state;
        if (i7 != 3) {
            if (i7 != 7) {
                r81.b();
                return 0;
            }
            int i8 = 0;
            for (int i9 = 0; i9 < i3; i9++) {
                byte[] bArr3 = this.buf;
                int i10 = this.bufPos;
                bArr3[i10] = bArr[i2 + i9];
                int i11 = i10 + 1;
                this.bufPos = i11;
                if (i11 == bArr3.length) {
                    this.poly1305.update(bArr3, 0, 64);
                    processData(this.buf, 0, 64, bArr2, i4 + i8);
                    byte[] bArr4 = this.buf;
                    System.arraycopy(bArr4, 64, bArr4, 0, 16);
                    this.bufPos = 16;
                    i8 += 64;
                }
            }
            return i8;
        }
        if (this.bufPos == 0) {
            i5 = i2;
            i6 = 0;
            break;
        }
        while (true) {
            if (i3 <= 0) {
                i5 = i2;
                i6 = 0;
                break;
            }
            i3--;
            byte[] bArr5 = this.buf;
            int i12 = this.bufPos;
            int i13 = i2 + 1;
            bArr5[i12] = bArr[i2];
            int i14 = i12 + 1;
            this.bufPos = i14;
            if (i14 == 64) {
                processData(bArr5, 0, 64, bArr2, i4);
                this.poly1305.update(bArr2, i4, 64);
                this.bufPos = 0;
                i6 = 64;
                i5 = i13;
                break;
            }
            i2 = i13;
        }
        while (i3 >= 64) {
            int i15 = i4 + i6;
            processData(bArr, i5, 64, bArr2, i15);
            this.poly1305.update(bArr2, i15, 64);
            i5 += 64;
            i3 -= 64;
            i6 += 64;
        }
        if (i3 > 0) {
            System.arraycopy(bArr, i5, this.buf, 0, i3);
            this.bufPos = i3;
        }
        return i6;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true, true);
    }

    public ChaCha20Poly1305() {
        this(new Poly1305());
    }
}
