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
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class AESLightEngine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;
    private static final int m1 = -2139062144;
    private static final int m2 = 2139062143;
    private static final int m3 = 27;
    private static final int m4 = -1061109568;
    private static final int m5 = 1061109567;
    private int ROUNDS;
    private int[][] WorkingKey = null;
    private boolean forEncryption;
    private static final byte[] S = {99, 124, 119, 123, -14, 107, 111, h.a.f24180j, 48, 1, 103, 43, -2, h.a.B, -85, 118, h.a.o, -126, h.a.n, 125, -6, 89, 71, -16, -83, h.a.y, -94, -81, -100, -92, 114, h.a.f24176e, -73, -3, -109, 38, 54, 63, -9, h.a.q, 52, -91, -27, -15, 113, h.a.C, 49, 21, 4, h.a.l, 35, h.a.f24178h, 24, -106, 5, -102, 7, 18, -128, -30, -21, 39, -78, 117, 9, -125, 44, 26, 27, 110, 90, h.a.d, 82, 59, h.a.A, -77, 41, -29, 47, -124, 83, h.a.v, 0, -19, 32, -4, -79, 91, 106, h.a.p, -66, 57, 74, 76, 88, h.a.t, h.a.u, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, 127, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, h.a.E, 33, 16, -1, -13, h.a.w, h.a.r, 12, 19, -20, 95, -105, 68, 23, h.a.f24179i, -89, 126, 61, 100, 93, 25, 115, 96, -127, 79, h.a.G, 34, 42, h.a.f24175c, -120, 70, -18, -72, 20, h.a.I, 94, 11, h.a.F, h.a.K, 50, 58, 10, 73, 6, 36, 92, h.a.g, h.a.x, -84, 98, -111, -107, -28, 121, -25, h.a.m, 55, 109, -115, h.a.z, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, -76, h.a.f24181k, -24, h.a.H, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, h.a.f24177f, 29, -98, -31, -8, -104, 17, 105, h.a.D, -114, -108, -101, 30, -121, -23, h.a.s, 85, 40, h.a.J, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, 22};
    private static final byte[] Si = {82, 9, 106, h.a.z, 48, 54, -91, 56, -65, 64, -93, -98, -127, -13, h.a.B, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, h.a.f24179i, h.a.I, -23, h.a.p, 84, 123, -108, 50, -90, h.a.g, 35, 61, -18, 76, -107, 11, 66, -6, h.a.f24178h, 78, 8, 46, -95, 102, 40, h.a.D, 36, -78, 118, 91, -94, 73, 109, -117, h.a.v, 37, 114, -8, -10, 100, -122, 104, -104, 22, h.a.y, -92, 92, h.a.q, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, h.a.E, 94, 21, 70, 87, -89, -115, -99, -124, h.a.f24175c, h.a.C, -85, 0, -116, PSSSigner.TRAILER_IMPLICIT, h.a.x, 10, -9, -28, 88, 5, -72, -77, 69, 6, h.a.u, 44, 30, -113, h.a.o, 63, 15, 2, h.a.f24177f, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, h.a.G, -22, -105, -14, h.a.t, h.a.s, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, 28, 117, h.a.J, 110, 71, -15, 26, 113, 29, 41, h.a.f24180j, -119, 111, -73, 98, 14, -86, 24, -66, 27, -4, 86, 62, 75, h.a.f24181k, h.a.w, 121, 32, -102, h.a.F, h.a.f24176e, -2, 120, h.a.r, 90, -12, 31, h.a.H, -88, 51, -120, 7, h.a.l, 49, -79, 18, 16, 89, 39, -128, -20, 95, 96, 81, 127, -87, 25, -75, 74, 13, 45, -27, 122, -97, -109, h.a.n, -100, -17, h.a.d, h.a.K, 59, 77, -82, 42, -11, -80, h.a.m, -21, -69, 60, -125, 83, -103, 97, 23, 43, 4, 126, -70, 119, h.a.A, 38, -31, 105, 20, 99, 85, 33, 12, 125};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145};

    public AESLightEngine() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), bitsOfSecurity()));
    }

    private static int FFmulX(int i2) {
        return (((i2 & m1) >>> 7) * 27) ^ ((m2 & i2) << 1);
    }

    private static int FFmulX2(int i2) {
        int i3 = (m5 & i2) << 2;
        int i4 = i2 & m4;
        int i5 = i4 ^ (i4 >>> 1);
        return (i5 >>> 5) ^ (i3 ^ (i5 >>> 2));
    }

    private int bitsOfSecurity() {
        int[][] iArr = this.WorkingKey;
        if (iArr == null) {
            return 256;
        }
        return (iArr.length - 7) << 5;
    }

    private void decryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3, int[][] iArr) {
        int iLittleEndianToInt = Pack.littleEndianToInt(bArr, i2);
        int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, i2 + 4);
        int iLittleEndianToInt3 = Pack.littleEndianToInt(bArr, i2 + 8);
        int iLittleEndianToInt4 = Pack.littleEndianToInt(bArr, i2 + 12);
        int i4 = this.ROUNDS;
        int[] iArr2 = iArr[i4];
        char c2 = 0;
        int i5 = iLittleEndianToInt ^ iArr2[0];
        int i6 = iLittleEndianToInt2 ^ iArr2[1];
        int i7 = iLittleEndianToInt3 ^ iArr2[2];
        int i8 = i4 - 1;
        int iInv_mcol = iLittleEndianToInt4 ^ iArr2[3];
        while (i8 > 1) {
            byte[] bArr3 = Si;
            int iInv_mcol2 = inv_mcol((((bArr3[i5 & 255] & 255) ^ ((bArr3[(iInv_mcol >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i7 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i6 >> 24) & 255] << 24)) ^ iArr[i8][c2];
            int iInv_mcol3 = inv_mcol((((bArr3[i6 & 255] & 255) ^ ((bArr3[(i5 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(iInv_mcol >> 16) & 255] & 255) << 16)) ^ (bArr3[(i7 >> 24) & 255] << 24)) ^ iArr[i8][1];
            int iInv_mcol4 = inv_mcol((((bArr3[i7 & 255] & 255) ^ ((bArr3[(i6 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i5 >> 16) & 255] & 255) << 16)) ^ (bArr3[(iInv_mcol >> 24) & 255] << 24)) ^ iArr[i8][2];
            int iInv_mcol5 = inv_mcol((((bArr3[iInv_mcol & 255] & 255) ^ ((bArr3[(i7 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i6 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i5 >> 24) & 255] << 24));
            int i9 = i8 - 1;
            int i10 = iInv_mcol5 ^ iArr[i8][3];
            int iInv_mcol6 = inv_mcol((((bArr3[iInv_mcol2 & 255] & 255) ^ ((bArr3[(i10 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(iInv_mcol4 >> 16) & 255] & 255) << 16)) ^ (bArr3[(iInv_mcol3 >> 24) & 255] << 24)) ^ iArr[i9][c2];
            int iInv_mcol7 = inv_mcol((((bArr3[iInv_mcol3 & 255] & 255) ^ ((bArr3[(iInv_mcol2 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i10 >> 16) & 255] & 255) << 16)) ^ (bArr3[(iInv_mcol4 >> 24) & 255] << 24)) ^ iArr[i9][1];
            char c3 = c2;
            int iInv_mcol8 = inv_mcol(((((bArr3[(iInv_mcol3 >> 8) & 255] & 255) << 8) ^ (bArr3[iInv_mcol4 & 255] & 255)) ^ ((bArr3[(iInv_mcol2 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i10 >> 24) & 255] << 24)) ^ iArr[i9][2];
            i8 -= 2;
            iInv_mcol = inv_mcol((((bArr3[i10 & 255] & 255) ^ ((bArr3[(iInv_mcol4 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(iInv_mcol3 >> 16) & 255] & 255) << 16)) ^ (bArr3[(iInv_mcol2 >> 24) & 255] << 24)) ^ iArr[i9][3];
            i5 = iInv_mcol6;
            i6 = iInv_mcol7;
            i7 = iInv_mcol8;
            c2 = c3;
        }
        char c4 = c2;
        byte[] bArr4 = Si;
        int iInv_mcol9 = inv_mcol((((bArr4[i5 & 255] & 255) ^ ((bArr4[(iInv_mcol >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i7 >> 16) & 255] & 255) << 16)) ^ (bArr4[(i6 >> 24) & 255] << 24)) ^ iArr[i8][c4];
        int iInv_mcol10 = inv_mcol((((bArr4[i6 & 255] & 255) ^ ((bArr4[(i5 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(iInv_mcol >> 16) & 255] & 255) << 16)) ^ (bArr4[(i7 >> 24) & 255] << 24)) ^ iArr[i8][1];
        int iInv_mcol11 = inv_mcol((((bArr4[i7 & 255] & 255) ^ ((bArr4[(i6 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i5 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iInv_mcol >> 24) & 255] << 24)) ^ iArr[i8][2];
        int iInv_mcol12 = inv_mcol((((bArr4[iInv_mcol & 255] & 255) ^ ((bArr4[(i7 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i6 >> 16) & 255] & 255) << 16)) ^ (bArr4[(i5 >> 24) & 255] << 24)) ^ iArr[i8][3];
        int i11 = (((bArr4[iInv_mcol9 & 255] & 255) ^ ((bArr4[(iInv_mcol12 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(iInv_mcol11 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iInv_mcol10 >> 24) & 255] << 24);
        int[] iArr3 = iArr[c4];
        int i12 = i11 ^ iArr3[c4];
        int i13 = ((((bArr4[iInv_mcol10 & 255] & 255) ^ ((bArr4[(iInv_mcol9 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(iInv_mcol12 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iInv_mcol11 >> 24) & 255] << 24)) ^ iArr3[1];
        int i14 = ((((bArr4[iInv_mcol11 & 255] & 255) ^ ((bArr4[(iInv_mcol10 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(iInv_mcol9 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iInv_mcol12 >> 24) & 255] << 24)) ^ iArr3[2];
        int i15 = ((((bArr4[iInv_mcol12 & 255] & 255) ^ ((bArr4[(iInv_mcol11 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(iInv_mcol10 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iInv_mcol9 >> 24) & 255] << 24)) ^ iArr3[3];
        Pack.intToLittleEndian(i12, bArr2, i3);
        Pack.intToLittleEndian(i13, bArr2, i3 + 4);
        Pack.intToLittleEndian(i14, bArr2, i3 + 8);
        Pack.intToLittleEndian(i15, bArr2, i3 + 12);
    }

    private void encryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3, int[][] iArr) {
        int iLittleEndianToInt = Pack.littleEndianToInt(bArr, i2);
        int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, i2 + 4);
        int iLittleEndianToInt3 = Pack.littleEndianToInt(bArr, i2 + 8);
        int iLittleEndianToInt4 = Pack.littleEndianToInt(bArr, i2 + 12);
        char c2 = 0;
        int[] iArr2 = iArr[0];
        int i4 = iLittleEndianToInt ^ iArr2[0];
        int i5 = 1;
        int i6 = iLittleEndianToInt2 ^ iArr2[1];
        int i7 = iLittleEndianToInt3 ^ iArr2[2];
        int iMcol = iLittleEndianToInt4 ^ iArr2[3];
        int i8 = 1;
        while (i8 < this.ROUNDS - i5) {
            byte[] bArr3 = S;
            int iMcol2 = mcol((((bArr3[i4 & 255] & 255) ^ ((bArr3[(i6 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i7 >> 16) & 255] & 255) << 16)) ^ (bArr3[(iMcol >> 24) & 255] << 24)) ^ iArr[i8][c2];
            int iMcol3 = mcol((((bArr3[i6 & 255] & 255) ^ ((bArr3[(i7 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(iMcol >> 16) & 255] & 255) << 16)) ^ (bArr3[(i4 >> 24) & 255] << 24)) ^ iArr[i8][i5];
            char c3 = c2;
            int iMcol4 = mcol(((((bArr3[(iMcol >> 8) & 255] & 255) << 8) ^ (bArr3[i7 & 255] & 255)) ^ ((bArr3[(i4 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i6 >> 24) & 255] << 24)) ^ iArr[i8][2];
            int iMcol5 = mcol((((bArr3[iMcol & 255] & 255) ^ ((bArr3[(i4 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i6 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i7 >> 24) & 255] << 24));
            int i9 = i8 + 1;
            int i10 = iMcol5 ^ iArr[i8][3];
            int iMcol6 = mcol((((bArr3[iMcol2 & 255] & 255) ^ ((bArr3[(iMcol3 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(iMcol4 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i10 >> 24) & 255] << 24)) ^ iArr[i9][c3];
            int iMcol7 = mcol((((bArr3[iMcol3 & 255] & 255) ^ ((bArr3[(iMcol4 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i10 >> 16) & 255] & 255) << 16)) ^ (bArr3[(iMcol2 >> 24) & 255] << 24)) ^ iArr[i9][i5];
            int i11 = i5;
            int iMcol8 = mcol(((((bArr3[(i10 >> 8) & 255] & 255) << 8) ^ (bArr3[iMcol4 & 255] & 255)) ^ ((bArr3[(iMcol2 >> 16) & 255] & 255) << 16)) ^ (bArr3[(iMcol3 >> 24) & 255] << 24)) ^ iArr[i9][2];
            i8 += 2;
            iMcol = mcol((((bArr3[i10 & 255] & 255) ^ ((bArr3[(iMcol2 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(iMcol3 >> 16) & 255] & 255) << 16)) ^ (bArr3[(iMcol4 >> 24) & 255] << 24)) ^ iArr[i9][3];
            c2 = c3;
            i4 = iMcol6;
            i6 = iMcol7;
            i7 = iMcol8;
            i5 = i11;
        }
        char c4 = c2;
        int i12 = i5;
        byte[] bArr4 = S;
        int iMcol9 = mcol((((bArr4[i4 & 255] & 255) ^ ((bArr4[(i6 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i7 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iMcol >> 24) & 255] << 24)) ^ iArr[i8][c4];
        int iMcol10 = mcol((((bArr4[i6 & 255] & 255) ^ ((bArr4[(i7 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(iMcol >> 16) & 255] & 255) << 16)) ^ (bArr4[(i4 >> 24) & 255] << 24)) ^ iArr[i8][i12];
        int iMcol11 = mcol((((bArr4[i7 & 255] & 255) ^ ((bArr4[(iMcol >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i4 >> 16) & 255] & 255) << 16)) ^ (bArr4[(i6 >> 24) & 255] << 24)) ^ iArr[i8][2];
        int iMcol12 = mcol((((bArr4[iMcol & 255] & 255) ^ ((bArr4[(i4 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i6 >> 16) & 255] & 255) << 16)) ^ (bArr4[(i7 >> 24) & 255] << 24)) ^ iArr[i8][3];
        int i13 = (((bArr4[iMcol9 & 255] & 255) ^ ((bArr4[(iMcol10 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(iMcol11 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iMcol12 >> 24) & 255] << 24);
        int[] iArr3 = iArr[i8 + 1];
        int i14 = i13 ^ iArr3[c4];
        int i15 = ((((bArr4[iMcol10 & 255] & 255) ^ ((bArr4[(iMcol11 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(iMcol12 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iMcol9 >> 24) & 255] << 24)) ^ iArr3[i12];
        int i16 = iArr3[2] ^ ((((bArr4[iMcol11 & 255] & 255) ^ ((bArr4[(iMcol12 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(iMcol9 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iMcol10 >> 24) & 255] << 24));
        int i17 = ((((bArr4[iMcol12 & 255] & 255) ^ ((bArr4[(iMcol9 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(iMcol10 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iMcol11 >> 24) & 255] << 24)) ^ iArr3[3];
        Pack.intToLittleEndian(i14, bArr2, i3);
        Pack.intToLittleEndian(i15, bArr2, i3 + 4);
        Pack.intToLittleEndian(i16, bArr2, i3 + 8);
        Pack.intToLittleEndian(i17, bArr2, i3 + 12);
    }

    private int[][] generateWorkingKey(byte[] bArr, boolean z) {
        int i2;
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            md.n("Key length not 128/192/256 bits.");
            return null;
        }
        int i3 = length >>> 2;
        this.ROUNDS = i3 + 6;
        int i4 = 1;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i3 + 7, 4);
        char c2 = 3;
        if (i3 == 4) {
            i2 = 1;
            int iLittleEndianToInt = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = iLittleEndianToInt;
            int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = iLittleEndianToInt2;
            int iLittleEndianToInt3 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = iLittleEndianToInt3;
            int iLittleEndianToInt4 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = iLittleEndianToInt4;
            for (int i5 = 1; i5 <= 10; i5++) {
                iLittleEndianToInt ^= subWord(shift(iLittleEndianToInt4, 8)) ^ rcon[i5 - 1];
                int[] iArr2 = iArr[i5];
                iArr2[0] = iLittleEndianToInt;
                iLittleEndianToInt2 ^= iLittleEndianToInt;
                iArr2[1] = iLittleEndianToInt2;
                iLittleEndianToInt3 ^= iLittleEndianToInt2;
                iArr2[2] = iLittleEndianToInt3;
                iLittleEndianToInt4 ^= iLittleEndianToInt3;
                iArr2[3] = iLittleEndianToInt4;
            }
        } else if (i3 == 6) {
            i2 = 1;
            int iLittleEndianToInt5 = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = iLittleEndianToInt5;
            int iLittleEndianToInt6 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = iLittleEndianToInt6;
            int iLittleEndianToInt7 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = iLittleEndianToInt7;
            int iLittleEndianToInt8 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = iLittleEndianToInt8;
            int iLittleEndianToInt9 = Pack.littleEndianToInt(bArr, 16);
            int iLittleEndianToInt10 = Pack.littleEndianToInt(bArr, 20);
            int i6 = 1;
            int i7 = 1;
            while (true) {
                int[] iArr3 = iArr[i6];
                iArr3[0] = iLittleEndianToInt9;
                iArr3[1] = iLittleEndianToInt10;
                int iSubWord = iLittleEndianToInt5 ^ (subWord(shift(iLittleEndianToInt10, 8)) ^ i7);
                int[] iArr4 = iArr[i6];
                iArr4[2] = iSubWord;
                int i8 = iLittleEndianToInt6 ^ iSubWord;
                iArr4[3] = i8;
                int i9 = iLittleEndianToInt7 ^ i8;
                int[] iArr5 = iArr[i6 + 1];
                iArr5[0] = i9;
                int i10 = iLittleEndianToInt8 ^ i9;
                iArr5[1] = i10;
                int i11 = iLittleEndianToInt9 ^ i10;
                iArr5[2] = i11;
                int i12 = iLittleEndianToInt10 ^ i11;
                iArr5[3] = i12;
                int iSubWord2 = subWord(shift(i12, 8)) ^ (i7 << 1);
                i7 <<= 2;
                iLittleEndianToInt5 = iSubWord ^ iSubWord2;
                int[] iArr6 = iArr[i6 + 2];
                iArr6[0] = iLittleEndianToInt5;
                iLittleEndianToInt6 = i8 ^ iLittleEndianToInt5;
                iArr6[1] = iLittleEndianToInt6;
                iLittleEndianToInt7 = i9 ^ iLittleEndianToInt6;
                iArr6[2] = iLittleEndianToInt7;
                iLittleEndianToInt8 = i10 ^ iLittleEndianToInt7;
                iArr6[3] = iLittleEndianToInt8;
                i6 += 3;
                if (i6 >= 13) {
                    break;
                }
                iLittleEndianToInt9 = i11 ^ iLittleEndianToInt8;
                iLittleEndianToInt10 = i12 ^ iLittleEndianToInt9;
            }
        } else {
            if (i3 != 8) {
                md.k("Should never get here");
                return null;
            }
            int iLittleEndianToInt11 = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = iLittleEndianToInt11;
            int iLittleEndianToInt12 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = iLittleEndianToInt12;
            int iLittleEndianToInt13 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = iLittleEndianToInt13;
            int iLittleEndianToInt14 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = iLittleEndianToInt14;
            int iLittleEndianToInt15 = Pack.littleEndianToInt(bArr, 16);
            iArr[1][0] = iLittleEndianToInt15;
            int iLittleEndianToInt16 = Pack.littleEndianToInt(bArr, 20);
            iArr[1][1] = iLittleEndianToInt16;
            int iLittleEndianToInt17 = Pack.littleEndianToInt(bArr, 24);
            iArr[1][2] = iLittleEndianToInt17;
            int iLittleEndianToInt18 = Pack.littleEndianToInt(bArr, 28);
            iArr[1][3] = iLittleEndianToInt18;
            int i13 = 1;
            int i14 = 2;
            while (true) {
                int iSubWord3 = subWord(shift(iLittleEndianToInt18, 8)) ^ i13;
                i13 <<= i4;
                iLittleEndianToInt11 ^= iSubWord3;
                int[] iArr7 = iArr[i14];
                iArr7[0] = iLittleEndianToInt11;
                iLittleEndianToInt12 ^= iLittleEndianToInt11;
                iArr7[i4] = iLittleEndianToInt12;
                iLittleEndianToInt13 ^= iLittleEndianToInt12;
                iArr7[2] = iLittleEndianToInt13;
                iLittleEndianToInt14 ^= iLittleEndianToInt13;
                iArr7[c2] = iLittleEndianToInt14;
                i2 = i4;
                int i15 = i14 + 1;
                char c3 = c2;
                if (i15 >= 15) {
                    break;
                }
                iLittleEndianToInt15 ^= subWord(iLittleEndianToInt14);
                int[] iArr8 = iArr[i15];
                iArr8[0] = iLittleEndianToInt15;
                iLittleEndianToInt16 ^= iLittleEndianToInt15;
                iArr8[i2] = iLittleEndianToInt16;
                iLittleEndianToInt17 ^= iLittleEndianToInt16;
                iArr8[2] = iLittleEndianToInt17;
                iLittleEndianToInt18 ^= iLittleEndianToInt17;
                iArr8[c3] = iLittleEndianToInt18;
                i14 += 2;
                i4 = i2;
                c2 = c3;
            }
        }
        if (!z) {
            for (int i16 = i2; i16 < this.ROUNDS; i16++) {
                for (int i17 = 0; i17 < 4; i17++) {
                    int[] iArr9 = iArr[i16];
                    iArr9[i17] = inv_mcol(iArr9[i17]);
                }
            }
        }
        return iArr;
    }

    private static int inv_mcol(int i2) {
        int iShift = shift(i2, 8) ^ i2;
        int iFFmulX = i2 ^ FFmulX(iShift);
        int iFFmulX2 = iShift ^ FFmulX2(iFFmulX);
        return iFFmulX ^ (iFFmulX2 ^ shift(iFFmulX2, 16));
    }

    private static int mcol(int i2) {
        int iShift = shift(i2, 8);
        int i3 = i2 ^ iShift;
        return FFmulX(i3) ^ (iShift ^ shift(i3, 16));
    }

    private static int shift(int i2, int i3) {
        return (i2 << (-i3)) | (i2 >>> i3);
    }

    private static int subWord(int i2) {
        byte[] bArr = S;
        return (bArr[(i2 >> 24) & 255] << 24) | (bArr[i2 & 255] & 255) | ((bArr[(i2 >> 8) & 255] & 255) << 8) | ((bArr[(i2 >> 16) & 255] & 255) << 16);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "AES";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            md.n(a.l("invalid parameter passed to AES init - ", cipherParameters));
            return;
        }
        this.WorkingKey = generateWorkingKey(((KeyParameter) cipherParameters).getKey(), z);
        this.forEncryption = z;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), bitsOfSecurity(), cipherParameters, Utils.getPurpose(z)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i2, byte[] bArr2, int i3) {
        int[][] iArr = this.WorkingKey;
        if (iArr == null) {
            md.k("AES engine not initialised");
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
        if (this.forEncryption) {
            encryptBlock(bArr, i2, bArr2, i3, iArr);
        } else {
            decryptBlock(bArr, i2, bArr2, i3, iArr);
        }
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
