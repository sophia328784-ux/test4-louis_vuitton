package org.bouncycastle.crypto.engines;

import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Array;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* JADX INFO: loaded from: classes5.dex */
public class PhotonBeetleEngine implements AEADCipher {
    private byte[] A;
    private byte[] K;
    private final int LAST_THREE_BITS_OFFSET;
    private byte[] N;
    private final int RATE_INBYTES;
    private final int RATE_INBYTES_HALF;
    private final int STATE_INBYTES;
    private byte[] T;
    private boolean encrypted;
    private boolean forEncryption;
    private boolean initialised;
    private boolean input_empty;
    private byte[] state;
    private byte[][] state_2d;
    private final ByteArrayOutputStream aadData = new ByteArrayOutputStream();
    private final ByteArrayOutputStream message = new ByteArrayOutputStream();
    private final int CRYPTO_KEYBYTES = 16;
    private final int CRYPTO_NPUBBYTES = 16;
    private final int TAG_INBYTES = 16;
    private final int ROUND = 12;
    private final int D = 8;
    private final int Dq = 3;
    private final int Dr = 7;
    private final int DSquare = 64;
    private final int S = 4;
    private final int S_1 = 3;
    private final byte[][] RC = {new byte[]{1, 3, 7, 14, 13, 11, 6, 12, 9, 2, 5, 10}, new byte[]{0, 2, 6, 15, 12, 10, 7, 13, 8, 3, 4, 11}, new byte[]{2, 0, 4, 13, 14, 8, 5, 15, 10, 1, 6, 9}, new byte[]{6, 4, 0, 9, 10, 12, 1, 11, 14, 5, 2, 13}, new byte[]{14, 12, 8, 1, 2, 4, 9, 3, 6, 13, 10, 5}, new byte[]{15, 13, 9, 0, 3, 5, 8, 2, 7, 12, 11, 4}, new byte[]{13, 15, 11, 2, 1, 7, 10, 0, 5, 14, 9, 6}, new byte[]{9, 11, 15, 6, 5, 3, 14, 4, 1, 10, 13, 2}};
    private final byte[][] MixColMatrix = {new byte[]{2, 4, 2, 11, 2, 8, 5, 6}, new byte[]{12, 9, 8, 13, 7, 7, 5, 2}, new byte[]{4, 4, 13, 13, 9, 4, 13, 9}, new byte[]{1, 6, 5, 1, 12, 13, 15, 14}, new byte[]{15, 12, 9, 13, 14, 5, 14, 13}, new byte[]{9, 14, 5, 15, 4, 12, 9, 6}, new byte[]{12, 2, 2, 10, 3, 1, 1, 14}, new byte[]{15, 1, 13, 10, 5, 10, 2, 3}};
    private final byte[] sbox = {12, 5, 6, 11, 9, 0, 10, 13, 3, 14, 15, 8, 4, 7, 1, 2};

    /* JADX INFO: renamed from: org.bouncycastle.crypto.engines.PhotonBeetleEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters;

        static {
            int[] iArr = new int[PhotonBeetleParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters = iArr;
            try {
                iArr[PhotonBeetleParameters.pb32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters[PhotonBeetleParameters.pb128.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum PhotonBeetleParameters {
        pb32,
        pb128
    }

    public PhotonBeetleEngine(PhotonBeetleParameters photonBeetleParameters) {
        int i2;
        int i3;
        int i4 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters[photonBeetleParameters.ordinal()];
        if (i4 != 1) {
            i2 = i4 != 2 ? 0 : 128;
            i3 = i2;
        } else {
            i2 = 32;
            i3 = BERTags.FLAGS;
        }
        int i5 = i2 + 7;
        this.RATE_INBYTES = i5 >>> 3;
        this.RATE_INBYTES_HALF = i5 >>> 4;
        int i6 = i2 + i3;
        int i7 = (i6 + 7) >>> 3;
        this.STATE_INBYTES = i7;
        this.LAST_THREE_BITS_OFFSET = (i6 - ((i7 - 1) << 3)) - 3;
        this.initialised = false;
    }

    private void PHOTON_Permutation() {
        for (int i2 = 0; i2 < 64; i2++) {
            this.state_2d[i2 >>> 3][i2 & 7] = (byte) (((this.state[i2 >> 1] & 255) >>> ((i2 & 1) * 4)) & 15);
        }
        for (int i3 = 0; i3 < 12; i3++) {
            for (int i4 = 0; i4 < 8; i4++) {
                byte[] bArr = this.state_2d[i4];
                bArr[0] = (byte) (bArr[0] ^ this.RC[i4][i3]);
            }
            for (int i5 = 0; i5 < 8; i5++) {
                for (int i6 = 0; i6 < 8; i6++) {
                    byte[] bArr2 = this.state_2d[i5];
                    bArr2[i6] = this.sbox[bArr2[i6]];
                }
            }
            for (int i7 = 1; i7 < 8; i7++) {
                System.arraycopy(this.state_2d[i7], 0, this.state, 0, 8);
                int i8 = 8 - i7;
                System.arraycopy(this.state, i7, this.state_2d[i7], 0, i8);
                System.arraycopy(this.state, 0, this.state_2d[i7], i8, i7);
            }
            for (int i9 = 0; i9 < 8; i9++) {
                for (int i10 = 0; i10 < 8; i10++) {
                    byte b2 = 0;
                    for (int i11 = 0; i11 < 8; i11++) {
                        int i12 = this.MixColMatrix[i10][i11];
                        byte b3 = this.state_2d[i11][i9];
                        int i13 = 0;
                        for (int i14 = 0; i14 < 4; i14++) {
                            if (((b3 >>> i14) & 1) != 0) {
                                i13 ^= i12;
                            }
                            int i15 = (i12 >>> 3) & 1;
                            i12 <<= 1;
                            if (i15 != 0) {
                                i12 ^= 3;
                            }
                        }
                        b2 = (byte) (b2 ^ (i13 & 15));
                    }
                    this.state[i10] = b2;
                }
                for (int i16 = 0; i16 < 8; i16++) {
                    this.state_2d[i16][i9] = this.state[i16];
                }
            }
        }
        for (int i17 = 0; i17 < 64; i17 += 2) {
            byte[] bArr3 = this.state_2d[i17 >>> 3];
            this.state[i17 >>> 1] = (byte) (((bArr3[(i17 + 1) & 7] & 15) << 4) | (bArr3[i17 & 7] & 15));
        }
    }

    private void XOR(byte[] bArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < i3) {
            byte[] bArr2 = this.state;
            bArr2[i4] = (byte) (bArr[i2] ^ bArr2[i4]);
            i4++;
            i2++;
        }
    }

    private void reset(boolean z) {
        if (z) {
            this.T = null;
        }
        this.input_empty = true;
        this.aadData.reset();
        this.message.reset();
        byte[] bArr = this.K;
        System.arraycopy(bArr, 0, this.state, 0, bArr.length);
        byte[] bArr2 = this.N;
        System.arraycopy(bArr2, 0, this.state, this.K.length, bArr2.length);
        this.encrypted = false;
    }

    private void rhoohr(byte[] bArr, int i2, byte[] bArr2, int i3, int i4) {
        int i5;
        byte[] bArr3;
        int i6 = 0;
        byte[] bArr4 = this.state_2d[0];
        int iMin = Math.min(i4, this.RATE_INBYTES_HALF);
        int i7 = 0;
        while (true) {
            i5 = this.RATE_INBYTES_HALF;
            int i8 = i5 - 1;
            bArr3 = this.state;
            if (i7 >= i8) {
                break;
            }
            int i9 = i7 + 1;
            bArr4[i7] = (byte) (((bArr3[i7] & 255) >>> 1) | ((bArr3[i9] & 1) << 7));
            i7 = i9;
        }
        bArr4[i5 - 1] = (byte) (((bArr3[i7] & 255) >>> 1) | ((bArr3[0] & 1) << 7));
        while (i6 < iMin) {
            bArr[i6 + i2] = (byte) (bArr2[i6 + i3] ^ this.state[this.RATE_INBYTES_HALF + i6]);
            i6++;
        }
        while (i6 < i4) {
            bArr[i6 + i2] = (byte) (bArr2[i6 + i3] ^ bArr4[i6 - this.RATE_INBYTES_HALF]);
            i6++;
        }
        if (this.forEncryption) {
            XOR(bArr2, i3, i4);
        } else {
            XOR(bArr, i3, i4);
        }
    }

    private byte select(boolean z, boolean z2, byte b2, byte b3) {
        if (z && z2) {
            return (byte) 1;
        }
        if (z) {
            return (byte) 2;
        }
        return z2 ? b2 : b3;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i2) throws InvalidCipherTextException, IllegalStateException {
        PhotonBeetleEngine photonBeetleEngine;
        byte[] bArr2;
        if (!this.initialised) {
            md.n("Need call init function before encryption/decryption");
            return 0;
        }
        int size = this.message.size();
        boolean z = this.forEncryption;
        int i3 = size - (z ? 0 : 16);
        if ((z && i3 + 16 + i2 > bArr.length) || (!z && i3 + i2 > bArr.length)) {
            mt.n("output buffer too short");
            return 0;
        }
        byte[] byteArray = this.message.toByteArray();
        byte[] byteArray2 = this.aadData.toByteArray();
        this.A = byteArray2;
        int length = byteArray2.length;
        if (length != 0 || i3 != 0) {
            this.input_empty = false;
        }
        byte bSelect = select(i3 != 0, length % this.RATE_INBYTES == 0, (byte) 3, (byte) 4);
        byte bSelect2 = select(length != 0, i3 % this.RATE_INBYTES == 0, (byte) 5, (byte) 6);
        if (length != 0) {
            int i4 = this.RATE_INBYTES;
            int i5 = ((length + i4) - 1) / i4;
            int i6 = 0;
            while (true) {
                int i7 = i5 - 1;
                PHOTON_Permutation();
                if (i6 >= i7) {
                    break;
                }
                byte[] bArr3 = this.A;
                int i8 = this.RATE_INBYTES;
                XOR(bArr3, i6 * i8, i8);
                i6++;
            }
            int i9 = this.RATE_INBYTES;
            int i10 = length - (i6 * i9);
            XOR(this.A, i6 * i9, i10);
            if (i10 < this.RATE_INBYTES) {
                byte[] bArr4 = this.state;
                bArr4[i10] = (byte) (bArr4[i10] ^ 1);
            }
            byte[] bArr5 = this.state;
            int i11 = this.STATE_INBYTES - 1;
            bArr5[i11] = (byte) ((bSelect << this.LAST_THREE_BITS_OFFSET) ^ bArr5[i11]);
        }
        if (i3 != 0) {
            int i12 = this.RATE_INBYTES;
            int i13 = ((i3 + i12) - 1) / i12;
            int i14 = 0;
            while (i14 < i13 - 1) {
                PHOTON_Permutation();
                int i15 = this.RATE_INBYTES;
                rhoohr(bArr, (i14 * i15) + i2, byteArray, i14 * i15, i15);
                i14++;
            }
            photonBeetleEngine = this;
            bArr2 = bArr;
            photonBeetleEngine.PHOTON_Permutation();
            int i16 = photonBeetleEngine.RATE_INBYTES;
            int i17 = i3 - (i14 * i16);
            photonBeetleEngine.rhoohr(bArr2, (i14 * i16) + i2, byteArray, i14 * i16, i17);
            if (i17 < photonBeetleEngine.RATE_INBYTES) {
                byte[] bArr6 = photonBeetleEngine.state;
                bArr6[i17] = (byte) (bArr6[i17] ^ 1);
            }
            byte[] bArr7 = photonBeetleEngine.state;
            int i18 = photonBeetleEngine.STATE_INBYTES - 1;
            bArr7[i18] = (byte) (bArr7[i18] ^ (bSelect2 << photonBeetleEngine.LAST_THREE_BITS_OFFSET));
        } else {
            photonBeetleEngine = this;
            bArr2 = bArr;
        }
        int i19 = i2 + i3;
        if (photonBeetleEngine.input_empty) {
            byte[] bArr8 = photonBeetleEngine.state;
            int i20 = photonBeetleEngine.STATE_INBYTES - 1;
            bArr8[i20] = (byte) (bArr8[i20] ^ (1 << photonBeetleEngine.LAST_THREE_BITS_OFFSET));
        }
        photonBeetleEngine.PHOTON_Permutation();
        byte[] bArr9 = new byte[16];
        photonBeetleEngine.T = bArr9;
        System.arraycopy(photonBeetleEngine.state, 0, bArr9, 0, 16);
        if (photonBeetleEngine.forEncryption) {
            System.arraycopy(photonBeetleEngine.T, 0, bArr2, i19, 16);
            i3 += 16;
        } else {
            for (int i21 = 0; i21 < 16; i21++) {
                if (photonBeetleEngine.T[i21] != byteArray[i3 + i21]) {
                    md.n("Mac does not match");
                    return 0;
                }
            }
        }
        photonBeetleEngine.reset(false);
        return i3;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return "Photon-Beetle AEAD";
    }

    public int getBlockSize() {
        return this.RATE_INBYTES;
    }

    public int getIVBytesSize() {
        return 16;
    }

    public int getKeyBytesSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.T;
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
            md.n("Photon-Beetle AEAD init parameters must include an IV");
            return;
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] iv = parametersWithIV.getIV();
        this.N = iv;
        if (iv == null || iv.length != 16) {
            md.n("Photon-Beetle AEAD requires exactly 16 bytes of IV");
            return;
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            md.n("Photon-Beetle AEAD init parameters must include a key");
            return;
        }
        byte[] key = ((KeyParameter) parametersWithIV.getParameters()).getKey();
        this.K = key;
        if (key.length != 16) {
            md.n("Photon-Beetle AEAD key must be 128 bits long");
            return;
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z)));
        this.state = new byte[this.STATE_INBYTES];
        this.state_2d = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 8, 8);
        this.T = new byte[16];
        this.initialised = true;
        reset(false);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b2) {
        this.aadData.write(b2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i2, int i3) {
        if (i2 + i3 <= bArr.length) {
            this.aadData.write(bArr, i2, i3);
        } else {
            b21.q("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b2, byte[] bArr, int i2) throws DataLengthException {
        return processBytes(new byte[]{b2}, 0, 1, bArr, i2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws DataLengthException {
        if (i2 + i3 <= bArr.length) {
            this.message.write(bArr, i2, i3);
            return 0;
        }
        b21.q("input buffer too short");
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        if (this.initialised) {
            reset(true);
        } else {
            md.n("Need call init function before encryption/decryption");
        }
    }
}
