package org.bouncycastle.crypto.engines;

import com.batch.android.x0.h;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import defpackage.no0;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Memoable;

/* JADX INFO: loaded from: classes5.dex */
public class Zuc128CoreEngine implements StreamCipher, Memoable {
    private final int[] BRC;
    private final int[] F;
    private final int[] LFSR;
    private final byte[] keyStream;
    private int theIndex;
    private int theIterations;
    private Zuc128CoreEngine theResetState;
    private static final byte[] S0 = {62, 114, 91, 71, h.a.o, h.a.K, 0, 51, 4, h.a.v, 84, -104, 9, -71, 109, h.a.p, 123, 27, -7, 50, -81, -99, 106, -91, -72, 45, -4, 29, 8, 83, 3, h.a.f24175c, 77, 78, -124, -103, -28, h.a.s, h.a.D, -111, h.a.H, -74, -123, 72, -117, 41, 110, -84, h.a.r, h.a.f24177f, -8, 30, 115, 67, 105, h.a.f24181k, -75, -67, -3, 57, 99, 32, h.a.y, 56, 118, 125, -78, -89, h.a.t, -19, 87, h.a.f24180j, -13, 44, -69, 20, 33, 6, 85, -101, -29, -17, 94, 49, 79, 127, 90, -92, 13, -126, 81, 73, 95, -70, 88, 28, 74, 22, h.a.z, 23, -88, -110, 36, 31, -116, -1, h.a.C, -82, 46, 1, h.a.x, -83, 59, 75, h.a.E, 70, -21, h.a.n, h.a.I, -102, -113, -121, h.a.B, 58, -128, 111, 47, h.a.m, -79, -76, 55, -9, 10, 34, 19, 40, 124, h.a.q, 60, -119, h.a.l, h.a.f24178h, -106, 86, 7, -65, 126, -16, 11, 43, -105, 82, 53, 65, 121, 97, -90, 76, 16, -2, PSSSigner.TRAILER_IMPLICIT, 38, -107, -120, -118, -80, -93, -5, h.a.f24176e, 24, -108, -14, -31, -27, -23, 93, h.a.u, h.a.G, 17, 102, 100, 92, -20, 89, 66, 117, 18, -11, 116, -100, -86, 35, 14, -122, -85, -66, 42, 2, -25, 103, -26, 68, -94, 108, h.a.g, -109, -97, -15, -10, -6, 54, h.a.w, 80, 104, -98, 98, 113, 21, 61, h.a.A, 64, h.a.f24179i, -30, 15, -114, -125, 119, 107, 37, 5, 63, 12, 48, -22, 112, -73, -95, -24, -87, 101, -115, 39, 26, h.a.F, -127, -77, h.a.d, -12, 69, 122, 25, h.a.J, -18, 120, 52, 96};
    private static final byte[] S1 = {85, h.a.g, 99, 113, 59, h.a.m, 71, -122, -97, 60, h.a.E, 91, 41, -86, -3, 119, -116, h.a.f24180j, -108, 12, -90, 26, 19, 0, -29, -88, 22, 114, 64, -7, -8, 66, 68, 38, 104, -106, -127, h.a.D, 69, 62, 16, 118, h.a.f24181k, -89, -117, 57, 67, -31, 58, -75, 86, 42, h.a.f24176e, 109, -77, 5, 34, 102, -65, h.a.G, 11, -6, 98, 72, h.a.H, 32, 17, 6, 54, h.a.n, h.a.f24177f, h.a.t, -10, 39, 82, -69, 105, -11, h.a.y, -121, 127, -124, 76, h.a.w, -100, 87, -92, PSSSigner.TRAILER_IMPLICIT, 79, -102, h.a.J, -2, h.a.A, -115, 122, -21, 43, 83, h.a.C, 92, -95, 20, 23, -5, 35, h.a.z, 125, 48, 103, 115, 8, 9, -18, -73, 112, 63, 97, -78, 25, -114, 78, -27, 75, -109, -113, 93, h.a.F, -87, -83, -15, -82, 46, h.a.p, 13, -4, -12, 45, 70, 110, 29, -105, -24, h.a.v, -23, 77, 55, -91, 117, 94, -125, -98, -85, -126, -99, -71, 28, h.a.K, h.a.r, 73, -119, 1, -74, -67, 88, 36, -94, 95, 56, 120, -103, 21, h.a.f24175c, 80, -72, -107, -28, h.a.u, -111, h.a.l, h.a.s, -19, 15, -76, 111, h.a.d, h.a.q, -16, 2, 74, 121, h.a.f24178h, h.a.I, -93, -17, -22, 81, -26, 107, 24, -20, 27, 44, -128, -9, 116, -25, -1, 33, 90, 106, 84, 30, 65, 49, -110, 53, h.a.f24179i, 51, 7, 10, -70, 126, 14, 52, -120, -79, -104, 124, -13, 61, 96, 108, 123, h.a.o, h.a.x, 31, 50, 101, 4, 40, 100, -66, -123, -101, 47, 89, -118, h.a.B, -80, 37, -84, -81, 18, 3, -30, -14};
    private static final short[] EK_d = {17623, 9916, 25195, 4958, 22409, 13794, 28981, 2479, 19832, 12051, 27588, 6897, 24102, 15437, 30874, 18348};

    public Zuc128CoreEngine(Zuc128CoreEngine zuc128CoreEngine) {
        this.LFSR = new int[16];
        this.F = new int[2];
        this.BRC = new int[4];
        this.keyStream = new byte[4];
        reset(zuc128CoreEngine);
    }

    private int AddM(int i2, int i3) {
        int i4 = i2 + i3;
        return (Integer.MAX_VALUE & i4) + (i4 >>> 31);
    }

    private void BitReorganization() {
        int[] iArr = this.BRC;
        int[] iArr2 = this.LFSR;
        iArr[0] = ((iArr2[15] & 2147450880) << 1) | (iArr2[14] & 65535);
        iArr[1] = ((iArr2[11] & 65535) << 16) | (iArr2[9] >>> 15);
        iArr[2] = ((iArr2[7] & 65535) << 16) | (iArr2[5] >>> 15);
        iArr[3] = (iArr2[0] >>> 15) | ((iArr2[2] & 65535) << 16);
    }

    private static int L1(int i2) {
        return ROT(i2, 24) ^ (((ROT(i2, 2) ^ i2) ^ ROT(i2, 10)) ^ ROT(i2, 18));
    }

    private static int L2(int i2) {
        return ROT(i2, 30) ^ (((ROT(i2, 8) ^ i2) ^ ROT(i2, 14)) ^ ROT(i2, 22));
    }

    private void LFSRWithInitialisationMode(int i2) {
        int i3 = this.LFSR[0];
        int iAddM = AddM(AddM(AddM(AddM(AddM(AddM(i3, MulByPow2(i3, 8)), MulByPow2(this.LFSR[4], 20)), MulByPow2(this.LFSR[10], 21)), MulByPow2(this.LFSR[13], 17)), MulByPow2(this.LFSR[15], 15)), i2);
        int[] iArr = this.LFSR;
        iArr[0] = iArr[1];
        iArr[1] = iArr[2];
        iArr[2] = iArr[3];
        iArr[3] = iArr[4];
        iArr[4] = iArr[5];
        iArr[5] = iArr[6];
        iArr[6] = iArr[7];
        iArr[7] = iArr[8];
        iArr[8] = iArr[9];
        iArr[9] = iArr[10];
        iArr[10] = iArr[11];
        iArr[11] = iArr[12];
        iArr[12] = iArr[13];
        iArr[13] = iArr[14];
        iArr[14] = iArr[15];
        iArr[15] = iAddM;
    }

    private void LFSRWithWorkMode() {
        int i2 = this.LFSR[0];
        int iAddM = AddM(AddM(AddM(AddM(AddM(i2, MulByPow2(i2, 8)), MulByPow2(this.LFSR[4], 20)), MulByPow2(this.LFSR[10], 21)), MulByPow2(this.LFSR[13], 17)), MulByPow2(this.LFSR[15], 15));
        int[] iArr = this.LFSR;
        iArr[0] = iArr[1];
        iArr[1] = iArr[2];
        iArr[2] = iArr[3];
        iArr[3] = iArr[4];
        iArr[4] = iArr[5];
        iArr[5] = iArr[6];
        iArr[6] = iArr[7];
        iArr[7] = iArr[8];
        iArr[8] = iArr[9];
        iArr[9] = iArr[10];
        iArr[10] = iArr[11];
        iArr[11] = iArr[12];
        iArr[12] = iArr[13];
        iArr[13] = iArr[14];
        iArr[14] = iArr[15];
        iArr[15] = iAddM;
    }

    private static int MAKEU31(byte b2, short s, byte b3) {
        return ((b2 & 255) << 23) | ((s & HPKE.aead_EXPORT_ONLY) << 8) | (b3 & 255);
    }

    private static int MAKEU32(byte b2, byte b3, byte b4, byte b5) {
        return ((b2 & 255) << 24) | ((b3 & 255) << 16) | ((b4 & 255) << 8) | (b5 & 255);
    }

    private static int MulByPow2(int i2, int i3) {
        return ((i2 >>> (31 - i3)) | (i2 << i3)) & Integer.MAX_VALUE;
    }

    public static int ROT(int i2, int i3) {
        return (i2 >>> (32 - i3)) | (i2 << i3);
    }

    public static void encode32be(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) (i2 >> 24);
        bArr[i3 + 1] = (byte) (i2 >> 16);
        bArr[i3 + 2] = (byte) (i2 >> 8);
        bArr[i3 + 3] = (byte) i2;
    }

    private void makeKeyStream() {
        encode32be(makeKeyStreamWord(), this.keyStream, 0);
    }

    public int F() {
        int[] iArr = this.BRC;
        int i2 = iArr[0];
        int[] iArr2 = this.F;
        int i3 = iArr2[0];
        int i4 = iArr2[1];
        int i5 = (i2 ^ i3) + i4;
        int i6 = i3 + iArr[1];
        int i7 = iArr[2] ^ i4;
        int iL1 = L1((i6 << 16) | (i7 >>> 16));
        int iL2 = L2((i7 << 16) | (i6 >>> 16));
        int[] iArr3 = this.F;
        byte[] bArr = S0;
        byte b2 = bArr[iL1 >>> 24];
        byte[] bArr2 = S1;
        iArr3[0] = MAKEU32(b2, bArr2[(iL1 >>> 16) & 255], bArr[(iL1 >>> 8) & 255], bArr2[iL1 & 255]);
        this.F[1] = MAKEU32(bArr[iL2 >>> 24], bArr2[(iL2 >>> 16) & 255], bArr[(iL2 >>> 8) & 255], bArr2[iL2 & 255]);
        return i5;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new Zuc128CoreEngine(this);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "Zuc-128";
    }

    public int getMaxIterations() {
        return 2047;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        CipherParameters parameters;
        byte[] iv;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            iv = parametersWithIV.getIV();
            parameters = parametersWithIV.getParameters();
        } else {
            parameters = cipherParameters;
            iv = null;
        }
        byte[] key = parameters instanceof KeyParameter ? ((KeyParameter) parameters).getKey() : null;
        this.theIndex = 0;
        this.theIterations = 0;
        setKeyAndIV(key, iv);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), key.length * 8, cipherParameters, z ? CryptoServicePurpose.ENCRYPTION : CryptoServicePurpose.DECRYPTION));
        this.theResetState = (Zuc128CoreEngine) copy();
    }

    public int makeKeyStreamWord() {
        int i2 = this.theIterations;
        this.theIterations = i2 + 1;
        if (i2 >= getMaxIterations()) {
            md.k("Too much data processed by singleKey/IV");
            return 0;
        }
        BitReorganization();
        int iF = F() ^ this.BRC[3];
        LFSRWithWorkMode();
        return iF;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        if (this.theResetState == null) {
            no0.l(getAlgorithmName(), " not initialised");
            return 0;
        }
        if (i2 + i3 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        if (i4 + i3 > bArr2.length) {
            mt.n("output buffer too short");
            return 0;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            bArr2[i5 + i4] = returnByte(bArr[i5 + i2]);
        }
        return i3;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        Zuc128CoreEngine zuc128CoreEngine = (Zuc128CoreEngine) memoable;
        int[] iArr = zuc128CoreEngine.LFSR;
        int[] iArr2 = this.LFSR;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        int[] iArr3 = zuc128CoreEngine.F;
        int[] iArr4 = this.F;
        System.arraycopy(iArr3, 0, iArr4, 0, iArr4.length);
        int[] iArr5 = zuc128CoreEngine.BRC;
        int[] iArr6 = this.BRC;
        System.arraycopy(iArr5, 0, iArr6, 0, iArr6.length);
        byte[] bArr = zuc128CoreEngine.keyStream;
        byte[] bArr2 = this.keyStream;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.theIndex = zuc128CoreEngine.theIndex;
        this.theIterations = zuc128CoreEngine.theIterations;
        this.theResetState = zuc128CoreEngine;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b2) {
        if (this.theIndex == 0) {
            makeKeyStream();
        }
        byte[] bArr = this.keyStream;
        int i2 = this.theIndex;
        byte b3 = (byte) (b2 ^ bArr[i2]);
        this.theIndex = (i2 + 1) % 4;
        return b3;
    }

    public void setKeyAndIV(int[] iArr, byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr.length != 16) {
            md.n("A key of 16 bytes is needed");
            return;
        }
        if (bArr2 == null || bArr2.length != 16) {
            md.n("An IV of 16 bytes is needed");
            return;
        }
        int[] iArr2 = this.LFSR;
        byte b2 = bArr[0];
        short[] sArr = EK_d;
        iArr2[0] = MAKEU31(b2, sArr[0], bArr2[0]);
        this.LFSR[1] = MAKEU31(bArr[1], sArr[1], bArr2[1]);
        this.LFSR[2] = MAKEU31(bArr[2], sArr[2], bArr2[2]);
        this.LFSR[3] = MAKEU31(bArr[3], sArr[3], bArr2[3]);
        this.LFSR[4] = MAKEU31(bArr[4], sArr[4], bArr2[4]);
        this.LFSR[5] = MAKEU31(bArr[5], sArr[5], bArr2[5]);
        this.LFSR[6] = MAKEU31(bArr[6], sArr[6], bArr2[6]);
        this.LFSR[7] = MAKEU31(bArr[7], sArr[7], bArr2[7]);
        this.LFSR[8] = MAKEU31(bArr[8], sArr[8], bArr2[8]);
        this.LFSR[9] = MAKEU31(bArr[9], sArr[9], bArr2[9]);
        this.LFSR[10] = MAKEU31(bArr[10], sArr[10], bArr2[10]);
        this.LFSR[11] = MAKEU31(bArr[11], sArr[11], bArr2[11]);
        this.LFSR[12] = MAKEU31(bArr[12], sArr[12], bArr2[12]);
        this.LFSR[13] = MAKEU31(bArr[13], sArr[13], bArr2[13]);
        this.LFSR[14] = MAKEU31(bArr[14], sArr[14], bArr2[14]);
        this.LFSR[15] = MAKEU31(bArr[15], sArr[15], bArr2[15]);
    }

    public Zuc128CoreEngine() {
        this.LFSR = new int[16];
        this.F = new int[2];
        this.BRC = new int[4];
        this.keyStream = new byte[4];
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        Zuc128CoreEngine zuc128CoreEngine = this.theResetState;
        if (zuc128CoreEngine != null) {
            reset(zuc128CoreEngine);
        }
    }

    private void setKeyAndIV(byte[] bArr, byte[] bArr2) {
        setKeyAndIV(this.LFSR, bArr, bArr2);
        int[] iArr = this.F;
        iArr[0] = 0;
        iArr[1] = 0;
        int i2 = 32;
        while (true) {
            BitReorganization();
            if (i2 <= 0) {
                F();
                LFSRWithWorkMode();
                return;
            } else {
                LFSRWithInitialisationMode(F() >>> 1);
                i2--;
            }
        }
    }
}
