package org.bouncycastle.crypto.engines;

import com.batch.android.x0.h;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import defpackage.n00;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.signers.PSSSigner;

/* JADX INFO: loaded from: classes5.dex */
public class ElephantEngine implements AEADCipher {
    private final int BLOCK_SIZE;
    private final byte CRYPTO_ABYTES;
    private byte[] ad;
    private int adOff;
    private int adlen;
    private final String algorithmName;
    private final byte[] buffer;
    private byte[] current_mask;
    private byte[] expanded_key;
    private boolean forEncryption;
    private boolean initialised;
    private byte[] inputMessage;
    private int inputOff;
    private byte lfsrIV;
    private int nBits;
    private final int nRounds;
    private int nSBox;
    private int nb_its;
    private byte[] next_mask;
    private byte[] npub;
    private final byte[] outputMessage;
    private final ElephantParameters parameters;
    private byte[] previous_mask;
    private final byte[] previous_outputMessage;
    private byte[] tag;
    private final byte[] tag_buffer;
    private final byte CRYPTO_KEYBYTES = 16;
    private final byte CRYPTO_NPUBBYTES = 12;
    private State m_state = State.Uninitialized;
    private final ByteArrayOutputStream aadData = new ByteArrayOutputStream();
    private final byte[] sBoxLayer = {-18, -19, -21, h.a.K, -30, -31, -28, -17, -25, -22, -24, -27, -23, -20, -29, -26, h.a.I, h.a.H, h.a.F, h.a.u, h.a.w, h.a.v, h.a.y, h.a.J, h.a.B, h.a.E, h.a.C, h.a.z, h.a.D, h.a.G, h.a.x, h.a.A, -66, -67, -69, -80, -78, -79, -76, -65, -73, -70, -72, -75, -71, PSSSigner.TRAILER_IMPLICIT, -77, -74, 14, 13, 11, 0, 2, 1, 4, 15, 7, 10, 8, 5, 9, 12, 3, 6, 46, 45, 43, 32, 34, 33, 36, 47, 39, 42, 40, 37, 41, 44, 35, 38, 30, 29, 27, 16, 18, 17, 20, 31, 23, 26, 24, 21, 25, 28, 19, 22, 78, 77, 75, 64, 66, 65, 68, 79, 71, 74, 72, 69, 73, 76, 67, 70, -2, -3, -5, -16, -14, -15, -12, -1, -9, -6, -8, -11, -7, -4, -13, -10, 126, 125, 123, 112, 114, 113, 116, 127, 119, 122, 120, 117, 121, 124, 115, 118, -82, -83, -85, h.a.d, -94, -95, -92, -81, -89, -86, -88, -91, -87, -84, -93, -90, -114, -115, -117, -128, -126, -127, -124, -113, -121, -118, -120, -123, -119, -116, -125, -122, 94, 93, 91, 80, 82, 81, 84, 95, 87, 90, 88, 85, 89, 92, 83, 86, -98, -99, -101, h.a.f24175c, -110, -111, -108, -97, -105, -102, -104, -107, -103, -100, -109, -106, h.a.s, h.a.r, h.a.p, h.a.f24176e, h.a.g, h.a.f24177f, h.a.f24179i, h.a.t, h.a.l, h.a.o, h.a.m, h.a.f24180j, h.a.n, h.a.q, h.a.f24178h, h.a.f24181k, 62, 61, 59, 48, 50, 49, 52, 63, 55, 58, 56, 53, 57, 60, 51, 54, 110, 109, 107, 96, 98, 97, 100, 111, 103, 106, 104, 101, 105, 108, 99, 102};
    private final byte[] KeccakRoundConstants = {1, -126, -118, 0, -117, 1, -127, 9, -118, -120, 9, 10, -117, -117, -119, 3, 2, -128};
    private final int[] KeccakRhoOffsets = {0, 1, 6, 4, 3, 4, 4, 6, 7, 4, 3, 2, 3, 1, 7, 1, 5, 7, 5, 0, 2, 2, 5, 0, 6};

    /* JADX INFO: renamed from: org.bouncycastle.crypto.engines.ElephantEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters;
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State = iArr;
            try {
                iArr[State.EncInit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.DecInit.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.Uninitialized.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.DecFinal.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.EncFinal.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.EncAad.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.EncData.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.DecData.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.DecAad.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr2 = new int[ElephantParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters = iArr2;
            try {
                iArr2[ElephantParameters.elephant160.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters[ElephantParameters.elephant176.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters[ElephantParameters.elephant200.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public enum ElephantParameters {
        elephant160,
        elephant176,
        elephant200
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

    public ElephantEngine(ElephantParameters elephantParameters) {
        String str;
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters[elephantParameters.ordinal()];
        if (i2 == 1) {
            this.BLOCK_SIZE = 20;
            this.nBits = 160;
            this.nSBox = 20;
            this.nRounds = 80;
            this.lfsrIV = (byte) 117;
            this.CRYPTO_ABYTES = (byte) 8;
            str = "Elephant 160 AEAD";
        } else if (i2 == 2) {
            this.BLOCK_SIZE = 22;
            this.nBits = 176;
            this.nSBox = 22;
            this.nRounds = 90;
            this.lfsrIV = (byte) 69;
            this.CRYPTO_ABYTES = (byte) 8;
            str = "Elephant 176 AEAD";
        } else {
            if (i2 != 3) {
                md.n("Invalid parameter settings for Elephant");
                throw null;
            }
            this.BLOCK_SIZE = 25;
            this.nRounds = 18;
            this.CRYPTO_ABYTES = (byte) 16;
            str = "Elephant 200 AEAD";
        }
        this.algorithmName = str;
        this.parameters = elephantParameters;
        int i3 = this.BLOCK_SIZE;
        this.tag_buffer = new byte[i3];
        this.previous_mask = new byte[i3];
        this.current_mask = new byte[i3];
        this.next_mask = new byte[i3];
        this.buffer = new byte[i3];
        this.previous_outputMessage = new byte[i3];
        this.outputMessage = new byte[i3];
        this.initialised = false;
        reset(false);
    }

    private void KeccakP200Round(byte[] bArr, int i2) {
        byte[] bArr2 = new byte[25];
        for (int i3 = 0; i3 < 5; i3++) {
            for (int i4 = 0; i4 < 5; i4++) {
                bArr2[i3] = (byte) (bArr2[i3] ^ bArr[index(i3, i4)]);
            }
        }
        int i5 = 0;
        while (i5 < 5) {
            int i6 = i5 + 1;
            bArr2[i5 + 5] = (byte) (bArr2[(i5 + 4) % 5] ^ ROL8(bArr2[i6 % 5], 1));
            i5 = i6;
        }
        for (int i7 = 0; i7 < 5; i7++) {
            for (int i8 = 0; i8 < 5; i8++) {
                int iIndex = index(i7, i8);
                bArr[iIndex] = (byte) (bArr[iIndex] ^ bArr2[i7 + 5]);
            }
        }
        for (int i9 = 0; i9 < 5; i9++) {
            for (int i10 = 0; i10 < 5; i10++) {
                bArr2[index(i9, i10)] = ROL8(bArr[index(i9, i10)], this.KeccakRhoOffsets[index(i9, i10)]);
            }
        }
        for (int i11 = 0; i11 < 5; i11++) {
            for (int i12 = 0; i12 < 5; i12++) {
                bArr[index(i12, ((i12 * 3) + (i11 * 2)) % 5)] = bArr2[index(i11, i12)];
            }
        }
        for (int i13 = 0; i13 < 5; i13++) {
            int i14 = 0;
            while (i14 < 5) {
                int i15 = i14 + 1;
                bArr2[i14] = (byte) (bArr[index(i14, i13)] ^ ((~bArr[index(i15 % 5, i13)]) & bArr[index((i14 + 2) % 5, i13)]));
                i14 = i15;
            }
            for (int i16 = 0; i16 < 5; i16++) {
                bArr[index(i16, i13)] = bArr2[i16];
            }
        }
        bArr[0] = (byte) (this.KeccakRoundConstants[i2] ^ bArr[0]);
    }

    private byte ROL8(byte b2, int i2) {
        int i3 = b2;
        if (i2 != 0) {
            int i4 = b2 & 255;
            i3 = (i4 << i2) ^ (i4 >>> (8 - i2));
        }
        return (byte) i3;
    }

    private void checkAad() {
        StringBuilder sb;
        String str;
        String str2;
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[this.m_state.ordinal()];
        if (i2 == 5) {
            sb = new StringBuilder();
            str = this.algorithmName;
            str2 = " cannot be reused for encryption";
        } else if (i2 == 7) {
            sb = new StringBuilder();
            str = this.algorithmName;
            str2 = " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size";
        } else {
            if (i2 != 8) {
                return;
            }
            sb = new StringBuilder();
            str = this.algorithmName;
            str2 = " cannot process AAD when the length of the plaintext to be processed exceeds the a block size";
        }
        md.n(n00.r(str, str2, sb));
    }

    private void get_c_block(byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        int i5 = this.BLOCK_SIZE;
        int i6 = i4 * i5;
        if (i6 == i3) {
            Arrays.fill(bArr, 0, i5, (byte) 0);
            bArr[0] = 1;
            return;
        }
        int i7 = i3 - i6;
        if (i5 <= i7) {
            System.arraycopy(bArr2, i2, bArr, 0, i5);
            return;
        }
        if (i7 > 0) {
            System.arraycopy(bArr2, i2, bArr, 0, i7);
        }
        Arrays.fill(bArr, i7, this.BLOCK_SIZE, (byte) 0);
        bArr[i7] = 1;
    }

    private int index(int i2, int i3) {
        return (i3 * 5) + i2;
    }

    private void lfsr_step(byte[] bArr, byte[] bArr2) {
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters[this.parameters.ordinal()];
        if (i2 == 1) {
            int i3 = this.BLOCK_SIZE - 1;
            byte b2 = bArr2[0];
            int i4 = (bArr2[3] & 255) << 7;
            int i5 = (bArr2[13] & 255) >>> 7;
            bArr[i3] = (byte) (i5 ^ (i4 ^ (((b2 & 255) >>> 5) | ((b2 & 255) << 3))));
        } else if (i2 == 2) {
            bArr[this.BLOCK_SIZE - 1] = (byte) ((rotl(bArr2[0]) ^ ((bArr2[3] & 255) << 7)) ^ ((bArr2[19] & 255) >>> 7));
        } else if (i2 == 3) {
            bArr[this.BLOCK_SIZE - 1] = (byte) ((bArr2[13] << 1) ^ (rotl(bArr2[0]) ^ rotl(bArr2[2])));
        }
        System.arraycopy(bArr2, 1, bArr, 0, this.BLOCK_SIZE - 1);
    }

    private void permutation(byte[] bArr) {
        int i2;
        int i3 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters[this.parameters.ordinal()];
        if (i3 != 1 && i3 != 2) {
            if (i3 != 3) {
                return;
            }
            for (int i4 = 0; i4 < this.nRounds; i4++) {
                KeccakP200Round(bArr, i4);
            }
            return;
        }
        byte b2 = this.lfsrIV;
        byte[] bArr2 = new byte[this.nSBox];
        for (int i5 = 0; i5 < this.nRounds; i5++) {
            bArr[0] = (byte) (bArr[0] ^ b2);
            int i6 = this.nSBox - 1;
            int i7 = b2 & 32;
            int i8 = b2 & 64;
            bArr[i6] = (byte) (bArr[i6] ^ ((byte) (((((((((b2 & 1) << 7) | ((b2 & 2) << 5)) | ((b2 & 4) << 3)) | ((b2 & 8) << 1)) | ((b2 & 16) >>> 1)) | (i7 >>> 3)) | (i8 >>> 5)) | ((b2 & 128) >>> 7))));
            b2 = (byte) (((b2 << 1) | ((i8 >>> 6) ^ (i7 >>> 5))) & CertificateBody.profileType);
            for (int i9 = 0; i9 < this.nSBox; i9++) {
                bArr[i9] = this.sBoxLayer[bArr[i9] & 255];
            }
            Arrays.fill(bArr2, (byte) 0);
            int i10 = 0;
            while (true) {
                i2 = this.nSBox;
                if (i10 < i2) {
                    for (int i11 = 0; i11 < 8; i11++) {
                        int i12 = (i10 << 3) + i11;
                        int i13 = this.nBits;
                        if (i12 != i13 - 1) {
                            i12 = ((i12 * i13) >> 2) % (i13 - 1);
                        }
                        int i14 = i12 >>> 3;
                        bArr2[i14] = (byte) (((((bArr[i10] & 255) >>> i11) & 1) << (i12 & 7)) ^ bArr2[i14]);
                    }
                    i10++;
                }
            }
            System.arraycopy(bArr2, 0, bArr, 0, i2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:27:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:29:0x00ad A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00af  */
    /* JADX WARN: Code duplicated, block: B:33:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:35:0x00cf A[ADDED_TO_REGION, REMOVE, RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d5  */
    private void processAADBytes(byte[] bArr) {
        State state;
        int i2;
        int i3;
        int i4;
        int i5;
        checkAad();
        if (this.adOff == -1) {
            this.adlen = this.aadData.size();
            this.ad = this.aadData.toByteArray();
            this.adOff = 0;
        }
        int[] iArr = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State;
        int i6 = iArr[this.m_state.ordinal()];
        int i7 = 12;
        if (i6 != 1) {
            if (i6 != 2) {
                switch (i6) {
                    case 5:
                        md.n(n00.r(this.algorithmName, " cannot be reused for encryption", new StringBuilder()));
                        break;
                    case 6:
                    case 9:
                        if (this.adOff == this.adlen) {
                            Arrays.fill(bArr, 0, this.BLOCK_SIZE, (byte) 0);
                            bArr[0] = 1;
                        }
                        i7 = 0;
                        break;
                    case 7:
                        md.n(n00.r(this.algorithmName, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size", new StringBuilder()));
                        break;
                    case 8:
                        md.n(n00.r(this.algorithmName, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size", new StringBuilder()));
                        break;
                    default:
                        i7 = 0;
                        break;
                }
                return;
            }
            System.arraycopy(this.expanded_key, 0, this.current_mask, 0, this.BLOCK_SIZE);
            System.arraycopy(this.npub, 0, bArr, 0, 12);
            state = State.DecAad;
            i2 = this.BLOCK_SIZE - i7;
            int i8 = this.adlen;
            i3 = this.adOff;
            i4 = i8 - i3;
            if (i2 <= i4) {
                System.arraycopy(this.ad, i3, bArr, i7, i2);
                this.adOff += i2;
                return;
            }
            if (i4 > 0) {
                System.arraycopy(this.ad, i3, bArr, i7, i4);
                this.adOff += i4;
            }
            int i9 = i4 + i7;
            Arrays.fill(bArr, i9, i7 + i2, (byte) 0);
            bArr[i9] = 1;
            i5 = iArr[this.m_state.ordinal()];
            if (i5 != 6) {
                this.m_state = State.EncData;
            } else {
                if (i5 != 9) {
                    return;
                }
                this.m_state = State.DecData;
            }
        }
        System.arraycopy(this.expanded_key, 0, this.current_mask, 0, this.BLOCK_SIZE);
        System.arraycopy(this.npub, 0, bArr, 0, 12);
        state = State.EncAad;
        this.m_state = state;
        i2 = this.BLOCK_SIZE - i7;
        int i10 = this.adlen;
        i3 = this.adOff;
        i4 = i10 - i3;
        if (i2 <= i4) {
            System.arraycopy(this.ad, i3, bArr, i7, i2);
            this.adOff += i2;
            return;
        }
        if (i4 > 0) {
            System.arraycopy(this.ad, i3, bArr, i7, i4);
            this.adOff += i4;
        }
        int i11 = i4 + i7;
        Arrays.fill(bArr, i11, i7 + i2, (byte) 0);
        bArr[i11] = 1;
        i5 = iArr[this.m_state.ordinal()];
        if (i5 != 6) {
            this.m_state = State.EncData;
        } else {
            if (i5 != 9) {
                return;
            }
            this.m_state = State.DecData;
        }
    }

    private int processBytes(byte[] bArr, byte[] bArr2, int i2, int i3, int i4, int i5, int i6, int i7) {
        int i8 = this.nb_its;
        int i9 = 0;
        while (i8 < i3) {
            lfsr_step(this.next_mask, this.current_mask);
            if (i8 < i4) {
                System.arraycopy(this.npub, 0, this.buffer, 0, 12);
                Arrays.fill(this.buffer, 12, this.BLOCK_SIZE, (byte) 0);
                xor_block(this.buffer, this.current_mask, 0, this.BLOCK_SIZE);
                xor_block(this.buffer, this.next_mask, 0, this.BLOCK_SIZE);
                permutation(this.buffer);
                xor_block(this.buffer, this.current_mask, 0, this.BLOCK_SIZE);
                xor_block(this.buffer, this.next_mask, 0, this.BLOCK_SIZE);
                int i10 = i4 - 1;
                int i11 = this.BLOCK_SIZE;
                if (i8 == i10) {
                    i11 = i6 - (i11 * i8);
                }
                xor_block(this.buffer, bArr, 0, i11);
                System.arraycopy(this.buffer, 0, bArr2, i2, i11);
                if (this.forEncryption) {
                    System.arraycopy(this.buffer, 0, this.outputMessage, 0, i11);
                } else {
                    System.arraycopy(bArr, 0, this.outputMessage, 0, i11);
                }
                i9 += i11;
            }
            int i12 = i9;
            if (i8 > 0 && i8 <= i5) {
                get_c_block(this.buffer, this.previous_outputMessage, 0, i6, i8 - 1);
                xor_block(this.buffer, this.previous_mask, 0, this.BLOCK_SIZE);
                xor_block(this.buffer, this.next_mask, 0, this.BLOCK_SIZE);
                permutation(this.buffer);
                xor_block(this.buffer, this.previous_mask, 0, this.BLOCK_SIZE);
                xor_block(this.buffer, this.next_mask, 0, this.BLOCK_SIZE);
                xor_block(this.tag_buffer, this.buffer, 0, this.BLOCK_SIZE);
            }
            i8++;
            if (i8 < i7) {
                processAADBytes(this.buffer);
                xor_block(this.buffer, this.next_mask, 0, this.BLOCK_SIZE);
                permutation(this.buffer);
                xor_block(this.buffer, this.next_mask, 0, this.BLOCK_SIZE);
                xor_block(this.tag_buffer, this.buffer, 0, this.BLOCK_SIZE);
            }
            byte[] bArr3 = this.previous_mask;
            this.previous_mask = this.current_mask;
            this.current_mask = this.next_mask;
            this.next_mask = bArr3;
            System.arraycopy(this.outputMessage, 0, this.previous_outputMessage, 0, this.BLOCK_SIZE);
            i9 = i12;
        }
        return i9;
    }

    private void reset(boolean z) {
        if (z) {
            this.tag = null;
        }
        this.aadData.reset();
        Arrays.fill(this.tag_buffer, (byte) 0);
        this.inputOff = 0;
        this.nb_its = 0;
        this.adOff = -1;
    }

    private byte rotl(byte b2) {
        int i2 = b2 & 255;
        return (byte) ((i2 >>> 7) | (i2 << 1));
    }

    private void xor_block(byte[] bArr, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[i4 + i2]);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i2) throws InvalidCipherTextException, IllegalStateException {
        if (!this.initialised) {
            md.n(n00.r(this.algorithmName, " needs call init function before doFinal", new StringBuilder()));
            return 0;
        }
        int i3 = this.inputOff;
        boolean z = this.forEncryption;
        if ((z && i3 + i2 + this.CRYPTO_ABYTES > bArr.length) || (!z && (i3 + i2) - this.CRYPTO_ABYTES > bArr.length)) {
            mt.n("output buffer is too short");
            return 0;
        }
        byte[] byteArray = this.aadData.toByteArray();
        int i4 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[this.m_state.ordinal()];
        if (i4 == 1 || i4 == 2) {
            processAADBytes(this.tag_buffer);
        }
        int i5 = this.nb_its;
        int i6 = this.BLOCK_SIZE;
        int i7 = ((i5 * i6) + i3) - (this.forEncryption ? (byte) 0 : this.CRYPTO_ABYTES);
        int length = byteArray.length;
        int i8 = i7 / i6;
        int i9 = i8 + 1;
        int i10 = (length + 12) / i6;
        int iProcessBytes = processBytes(this.inputMessage, bArr, i2, Math.max(i8 + 2, i10), i7 % i6 != 0 ? i9 : i8, i9, i7, i10 + 1) + i2;
        this.tag = new byte[this.CRYPTO_ABYTES];
        xor_block(this.tag_buffer, this.expanded_key, 0, this.BLOCK_SIZE);
        permutation(this.tag_buffer);
        xor_block(this.tag_buffer, this.expanded_key, 0, this.BLOCK_SIZE);
        if (this.forEncryption) {
            System.arraycopy(this.tag_buffer, 0, this.tag, 0, this.CRYPTO_ABYTES);
            byte[] bArr2 = this.tag;
            System.arraycopy(bArr2, 0, bArr, iProcessBytes, bArr2.length);
            i7 += this.CRYPTO_ABYTES;
        } else {
            this.inputOff -= this.CRYPTO_ABYTES;
            for (int i11 = 0; i11 < this.CRYPTO_ABYTES; i11++) {
                if (this.tag_buffer[i11] != this.inputMessage[this.inputOff + i11]) {
                    md.n("Mac does not match");
                    return 0;
                }
            }
        }
        reset(false);
        return i7;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    public int getBlockSize() {
        return this.CRYPTO_ABYTES;
    }

    public int getIVBytesSize() {
        return 12;
    }

    public int getKeyBytesSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.tag;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i2) {
        int i3 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[this.m_state.ordinal()];
        if (i3 != 1) {
            if (i3 == 3) {
                md.n(n00.r(this.algorithmName, " needs call init function before getUpdateOutputSize", new StringBuilder()));
                return 0;
            }
            if (i3 == 4 || i3 == 5) {
                return 0;
            }
            if (i3 != 6 && i3 != 7) {
                return Math.max(0, i2 - this.CRYPTO_ABYTES);
            }
        }
        return i2 + this.CRYPTO_ABYTES;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i2) {
        int i3 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[this.m_state.ordinal()];
        if (i3 != 1) {
            if (i3 == 3) {
                md.n(n00.r(this.algorithmName, " needs call init function before getUpdateOutputSize", new StringBuilder()));
                return 0;
            }
            if (i3 == 4 || i3 == 5) {
                return 0;
            }
            if (i3 != 6 && i3 != 7) {
                return Math.max(0, (i2 + this.inputOff) - this.CRYPTO_ABYTES);
            }
        }
        return this.inputOff + i2 + this.CRYPTO_ABYTES;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z;
        if (!(cipherParameters instanceof ParametersWithIV)) {
            md.n(n00.r(this.algorithmName, " init parameters must include an IV", new StringBuilder()));
            return;
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] iv = parametersWithIV.getIV();
        this.npub = iv;
        if (iv == null || iv.length != 12) {
            md.n(n00.r(this.algorithmName, " requires exactly 12 bytes of IV", new StringBuilder()));
            return;
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            md.n(n00.r(this.algorithmName, " init parameters must include a key", new StringBuilder()));
            return;
        }
        byte[] key = ((KeyParameter) parametersWithIV.getParameters()).getKey();
        if (key.length != 16) {
            md.n(n00.r(this.algorithmName, " key must be 128 bits long", new StringBuilder()));
            return;
        }
        byte[] bArr = new byte[this.BLOCK_SIZE];
        this.expanded_key = bArr;
        System.arraycopy(key, 0, bArr, 0, 16);
        permutation(this.expanded_key);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z)));
        this.initialised = true;
        this.m_state = z ? State.EncInit : State.DecInit;
        this.inputMessage = new byte[this.BLOCK_SIZE + (z ? (byte) 0 : this.CRYPTO_ABYTES)];
        reset(false);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b2) {
        this.aadData.write(b2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b2, byte[] bArr, int i2) throws DataLengthException {
        return processBytes(new byte[]{b2}, 0, 1, bArr, i2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
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
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws DataLengthException {
        if (i2 + i3 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        byte[] byteArray = this.aadData.toByteArray();
        int i5 = this.inputOff;
        if ((i5 + i3) - (this.forEncryption ? (byte) 0 : this.CRYPTO_ABYTES) < this.BLOCK_SIZE) {
            System.arraycopy(bArr, i2, this.inputMessage, i5, i3);
            this.inputOff += i3;
            return 0;
        }
        int i6 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[this.m_state.ordinal()];
        if (i6 == 1 || i6 == 2) {
            processAADBytes(this.tag_buffer);
        }
        int i7 = (this.inputOff + i3) - (this.forEncryption ? (byte) 0 : this.CRYPTO_ABYTES);
        int length = byteArray.length;
        int i8 = this.BLOCK_SIZE;
        int i9 = i7 / i8;
        int i10 = i7 % i8 != 0 ? i9 : i9 - 1;
        int i11 = ((length + 12) / i8) + 1;
        int iMax = Math.max(i9, 1) * this.BLOCK_SIZE;
        byte[] bArr3 = new byte[iMax];
        System.arraycopy(this.inputMessage, 0, bArr3, 0, this.inputOff);
        int i12 = this.inputOff;
        int i13 = iMax - i12;
        System.arraycopy(bArr, i2, bArr3, i12, iMax - i12);
        processBytes(bArr3, bArr2, i4, i9, i10 + 1, i9, i7, i11);
        int i14 = i3 - i13;
        this.inputOff = i14;
        System.arraycopy(bArr, i2 + i13, this.inputMessage, 0, i14);
        this.nb_its += i9;
        return i9 * this.BLOCK_SIZE;
    }
}
