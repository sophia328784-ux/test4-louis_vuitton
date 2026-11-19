package org.bouncycastle.crypto.engines;

import com.batch.android.x0.h;
import defpackage.a;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Bytes;
import org.bouncycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class ARIAEngine implements BlockCipher {
    protected static final int BLOCK_SIZE = 16;
    private static final byte[][] C = {Hex.decodeStrict("517cc1b727220a94fe13abe8fa9a6ee0"), Hex.decodeStrict("6db14acc9e21c820ff28b1d5ef5de2b0"), Hex.decodeStrict("db92371d2126e9700324977504e8c90e")};
    private static final byte[] SB1_sbox = {99, 124, 119, 123, -14, 107, 111, h.a.f24180j, 48, 1, 103, 43, -2, h.a.B, -85, 118, h.a.o, -126, h.a.n, 125, -6, 89, 71, -16, -83, h.a.y, -94, -81, -100, -92, 114, h.a.f24176e, -73, -3, -109, 38, 54, 63, -9, h.a.q, 52, -91, -27, -15, 113, h.a.C, 49, 21, 4, h.a.l, 35, h.a.f24178h, 24, -106, 5, -102, 7, 18, -128, -30, -21, 39, -78, 117, 9, -125, 44, 26, 27, 110, 90, h.a.d, 82, 59, h.a.A, -77, 41, -29, 47, -124, 83, h.a.v, 0, -19, 32, -4, -79, 91, 106, h.a.p, -66, 57, 74, 76, 88, h.a.t, h.a.u, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, 127, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, h.a.E, 33, 16, -1, -13, h.a.w, h.a.r, 12, 19, -20, 95, -105, 68, 23, h.a.f24179i, -89, 126, 61, 100, 93, 25, 115, 96, -127, 79, h.a.G, 34, 42, h.a.f24175c, -120, 70, -18, -72, 20, h.a.I, 94, 11, h.a.F, h.a.K, 50, 58, 10, 73, 6, 36, 92, h.a.g, h.a.x, -84, 98, -111, -107, -28, 121, -25, h.a.m, 55, 109, -115, h.a.z, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, -76, h.a.f24181k, -24, h.a.H, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, h.a.f24177f, 29, -98, -31, -8, -104, 17, 105, h.a.D, -114, -108, -101, 30, -121, -23, h.a.s, 85, 40, h.a.J, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, 22};
    private static final byte[] SB2_sbox = {-30, 78, 84, -4, -108, h.a.g, 74, h.a.q, 98, 13, 106, 70, 60, 77, -117, h.a.v, 94, -6, 100, h.a.p, -76, -105, -66, 43, PSSSigner.TRAILER_IMPLICIT, 119, 46, 3, h.a.x, 25, 89, h.a.f24177f, 29, 6, 65, 107, 85, -16, -103, 105, -22, -100, 24, -82, 99, h.a.J, -25, -69, 0, 115, 102, -5, -106, 76, -123, -28, 58, 9, 69, -86, 15, -18, 16, -21, 45, 127, -12, 41, -84, h.a.t, -83, -111, -115, 120, h.a.m, -107, -7, 47, h.a.s, h.a.r, 8, 122, -120, 56, 92, -125, 42, 40, 71, h.a.F, -72, h.a.l, -109, -92, 18, 83, -1, -121, 14, 49, 54, 33, 88, 72, 1, -114, 55, 116, 50, h.a.o, -23, -79, -73, -85, 12, h.a.B, h.a.f24179i, 86, 66, 38, 7, -104, 96, h.a.D, -74, -71, 17, 64, -20, 32, -116, -67, h.a.d, h.a.n, -124, 4, 73, 35, -15, 79, 80, 31, 19, h.a.G, h.a.C, h.a.f24176e, -98, 87, -29, h.a.f24178h, 123, 101, 59, 2, -113, 62, -24, 37, -110, -27, 21, h.a.H, -3, 23, -87, -65, h.a.y, -102, 126, h.a.f24180j, 57, 103, -2, 118, -99, 67, -89, -31, h.a.u, -11, 104, -14, 27, 52, 112, 5, -93, -118, h.a.z, 121, -122, -88, 48, h.a.f24181k, 81, 75, 30, -90, 39, -10, 53, h.a.w, 110, 36, 22, -126, 95, h.a.E, -26, 117, -94, -17, 44, -78, 28, -97, 93, 111, -128, 10, 114, 68, -101, 108, h.a.f24175c, 11, 91, 51, 125, 90, 82, -13, 97, -95, -9, -80, h.a.A, 63, 124, 109, -19, 20, h.a.K, -91, 61, 34, -77, -8, -119, h.a.I, 113, 26, -81, -70, -75, -127};
    private static final byte[] SB3_sbox = {82, 9, 106, h.a.z, 48, 54, -91, 56, -65, 64, -93, -98, -127, -13, h.a.B, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, h.a.f24179i, h.a.I, -23, h.a.p, 84, 123, -108, 50, -90, h.a.g, 35, 61, -18, 76, -107, 11, 66, -6, h.a.f24178h, 78, 8, 46, -95, 102, 40, h.a.D, 36, -78, 118, 91, -94, 73, 109, -117, h.a.v, 37, 114, -8, -10, 100, -122, 104, -104, 22, h.a.y, -92, 92, h.a.q, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, h.a.E, 94, 21, 70, 87, -89, -115, -99, -124, h.a.f24175c, h.a.C, -85, 0, -116, PSSSigner.TRAILER_IMPLICIT, h.a.x, 10, -9, -28, 88, 5, -72, -77, 69, 6, h.a.u, 44, 30, -113, h.a.o, 63, 15, 2, h.a.f24177f, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, h.a.G, -22, -105, -14, h.a.t, h.a.s, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, 28, 117, h.a.J, 110, 71, -15, 26, 113, 29, 41, h.a.f24180j, -119, 111, -73, 98, 14, -86, 24, -66, 27, -4, 86, 62, 75, h.a.f24181k, h.a.w, 121, 32, -102, h.a.F, h.a.f24176e, -2, 120, h.a.r, 90, -12, 31, h.a.H, -88, 51, -120, 7, h.a.l, 49, -79, 18, 16, 89, 39, -128, -20, 95, 96, 81, 127, -87, 25, -75, 74, 13, 45, -27, 122, -97, -109, h.a.n, -100, -17, h.a.d, h.a.K, 59, 77, -82, 42, -11, -80, h.a.m, -21, -69, 60, -125, 83, -103, 97, 23, 43, 4, 126, -70, 119, h.a.A, 38, -31, 105, 20, 99, 85, 33, 12, 125};
    private static final byte[] SB4_sbox = {48, 104, -103, 27, -121, -71, 33, 120, 80, 57, h.a.F, -31, 114, 9, 98, 60, 62, 126, 94, -114, -15, h.a.d, h.a.q, -93, 42, 29, -5, -74, h.a.A, 32, h.a.f24179i, -115, -127, 101, -11, -119, h.a.p, -99, 119, h.a.f24181k, 87, 67, 86, 23, h.a.y, 64, 26, 77, h.a.f24176e, 99, 108, -29, -73, h.a.m, 100, 106, 83, -86, 56, -104, 12, -12, -101, -19, 127, 34, 118, -81, h.a.H, 58, 11, 88, 103, -120, 6, h.a.f24178h, 53, 13, 1, -117, -116, h.a.g, -26, 95, 2, 36, 117, -109, 102, 30, -27, -30, 84, h.a.C, 16, h.a.s, 122, -24, 8, 44, 18, -105, 50, -85, -76, 39, 10, 35, h.a.J, -17, h.a.o, h.a.D, -72, -6, h.a.G, 49, 107, h.a.v, -83, 25, 73, -67, 81, -106, -18, -28, -88, 65, h.a.E, -1, h.a.r, 85, -122, 54, -66, 97, 82, -8, -69, 14, -126, 72, 105, -102, h.a.K, 71, -98, 92, 4, 75, 52, 21, 121, 38, -89, h.a.I, 41, -82, -110, h.a.B, -124, -23, h.a.w, -70, 93, -13, h.a.f24180j, -80, -65, -92, 59, 113, 68, 70, 43, -4, -21, 111, h.a.z, -10, 20, -2, 124, 112, 90, 125, -3, 47, 24, -125, 22, -91, -111, 31, 5, -107, 116, -87, h.a.f24177f, 91, 74, -123, 109, 19, 7, 79, 78, 69, -78, 15, h.a.n, 28, -90, PSSSigner.TRAILER_IMPLICIT, -20, 115, h.a.f24175c, 123, h.a.t, 89, -113, -95, -7, 45, -14, -79, 0, -108, 55, -97, h.a.u, 46, -100, 110, 40, 63, -128, -16, 61, h.a.x, 37, -118, -75, -25, 66, -77, h.a.l, -22, -9, 76, 17, 51, 3, -94, -84, 96};
    boolean forEncryption;
    private byte[][] roundKeys;

    public ARIAEngine() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 256));
    }

    public static void A(byte[] bArr) {
        byte b2 = bArr[0];
        byte b3 = bArr[1];
        byte b4 = bArr[2];
        byte b5 = bArr[3];
        byte b6 = bArr[4];
        byte b7 = bArr[5];
        byte b8 = bArr[6];
        byte b9 = bArr[7];
        byte b10 = bArr[8];
        byte b11 = bArr[9];
        byte b12 = bArr[10];
        byte b13 = bArr[11];
        byte b14 = bArr[12];
        byte b15 = bArr[13];
        byte b16 = bArr[14];
        byte b17 = bArr[15];
        bArr[0] = (byte) ((((((b5 ^ b6) ^ b8) ^ b10) ^ b11) ^ b15) ^ b16);
        bArr[1] = (byte) ((((((b4 ^ b7) ^ b9) ^ b10) ^ b11) ^ b14) ^ b17);
        bArr[2] = (byte) ((((((b3 ^ b6) ^ b8) ^ b12) ^ b13) ^ b14) ^ b17);
        bArr[3] = (byte) ((((((b2 ^ b7) ^ b9) ^ b12) ^ b13) ^ b15) ^ b16);
        int i2 = b2 ^ b4;
        bArr[4] = (byte) (((((i2 ^ b7) ^ b10) ^ b13) ^ b16) ^ b17);
        int i3 = b3 ^ b5;
        bArr[5] = (byte) (((((i3 ^ b6) ^ b11) ^ b12) ^ b16) ^ b17);
        bArr[6] = (byte) (((((i2 ^ b9) ^ b11) ^ b12) ^ b14) ^ b15);
        bArr[7] = (byte) (((((i3 ^ b8) ^ b10) ^ b13) ^ b14) ^ b15);
        int i4 = b2 ^ b3;
        bArr[8] = (byte) (((((i4 ^ b6) ^ b9) ^ b12) ^ b15) ^ b17);
        bArr[9] = (byte) (((((i4 ^ b7) ^ b8) ^ b13) ^ b14) ^ b16);
        int i5 = b4 ^ b5;
        bArr[10] = (byte) (((((i5 ^ b7) ^ b8) ^ b10) ^ b15) ^ b17);
        bArr[11] = (byte) (((((i5 ^ b6) ^ b9) ^ b11) ^ b14) ^ b16);
        int i6 = b3 ^ b4;
        bArr[12] = (byte) (((((i6 ^ b8) ^ b9) ^ b11) ^ b13) ^ b14);
        int i7 = b2 ^ b5;
        bArr[13] = (byte) (((((i7 ^ b8) ^ b9) ^ b10) ^ b12) ^ b15);
        bArr[14] = (byte) (((((i7 ^ b6) ^ b7) ^ b11) ^ b13) ^ b16);
        bArr[15] = (byte) (((((i6 ^ b6) ^ b7) ^ b10) ^ b12) ^ b17);
    }

    public static void FE(byte[] bArr, byte[] bArr2) {
        xor(bArr, bArr2);
        SL2(bArr);
        A(bArr);
    }

    public static void FO(byte[] bArr, byte[] bArr2) {
        xor(bArr, bArr2);
        SL1(bArr);
        A(bArr);
    }

    public static byte SB1(byte b2) {
        return SB1_sbox[b2 & 255];
    }

    public static byte SB2(byte b2) {
        return SB2_sbox[b2 & 255];
    }

    public static byte SB3(byte b2) {
        return SB3_sbox[b2 & 255];
    }

    public static byte SB4(byte b2) {
        return SB4_sbox[b2 & 255];
    }

    public static void SL1(byte[] bArr) {
        bArr[0] = SB1(bArr[0]);
        bArr[1] = SB2(bArr[1]);
        bArr[2] = SB3(bArr[2]);
        bArr[3] = SB4(bArr[3]);
        bArr[4] = SB1(bArr[4]);
        bArr[5] = SB2(bArr[5]);
        bArr[6] = SB3(bArr[6]);
        bArr[7] = SB4(bArr[7]);
        bArr[8] = SB1(bArr[8]);
        bArr[9] = SB2(bArr[9]);
        bArr[10] = SB3(bArr[10]);
        bArr[11] = SB4(bArr[11]);
        bArr[12] = SB1(bArr[12]);
        bArr[13] = SB2(bArr[13]);
        bArr[14] = SB3(bArr[14]);
        bArr[15] = SB4(bArr[15]);
    }

    public static void SL2(byte[] bArr) {
        bArr[0] = SB3(bArr[0]);
        bArr[1] = SB4(bArr[1]);
        bArr[2] = SB1(bArr[2]);
        bArr[3] = SB2(bArr[3]);
        bArr[4] = SB3(bArr[4]);
        bArr[5] = SB4(bArr[5]);
        bArr[6] = SB1(bArr[6]);
        bArr[7] = SB2(bArr[7]);
        bArr[8] = SB3(bArr[8]);
        bArr[9] = SB4(bArr[9]);
        bArr[10] = SB1(bArr[10]);
        bArr[11] = SB2(bArr[11]);
        bArr[12] = SB3(bArr[12]);
        bArr[13] = SB4(bArr[13]);
        bArr[14] = SB1(bArr[14]);
        bArr[15] = SB2(bArr[15]);
    }

    private int bitsOfSecurity() {
        byte[][] bArr = this.roundKeys;
        if (bArr.length > 13) {
            return bArr.length > 15 ? 256 : 192;
        }
        return 128;
    }

    public static byte[][] keySchedule(boolean z, byte[] bArr) {
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            md.n("Key length not 128/192/256 bits.");
            return null;
        }
        int i2 = length >>> 3;
        int i3 = i2 - 2;
        byte[][] bArr2 = C;
        byte[] bArr3 = bArr2[i3];
        byte[] bArr4 = bArr2[(i2 - 1) % 3];
        byte[] bArr5 = bArr2[i2 % 3];
        byte[] bArr6 = new byte[16];
        byte[] bArr7 = new byte[16];
        System.arraycopy(bArr, 0, bArr6, 0, 16);
        System.arraycopy(bArr, 16, bArr7, 0, length - 16);
        byte[] bArr8 = new byte[16];
        byte[] bArr9 = new byte[16];
        byte[] bArr10 = new byte[16];
        byte[] bArr11 = new byte[16];
        System.arraycopy(bArr6, 0, bArr8, 0, 16);
        System.arraycopy(bArr8, 0, bArr9, 0, 16);
        FO(bArr9, bArr3);
        xor(bArr9, bArr7);
        System.arraycopy(bArr9, 0, bArr10, 0, 16);
        FE(bArr10, bArr4);
        xor(bArr10, bArr8);
        System.arraycopy(bArr10, 0, bArr11, 0, 16);
        FO(bArr11, bArr5);
        xor(bArr11, bArr9);
        int i4 = i3 * 2;
        int i5 = i4 + 12;
        byte[][] bArr12 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i4 + 13, 16);
        keyScheduleRound(bArr12[0], bArr8, bArr9, 19);
        keyScheduleRound(bArr12[1], bArr9, bArr10, 19);
        keyScheduleRound(bArr12[2], bArr10, bArr11, 19);
        keyScheduleRound(bArr12[3], bArr11, bArr8, 19);
        keyScheduleRound(bArr12[4], bArr8, bArr9, 31);
        keyScheduleRound(bArr12[5], bArr9, bArr10, 31);
        keyScheduleRound(bArr12[6], bArr10, bArr11, 31);
        keyScheduleRound(bArr12[7], bArr11, bArr8, 31);
        keyScheduleRound(bArr12[8], bArr8, bArr9, 67);
        keyScheduleRound(bArr12[9], bArr9, bArr10, 67);
        keyScheduleRound(bArr12[10], bArr10, bArr11, 67);
        keyScheduleRound(bArr12[11], bArr11, bArr8, 67);
        keyScheduleRound(bArr12[12], bArr8, bArr9, 97);
        if (i5 > 12) {
            keyScheduleRound(bArr12[13], bArr9, bArr10, 97);
            keyScheduleRound(bArr12[14], bArr10, bArr11, 97);
            if (i5 > 14) {
                keyScheduleRound(bArr12[15], bArr11, bArr8, 97);
                keyScheduleRound(bArr12[16], bArr8, bArr9, 109);
            }
        }
        if (!z) {
            reverseKeys(bArr12);
            for (int i6 = 1; i6 < i5; i6++) {
                A(bArr12[i6]);
            }
        }
        return bArr12;
    }

    public static void keyScheduleRound(byte[] bArr, byte[] bArr2, byte[] bArr3, int i2) {
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        int i5 = 8 - i4;
        int i6 = bArr3[15 - i3] & 255;
        int i7 = 0;
        while (i7 < 16) {
            int i8 = bArr3[(i7 - i3) & 15] & 255;
            bArr[i7] = (byte) (((i6 << i5) | (i8 >>> i4)) ^ (bArr2[i7] & 255));
            i7++;
            i6 = i8;
        }
    }

    public static void reverseKeys(byte[][] bArr) {
        int length = bArr.length;
        int i2 = length / 2;
        int i3 = length - 1;
        for (int i4 = 0; i4 < i2; i4++) {
            byte[] bArr2 = bArr[i4];
            int i5 = i3 - i4;
            bArr[i4] = bArr[i5];
            bArr[i5] = bArr2;
        }
    }

    public static void xor(byte[] bArr, byte[] bArr2) {
        Bytes.xorTo(16, bArr2, bArr);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "ARIA";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof KeyParameter)) {
            md.n(a.l("invalid parameter passed to ARIA init - ", cipherParameters));
            return;
        }
        this.forEncryption = z;
        this.roundKeys = keySchedule(z, ((KeyParameter) cipherParameters).getKey());
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), bitsOfSecurity(), cipherParameters, Utils.getPurpose(z)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i2, byte[] bArr2, int i3) throws IllegalStateException, DataLengthException {
        if (this.roundKeys == null) {
            md.k("ARIA engine not initialised");
            return 0;
        }
        if (i2 > bArr.length - 16) {
            b21.q("input buffer too short");
            return 0;
        }
        if (i3 > bArr2.length - 16) {
            mt.n("output buffer too short");
            return 0;
        }
        byte[] bArr3 = new byte[16];
        System.arraycopy(bArr, i2, bArr3, 0, 16);
        int length = this.roundKeys.length - 3;
        int i4 = 0;
        while (true) {
            byte[][] bArr4 = this.roundKeys;
            if (i4 >= length) {
                FO(bArr3, bArr4[i4]);
                xor(bArr3, this.roundKeys[i4 + 1]);
                SL2(bArr3);
                xor(bArr3, this.roundKeys[i4 + 2]);
                System.arraycopy(bArr3, 0, bArr2, i3, 16);
                return 16;
            }
            int i5 = i4 + 1;
            FO(bArr3, bArr4[i4]);
            i4 += 2;
            FE(bArr3, this.roundKeys[i5]);
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
