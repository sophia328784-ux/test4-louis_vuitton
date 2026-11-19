package org.bouncycastle.crypto.engines;

import com.batch.android.x0.h;
import defpackage.a;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class GOST3412_2015Engine implements BlockCipher {
    protected static final int BLOCK_SIZE = 16;
    private static final byte[] PI = {-4, -18, h.a.H, 17, h.a.t, 110, 49, 22, -5, h.a.f24179i, -6, h.a.E, 35, h.a.f24180j, 4, 77, -23, 119, -16, h.a.F, -109, 46, -103, -70, 23, 54, -15, -69, 20, h.a.r, 95, h.a.f24177f, -7, 24, 101, 90, -30, 92, -17, 33, -127, 28, 60, 66, -117, 1, -114, 79, 5, -124, 2, -82, -29, 106, -113, h.a.d, 6, 11, -19, -104, 127, h.a.y, h.a.x, 31, -21, 52, 44, 81, -22, h.a.m, 72, -85, -14, 42, 104, -94, -3, 58, h.a.s, h.a.q, -75, 112, 14, 86, 8, 12, 118, 18, -65, 114, 19, 71, -100, -73, 93, -121, 21, -95, -106, 41, 16, 123, -102, h.a.l, -13, -111, 120, 111, -99, -98, -78, -79, 50, 117, 25, 61, -1, 53, -118, 126, 109, 84, h.a.f24181k, -128, h.a.f24178h, -67, 13, 87, h.a.J, -11, 36, -87, 62, -88, 67, h.a.n, h.a.B, 121, h.a.A, -10, 124, 34, -71, 3, h.a.K, 15, -20, h.a.I, 122, -108, -80, PSSSigner.TRAILER_IMPLICIT, h.a.G, -24, 40, 80, 78, 51, 10, 74, -89, -105, 96, 115, 30, 0, 98, 68, 26, -72, 56, -126, 100, -97, 38, 65, -83, 69, 70, -110, 39, 94, 85, 47, -116, -93, -91, 125, 105, h.a.z, -107, 59, 7, 88, -77, 64, -122, -84, 29, -9, 48, 55, 107, -28, -120, h.a.D, -25, -119, -31, 27, -125, 73, 76, 63, -8, -2, -115, 83, -86, h.a.f24175c, h.a.o, h.a.C, -123, 97, 32, 113, 103, -92, 45, 43, 9, 91, h.a.p, -101, 37, h.a.u, -66, -27, 108, 82, 89, -90, 116, h.a.w, -26, -12, -76, h.a.f24176e, h.a.v, 102, -81, h.a.g, 57, 75, 99, -74};
    private static final byte[] inversePI = {-91, 45, 50, -113, 14, 48, 56, h.a.f24176e, 84, -26, -98, 57, 85, 126, 82, -111, 100, 3, 87, 90, 28, 96, 7, 24, 33, 114, -88, h.a.v, 41, h.a.f24181k, -92, 63, h.a.K, 39, -115, 12, -126, -22, -82, -76, -102, 99, 73, -27, 66, -28, 21, -73, h.a.m, 6, 112, -99, 65, 117, 25, h.a.n, -86, -4, 77, -65, 42, 115, -124, h.a.z, h.a.f24178h, -81, 43, -122, -89, -79, -78, 91, 70, h.a.x, -97, -3, h.a.y, 15, -100, 47, -101, 67, -17, h.a.D, 121, -74, 83, 127, h.a.f24177f, -16, 35, -25, 37, 94, -75, 30, -94, h.a.J, -90, -2, -84, 34, -7, -30, 74, PSSSigner.TRAILER_IMPLICIT, 53, h.a.o, -18, 120, 5, 107, 81, -31, 89, -93, -14, 113, 86, 17, 106, -119, -108, 101, -116, -69, 119, 60, 123, 40, -85, h.a.w, 49, h.a.I, h.a.f24179i, 95, h.a.q, h.a.t, 118, 44, -72, h.a.C, 46, 54, h.a.F, 105, -77, 20, -107, -66, 98, -95, 59, 22, 102, -23, 92, 108, 109, -83, 55, 97, 75, -71, -29, -70, -15, h.a.d, -123, -125, h.a.E, 71, h.a.f24180j, -80, 51, -6, -106, 111, 110, h.a.g, -10, 80, -1, 93, -87, -114, 23, 27, -105, 125, -20, 88, -9, 31, -5, 124, 9, 13, 122, 103, 69, -121, h.a.G, -24, 79, 29, 78, 4, -21, -8, -13, 62, 61, -67, -118, -120, h.a.H, h.a.r, 11, 19, -104, 2, -109, -128, h.a.f24175c, h.a.u, 36, 52, h.a.p, -19, -12, h.a.s, -103, 16, 68, 64, -110, 58, 1, 38, 18, 26, 72, 104, -11, -127, -117, h.a.l, h.a.A, 32, 10, 8, 0, 76, h.a.B, 116};
    private boolean forEncryption;
    private final byte[] lFactors = {-108, 32, -123, 16, h.a.g, h.a.f24176e, 1, -5, 1, h.a.f24176e, h.a.g, 16, -123, 32, -108, 1};
    private int KEY_LENGTH = 32;
    private int SUB_LENGTH = 32 / 2;
    private byte[][] subKeys = null;
    private byte[][] _gf_mul = init_gf256_mul_table();

    private void C(byte[] bArr, int i2) {
        Arrays.clear(bArr);
        bArr[15] = (byte) i2;
        L(bArr);
    }

    private void F(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArrLSX = LSX(bArr, bArr2);
        X(bArrLSX, bArr3);
        System.arraycopy(bArr2, 0, bArr3, 0, this.SUB_LENGTH);
        System.arraycopy(bArrLSX, 0, bArr2, 0, this.SUB_LENGTH);
    }

    private void GOST3412_2015Func(byte[] bArr, int i2, byte[] bArr2, int i3) {
        byte[][] bArr3;
        byte[][] bArr4;
        byte[] bArrCopyOf = new byte[16];
        System.arraycopy(bArr, i2, bArrCopyOf, 0, 16);
        int i4 = 9;
        if (this.forEncryption) {
            int i5 = 0;
            while (true) {
                bArr4 = this.subKeys;
                if (i5 >= 9) {
                    break;
                }
                bArrCopyOf = Arrays.copyOf(LSX(bArr4[i5], bArrCopyOf), 16);
                i5++;
            }
            X(bArrCopyOf, bArr4[9]);
        } else {
            while (true) {
                bArr3 = this.subKeys;
                if (i4 <= 0) {
                    break;
                }
                bArrCopyOf = Arrays.copyOf(XSL(bArr3[i4], bArrCopyOf), 16);
                i4--;
            }
            X(bArrCopyOf, bArr3[0]);
        }
        System.arraycopy(bArrCopyOf, 0, bArr2, i3, 16);
    }

    private void L(byte[] bArr) {
        for (int i2 = 0; i2 < 16; i2++) {
            R(bArr);
        }
    }

    private byte[] LSX(byte[] bArr, byte[] bArr2) {
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        X(bArrCopyOf, bArr2);
        S(bArrCopyOf);
        L(bArrCopyOf);
        return bArrCopyOf;
    }

    private void R(byte[] bArr) {
        byte bL = l(bArr);
        System.arraycopy(bArr, 0, bArr, 1, 15);
        bArr[0] = bL;
    }

    private void S(byte[] bArr) {
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = PI[unsignedByte(bArr[i2])];
        }
    }

    private void X(byte[] bArr, byte[] bArr2) {
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) (bArr[i2] ^ bArr2[i2]);
        }
    }

    private byte[] XSL(byte[] bArr, byte[] bArr2) {
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        X(bArrCopyOf, bArr2);
        inverseL(bArrCopyOf);
        inverseS(bArrCopyOf);
        return bArrCopyOf;
    }

    private void generateSubKeys(byte[] bArr) {
        int i2;
        if (bArr.length != this.KEY_LENGTH) {
            md.n("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
            return;
        }
        this.subKeys = new byte[10][];
        for (int i3 = 0; i3 < 10; i3++) {
            this.subKeys[i3] = new byte[this.SUB_LENGTH];
        }
        int i4 = this.SUB_LENGTH;
        byte[] bArr2 = new byte[i4];
        byte[] bArr3 = new byte[i4];
        int i5 = 0;
        while (true) {
            i2 = this.SUB_LENGTH;
            if (i5 >= i2) {
                break;
            }
            byte[][] bArr4 = this.subKeys;
            byte[] bArr5 = bArr4[0];
            byte b2 = bArr[i5];
            bArr2[i5] = b2;
            bArr5[i5] = b2;
            byte[] bArr6 = bArr4[1];
            byte b3 = bArr[i2 + i5];
            bArr3[i5] = b3;
            bArr6[i5] = b3;
            i5++;
        }
        byte[] bArr7 = new byte[i2];
        for (int i6 = 1; i6 < 5; i6++) {
            for (int i7 = 1; i7 <= 8; i7++) {
                C(bArr7, ((i6 - 1) * 8) + i7);
                F(bArr7, bArr2, bArr3);
            }
            int i8 = i6 * 2;
            System.arraycopy(bArr2, 0, this.subKeys[i8], 0, this.SUB_LENGTH);
            System.arraycopy(bArr3, 0, this.subKeys[i8 + 1], 0, this.SUB_LENGTH);
        }
    }

    private static byte[][] init_gf256_mul_table() {
        byte[][] bArr = new byte[256][];
        for (int i2 = 0; i2 < 256; i2++) {
            bArr[i2] = new byte[256];
            for (int i3 = 0; i3 < 256; i3++) {
                bArr[i2][i3] = kuz_mul_gf256_slow((byte) i2, (byte) i3);
            }
        }
        return bArr;
    }

    private void inverseL(byte[] bArr) {
        for (int i2 = 0; i2 < 16; i2++) {
            inverseR(bArr);
        }
    }

    private void inverseR(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        System.arraycopy(bArr, 1, bArr2, 0, 15);
        bArr2[15] = bArr[0];
        byte bL = l(bArr2);
        System.arraycopy(bArr, 1, bArr, 0, 15);
        bArr[15] = bL;
    }

    private void inverseS(byte[] bArr) {
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = inversePI[unsignedByte(bArr[i2])];
        }
    }

    private static byte kuz_mul_gf256_slow(byte b2, byte b3) {
        byte b4 = 0;
        for (byte b5 = 0; b5 < 8 && b2 != 0 && b3 != 0; b5 = (byte) (b5 + 1)) {
            if ((b3 & 1) != 0) {
                b4 = (byte) (b4 ^ b2);
            }
            byte b6 = (byte) (b2 & 128);
            b2 = (byte) (b2 << 1);
            if (b6 != 0) {
                b2 = (byte) (b2 ^ h.a.f24178h);
            }
            b3 = (byte) (b3 >> 1);
        }
        return b4;
    }

    private byte l(byte[] bArr) {
        byte b2 = bArr[15];
        for (int i2 = 14; i2 >= 0; i2--) {
            b2 = (byte) (b2 ^ this._gf_mul[unsignedByte(bArr[i2])][unsignedByte(this.lFactors[i2])]);
        }
        return b2;
    }

    private int unsignedByte(byte b2) {
        return b2 & 255;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "GOST3412_2015";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof KeyParameter) {
            this.forEncryption = z;
            generateSubKeys(((KeyParameter) cipherParameters).getKey());
        } else {
            if (cipherParameters == null) {
                return;
            }
            md.n(a.l("invalid parameter passed to GOST3412_2015 init - ", cipherParameters));
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i2, byte[] bArr2, int i3) throws IllegalStateException, DataLengthException {
        if (this.subKeys == null) {
            md.k("GOST3412_2015 engine not initialised");
            return 0;
        }
        if (i2 + 16 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        if (i3 + 16 <= bArr2.length) {
            GOST3412_2015Func(bArr, i2, bArr2, i3);
            return 16;
        }
        mt.n("output buffer too short");
        return 0;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
