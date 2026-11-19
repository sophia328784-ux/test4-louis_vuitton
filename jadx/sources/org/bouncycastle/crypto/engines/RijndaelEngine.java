package org.bouncycastle.crypto.engines;

import com.batch.android.x0.h;
import defpackage.a;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import java.lang.reflect.Array;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;

/* JADX INFO: loaded from: classes5.dex */
public class RijndaelEngine implements BlockCipher {
    private static final int MAXKC = 64;
    private static final int MAXROUNDS = 14;
    private long A0;
    private long A1;
    private long A2;
    private long A3;
    private int BC;
    private long BC_MASK;
    private int ROUNDS;
    private int blockBits;
    private boolean forEncryption;
    private byte[] shifts0SC;
    private byte[] shifts1SC;
    private long[][] workingKey;
    private static final byte[] logtable = {0, 0, 25, 1, 50, 2, 26, h.a.f24181k, 75, h.a.l, 27, 104, 51, -18, h.a.J, 3, 100, 4, h.a.K, 14, 52, -115, -127, -17, 76, 113, 8, h.a.m, -8, 105, 28, h.a.f24177f, 125, h.a.g, 29, -75, -7, -71, 39, 106, 77, -28, -90, 114, -102, h.a.n, 9, 120, 101, 47, -118, 5, 33, 15, -31, 36, 18, -16, -126, 69, 53, -109, h.a.E, -114, -106, -113, h.a.F, -67, 54, h.a.u, h.a.s, -108, 19, 92, h.a.w, -15, 64, 70, -125, 56, 102, h.a.H, -3, 48, -65, 6, -117, 98, -77, 37, -30, -104, 34, -120, -111, 16, 126, 110, 72, h.a.f24178h, -93, -74, 30, 66, 58, 107, 40, 84, -6, -123, 61, -70, 43, 121, 10, 21, -101, -97, 94, h.a.o, 78, h.a.y, -84, -27, -13, 115, -89, 87, -81, 88, -88, 80, -12, -22, h.a.A, 116, 79, -82, -23, h.a.z, -25, -26, -83, -24, 44, h.a.B, 117, 122, -21, 22, 11, -11, 89, h.a.p, 95, -80, -100, -87, 81, h.a.d, 127, 12, -10, 111, 23, h.a.f24179i, 73, -20, h.a.C, 67, 31, 45, -92, 118, 123, -73, h.a.q, -69, 62, 90, -5, 96, -79, -122, 59, 82, -95, 108, -86, 85, 41, -99, -105, -78, -121, h.a.f24175c, 97, -66, h.a.G, -4, PSSSigner.TRAILER_IMPLICIT, -107, h.a.t, h.a.r, 55, 63, 91, h.a.v, 83, 57, -124, 60, 65, -94, 109, 71, 20, 42, -98, 93, 86, -14, h.a.x, -85, 68, 17, -110, h.a.D, 35, 32, 46, -119, -76, 124, -72, 38, 119, -103, -29, -91, 103, 74, -19, h.a.I, h.a.f24180j, 49, -2, 24, 13, 99, -116, -128, h.a.f24176e, -9, 112, 7};
    private static final byte[] aLogtable = {0, 3, 5, 15, 17, 51, 85, -1, 26, 46, 114, -106, -95, -8, 19, 53, 95, -31, 56, 72, h.a.C, 115, -107, -92, -9, 2, 6, 10, 30, 34, 102, -86, -27, 52, 92, -28, 55, 89, -21, 38, 106, -66, h.a.D, 112, h.a.f24175c, -85, -26, 49, 83, -11, 4, 12, 20, 60, 68, h.a.q, 79, h.a.v, 104, -72, h.a.x, 110, -78, h.a.r, 76, h.a.y, 103, -87, h.a.K, 59, 77, h.a.B, 98, -90, -15, 8, 24, 40, 120, -120, -125, -98, -71, h.a.u, 107, -67, h.a.G, 127, -127, -104, -77, h.a.s, 73, h.a.F, 118, -102, -75, h.a.f24179i, 87, -7, 16, 48, 80, -16, 11, 29, 39, 105, -69, h.a.A, 97, -93, -2, 25, 43, 125, -121, -110, -83, -20, 47, 113, -109, -82, -23, 32, 96, h.a.d, -5, 22, 58, 78, h.a.w, 109, -73, h.a.g, 93, -25, 50, 86, -6, 21, 63, 65, h.a.f24178h, 94, -30, 61, 71, h.a.n, 64, h.a.f24176e, 91, -19, 44, 116, -100, -65, h.a.E, 117, -97, -70, h.a.z, 100, -84, -17, 42, 126, -126, -99, PSSSigner.TRAILER_IMPLICIT, h.a.J, 122, -114, -119, -128, -101, -74, h.a.f24177f, 88, -24, 35, 101, -81, -22, 37, 111, -79, h.a.m, 67, h.a.f24180j, 84, -4, 31, 33, 99, -91, -12, 7, 9, 27, 45, 119, -103, -80, h.a.p, 70, h.a.o, 69, h.a.t, 74, h.a.I, 121, -117, -122, -111, -88, -29, 62, 66, h.a.f24181k, 81, -13, 14, 18, 54, 90, -18, 41, 123, -115, -116, -113, -118, -123, -108, -89, -14, 13, 23, 57, 75, h.a.H, 124, -124, -105, -94, -3, 28, 36, 108, -76, h.a.l, 82, -10, 1, 3, 5, 15, 17, 51, 85, -1, 26, 46, 114, -106, -95, -8, 19, 53, 95, -31, 56, 72, h.a.C, 115, -107, -92, -9, 2, 6, 10, 30, 34, 102, -86, -27, 52, 92, -28, 55, 89, -21, 38, 106, -66, h.a.D, 112, h.a.f24175c, -85, -26, 49, 83, -11, 4, 12, 20, 60, 68, h.a.q, 79, h.a.v, 104, -72, h.a.x, 110, -78, h.a.r, 76, h.a.y, 103, -87, h.a.K, 59, 77, h.a.B, 98, -90, -15, 8, 24, 40, 120, -120, -125, -98, -71, h.a.u, 107, -67, h.a.G, 127, -127, -104, -77, h.a.s, 73, h.a.F, 118, -102, -75, h.a.f24179i, 87, -7, 16, 48, 80, -16, 11, 29, 39, 105, -69, h.a.A, 97, -93, -2, 25, 43, 125, -121, -110, -83, -20, 47, 113, -109, -82, -23, 32, 96, h.a.d, -5, 22, 58, 78, h.a.w, 109, -73, h.a.g, 93, -25, 50, 86, -6, 21, 63, 65, h.a.f24178h, 94, -30, 61, 71, h.a.n, 64, h.a.f24176e, 91, -19, 44, 116, -100, -65, h.a.E, 117, -97, -70, h.a.z, 100, -84, -17, 42, 126, -126, -99, PSSSigner.TRAILER_IMPLICIT, h.a.J, 122, -114, -119, -128, -101, -74, h.a.f24177f, 88, -24, 35, 101, -81, -22, 37, 111, -79, h.a.m, 67, h.a.f24180j, 84, -4, 31, 33, 99, -91, -12, 7, 9, 27, 45, 119, -103, -80, h.a.p, 70, h.a.o, 69, h.a.t, 74, h.a.I, 121, -117, -122, -111, -88, -29, 62, 66, h.a.f24181k, 81, -13, 14, 18, 54, 90, -18, 41, 123, -115, -116, -113, -118, -123, -108, -89, -14, 13, 23, 57, 75, h.a.H, 124, -124, -105, -94, -3, 28, 36, 108, -76, h.a.l, 82, -10, 1};
    private static final byte[] S = {99, 124, 119, 123, -14, 107, 111, h.a.f24180j, 48, 1, 103, 43, -2, h.a.B, -85, 118, h.a.o, -126, h.a.n, 125, -6, 89, 71, -16, -83, h.a.y, -94, -81, -100, -92, 114, h.a.f24176e, -73, -3, -109, 38, 54, 63, -9, h.a.q, 52, -91, -27, -15, 113, h.a.C, 49, 21, 4, h.a.l, 35, h.a.f24178h, 24, -106, 5, -102, 7, 18, -128, -30, -21, 39, -78, 117, 9, -125, 44, 26, 27, 110, 90, h.a.d, 82, 59, h.a.A, -77, 41, -29, 47, -124, 83, h.a.v, 0, -19, 32, -4, -79, 91, 106, h.a.p, -66, 57, 74, 76, 88, h.a.t, h.a.u, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, 127, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, h.a.E, 33, 16, -1, -13, h.a.w, h.a.r, 12, 19, -20, 95, -105, 68, 23, h.a.f24179i, -89, 126, 61, 100, 93, 25, 115, 96, -127, 79, h.a.G, 34, 42, h.a.f24175c, -120, 70, -18, -72, 20, h.a.I, 94, 11, h.a.F, h.a.K, 50, 58, 10, 73, 6, 36, 92, h.a.g, h.a.x, -84, 98, -111, -107, -28, 121, -25, h.a.m, 55, 109, -115, h.a.z, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, -76, h.a.f24181k, -24, h.a.H, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, h.a.f24177f, 29, -98, -31, -8, -104, 17, 105, h.a.D, -114, -108, -101, 30, -121, -23, h.a.s, 85, 40, h.a.J, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, 22};
    private static final byte[] Si = {82, 9, 106, h.a.z, 48, 54, -91, 56, -65, 64, -93, -98, -127, -13, h.a.B, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, h.a.f24179i, h.a.I, -23, h.a.p, 84, 123, -108, 50, -90, h.a.g, 35, 61, -18, 76, -107, 11, 66, -6, h.a.f24178h, 78, 8, 46, -95, 102, 40, h.a.D, 36, -78, 118, 91, -94, 73, 109, -117, h.a.v, 37, 114, -8, -10, 100, -122, 104, -104, 22, h.a.y, -92, 92, h.a.q, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, h.a.E, 94, 21, 70, 87, -89, -115, -99, -124, h.a.f24175c, h.a.C, -85, 0, -116, PSSSigner.TRAILER_IMPLICIT, h.a.x, 10, -9, -28, 88, 5, -72, -77, 69, 6, h.a.u, 44, 30, -113, h.a.o, 63, 15, 2, h.a.f24177f, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, h.a.G, -22, -105, -14, h.a.t, h.a.s, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, 28, 117, h.a.J, 110, 71, -15, 26, 113, 29, 41, h.a.f24180j, -119, 111, -73, 98, 14, -86, 24, -66, 27, -4, 86, 62, 75, h.a.f24181k, h.a.w, 121, 32, -102, h.a.F, h.a.f24176e, -2, 120, h.a.r, 90, -12, 31, h.a.H, -88, 51, -120, 7, h.a.l, 49, -79, 18, 16, 89, 39, -128, -20, 95, 96, 81, 127, -87, 25, -75, 74, 13, 45, -27, 122, -97, -109, h.a.n, -100, -17, h.a.d, h.a.K, 59, 77, -82, 42, -11, -80, h.a.m, -21, -69, 60, -125, 83, -103, 97, 23, 43, 4, 126, -70, 119, h.a.A, 38, -31, 105, 20, 99, 85, 33, 12, 125};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145};
    static byte[][] shifts0 = {new byte[]{0, 8, 16, 24}, new byte[]{0, 8, 16, 24}, new byte[]{0, 8, 16, 24}, new byte[]{0, 8, 16, 32}, new byte[]{0, 8, 24, 32}};
    static byte[][] shifts1 = {new byte[]{0, 24, 16, 8}, new byte[]{0, 32, 24, 16}, new byte[]{0, 40, 32, 24}, new byte[]{0, 48, 40, 24}, new byte[]{0, 56, 40, 32}};

    public RijndaelEngine(int i2) {
        if (i2 == 128) {
            this.BC = 32;
            this.BC_MASK = BodyPartID.bodyIdMax;
            this.shifts0SC = shifts0[0];
            this.shifts1SC = shifts1[0];
        } else if (i2 == 160) {
            this.BC = 40;
            this.BC_MASK = 1099511627775L;
            this.shifts0SC = shifts0[1];
            this.shifts1SC = shifts1[1];
        } else if (i2 == 192) {
            this.BC = 48;
            this.BC_MASK = 281474976710655L;
            this.shifts0SC = shifts0[2];
            this.shifts1SC = shifts1[2];
        } else if (i2 == 224) {
            this.BC = 56;
            this.BC_MASK = 72057594037927935L;
            this.shifts0SC = shifts0[3];
            this.shifts1SC = shifts1[3];
        } else {
            if (i2 != 256) {
                md.n("unknown blocksize to Rijndael");
                throw null;
            }
            this.BC = 64;
            this.BC_MASK = -1L;
            this.shifts0SC = shifts0[4];
            this.shifts1SC = shifts1[4];
        }
        this.blockBits = i2;
    }

    private void InvMixColumn() {
        long jMul0xe = 0;
        long jMul0xe2 = 0;
        long jMul0xe3 = 0;
        long jMul0xe4 = 0;
        for (int i2 = 0; i2 < this.BC; i2 += 8) {
            int i3 = (int) ((this.A0 >> i2) & 255);
            int i4 = (int) ((this.A1 >> i2) & 255);
            int i5 = (int) ((this.A2 >> i2) & 255);
            int i6 = (int) ((this.A3 >> i2) & 255);
            int i7 = -1;
            int i8 = i3 != 0 ? logtable[i3 & 255] & 255 : -1;
            int i9 = i4 != 0 ? logtable[i4 & 255] & 255 : -1;
            int i10 = i5 != 0 ? logtable[i5 & 255] & 255 : -1;
            if (i6 != 0) {
                i7 = logtable[i6 & 255] & 255;
            }
            jMul0xe |= ((long) ((((mul0xe(i8) ^ mul0xb(i9)) ^ mul0xd(i10)) ^ mul0x9(i7)) & 255)) << i2;
            jMul0xe4 |= ((long) ((((mul0xe(i9) ^ mul0xb(i10)) ^ mul0xd(i7)) ^ mul0x9(i8)) & 255)) << i2;
            jMul0xe2 |= ((long) ((((mul0xe(i10) ^ mul0xb(i7)) ^ mul0xd(i8)) ^ mul0x9(i9)) & 255)) << i2;
            jMul0xe3 = (((long) ((((mul0xe(i7) ^ mul0xb(i8)) ^ mul0xd(i9)) ^ mul0x9(i10)) & 255)) << i2) | jMul0xe3;
        }
        this.A0 = jMul0xe;
        this.A1 = jMul0xe4;
        this.A2 = jMul0xe2;
        this.A3 = jMul0xe3;
    }

    private void KeyAddition(long[] jArr) {
        this.A0 ^= jArr[0];
        this.A1 ^= jArr[1];
        this.A2 ^= jArr[2];
        this.A3 ^= jArr[3];
    }

    private void MixColumn() {
        long jMul0x2 = 0;
        long jMul0x3 = 0;
        long jMul0x4 = 0;
        long jMul0x5 = 0;
        for (int i2 = 0; i2 < this.BC; i2 += 8) {
            int i3 = (int) ((this.A0 >> i2) & 255);
            int i4 = (int) ((this.A1 >> i2) & 255);
            int i5 = (int) ((this.A2 >> i2) & 255);
            int i6 = (int) ((this.A3 >> i2) & 255);
            jMul0x2 |= ((long) ((((mul0x2(i3) ^ mul0x3(i4)) ^ i5) ^ i6) & 255)) << i2;
            jMul0x5 |= ((long) ((((mul0x2(i4) ^ mul0x3(i5)) ^ i6) ^ i3) & 255)) << i2;
            jMul0x3 |= ((long) ((((mul0x2(i5) ^ mul0x3(i6)) ^ i3) ^ i4) & 255)) << i2;
            jMul0x4 = (((long) ((((mul0x2(i6) ^ mul0x3(i3)) ^ i4) ^ i5) & 255)) << i2) | jMul0x4;
        }
        this.A0 = jMul0x2;
        this.A1 = jMul0x5;
        this.A2 = jMul0x3;
        this.A3 = jMul0x4;
    }

    private void ShiftRow(byte[] bArr) {
        this.A1 = shift(this.A1, bArr[1]);
        this.A2 = shift(this.A2, bArr[2]);
        this.A3 = shift(this.A3, bArr[3]);
    }

    private void Substitution(byte[] bArr) {
        this.A0 = applyS(this.A0, bArr);
        this.A1 = applyS(this.A1, bArr);
        this.A2 = applyS(this.A2, bArr);
        this.A3 = applyS(this.A3, bArr);
    }

    private long applyS(long j2, byte[] bArr) {
        long j3 = 0;
        for (int i2 = 0; i2 < this.BC; i2 += 8) {
            j3 |= ((long) (bArr[(int) ((j2 >> i2) & 255)] & 255)) << i2;
        }
        return j3;
    }

    private void decryptBlock(long[][] jArr) {
        KeyAddition(jArr[this.ROUNDS]);
        Substitution(Si);
        ShiftRow(this.shifts1SC);
        for (int i2 = this.ROUNDS - 1; i2 > 0; i2--) {
            KeyAddition(jArr[i2]);
            InvMixColumn();
            Substitution(Si);
            ShiftRow(this.shifts1SC);
        }
        KeyAddition(jArr[0]);
    }

    private void encryptBlock(long[][] jArr) {
        KeyAddition(jArr[0]);
        for (int i2 = 1; i2 < this.ROUNDS; i2++) {
            Substitution(S);
            ShiftRow(this.shifts0SC);
            MixColumn();
            KeyAddition(jArr[i2]);
        }
        Substitution(S);
        ShiftRow(this.shifts0SC);
        KeyAddition(jArr[this.ROUNDS]);
    }

    private long[][] generateWorkingKey(byte[] bArr) {
        int i2;
        int i3 = 8;
        int length = bArr.length * 8;
        int i4 = 1;
        int i5 = 0;
        int i6 = 4;
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 4, 64);
        long[][] jArr = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 15, 4);
        if (length == 128) {
            i2 = 4;
        } else if (length == 160) {
            i2 = 5;
        } else if (length == 192) {
            i2 = 6;
        } else if (length == 224) {
            i2 = 7;
        } else {
            if (length != 256) {
                md.n("Key length not 128/160/192/224/256 bits.");
                return null;
            }
            i2 = 8;
        }
        this.ROUNDS = length >= this.blockBits ? i2 + 6 : (this.BC / 8) + 6;
        int i7 = 0;
        int i8 = 0;
        while (i7 < bArr.length) {
            bArr2[i7 % 4][i7 / 4] = bArr[i8];
            i7++;
            i8++;
        }
        int i9 = 0;
        int i10 = 0;
        while (i9 < i2 && i10 < (this.BC / i3) * (this.ROUNDS + i4)) {
            int i11 = i5;
            while (i11 < 4) {
                int i12 = this.BC;
                long[] jArr2 = jArr[i10 / (i12 / 8)];
                jArr2[i11] = (((long) (bArr2[i11][i9] & 255)) << ((i10 * 8) % i12)) | jArr2[i11];
                i11++;
                i4 = i4;
                i3 = i3;
                i5 = i5;
            }
            i9++;
            i10++;
        }
        int i13 = i4;
        int i14 = i5;
        int i15 = i14;
        while (i10 < (this.BC / 8) * (this.ROUNDS + 1)) {
            int i16 = i14;
            while (i16 < i6) {
                byte[] bArr3 = bArr2[i16];
                i16++;
                bArr3[i14] = (byte) (bArr3[i14] ^ S[bArr2[i16 % 4][i2 - 1] & 255]);
            }
            byte[] bArr4 = bArr2[i14];
            int i17 = i15 + 1;
            bArr4[i14] = (byte) (rcon[i15] ^ bArr4[i14]);
            int i18 = i13;
            if (i2 <= 6) {
                while (i18 < i2) {
                    for (int i19 = i14; i19 < i6; i19++) {
                        byte[] bArr5 = bArr2[i19];
                        bArr5[i18] = (byte) (bArr5[i18] ^ bArr5[i18 - 1]);
                    }
                    i18++;
                }
            } else {
                while (i18 < i6) {
                    for (int i20 = i14; i20 < i6; i20++) {
                        byte[] bArr6 = bArr2[i20];
                        bArr6[i18] = (byte) (bArr6[i18] ^ bArr6[i18 - 1]);
                    }
                    i18++;
                }
                for (int i21 = i14; i21 < i6; i21++) {
                    byte[] bArr7 = bArr2[i21];
                    bArr7[i6] = (byte) (bArr7[i6] ^ S[bArr7[3] & 255]);
                }
                for (int i22 = 5; i22 < i2; i22++) {
                    for (int i23 = i14; i23 < i6; i23++) {
                        byte[] bArr8 = bArr2[i23];
                        bArr8[i22] = (byte) (bArr8[i22] ^ bArr8[i22 - 1]);
                    }
                }
            }
            int i24 = i14;
            while (i24 < i2 && i10 < (this.BC / 8) * (this.ROUNDS + 1)) {
                int i25 = i14;
                while (i25 < i6) {
                    int i26 = this.BC;
                    long[] jArr3 = jArr[i10 / (i26 / 8)];
                    jArr3[i25] = (((long) (bArr2[i25][i24] & 255)) << ((i10 * 8) % i26)) | jArr3[i25];
                    i25++;
                    i2 = i2;
                    i6 = 4;
                }
                i24++;
                i10++;
                i6 = 4;
            }
            i15 = i17;
            i2 = i2;
            i6 = 4;
        }
        return jArr;
    }

    private byte mul0x2(int i2) {
        if (i2 != 0) {
            return aLogtable[(logtable[i2] & 255) + 25];
        }
        return (byte) 0;
    }

    private byte mul0x3(int i2) {
        if (i2 != 0) {
            return aLogtable[(logtable[i2] & 255) + 1];
        }
        return (byte) 0;
    }

    private byte mul0x9(int i2) {
        if (i2 >= 0) {
            return aLogtable[i2 + 199];
        }
        return (byte) 0;
    }

    private byte mul0xb(int i2) {
        if (i2 >= 0) {
            return aLogtable[i2 + 104];
        }
        return (byte) 0;
    }

    private byte mul0xd(int i2) {
        if (i2 >= 0) {
            return aLogtable[i2 + 238];
        }
        return (byte) 0;
    }

    private byte mul0xe(int i2) {
        if (i2 >= 0) {
            return aLogtable[i2 + 223];
        }
        return (byte) 0;
    }

    private void packBlock(byte[] bArr, int i2) {
        for (int i3 = 0; i3 != this.BC; i3 += 8) {
            bArr[i2] = (byte) (this.A0 >> i3);
            bArr[i2 + 1] = (byte) (this.A1 >> i3);
            int i4 = i2 + 3;
            bArr[i2 + 2] = (byte) (this.A2 >> i3);
            i2 += 4;
            bArr[i4] = (byte) (this.A3 >> i3);
        }
    }

    private long shift(long j2, int i2) {
        return ((j2 << (this.BC - i2)) | (j2 >>> i2)) & this.BC_MASK;
    }

    private void unpackBlock(byte[] bArr, int i2) {
        this.A0 = bArr[i2] & 255;
        this.A1 = bArr[i2 + 1] & 255;
        int i3 = i2 + 3;
        this.A2 = bArr[i2 + 2] & 255;
        int i4 = i2 + 4;
        this.A3 = bArr[i3] & 255;
        for (int i5 = 8; i5 != this.BC; i5 += 8) {
            this.A0 |= ((long) (bArr[i4] & 255)) << i5;
            this.A1 |= ((long) (bArr[i4 + 1] & 255)) << i5;
            int i6 = i4 + 3;
            this.A2 |= ((long) (bArr[i4 + 2] & 255)) << i5;
            i4 += 4;
            this.A3 |= ((long) (bArr[i6] & 255)) << i5;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Rijndael";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.BC / 2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            md.n(a.l("invalid parameter passed to Rijndael init - ", cipherParameters));
            return;
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        this.workingKey = generateWorkingKey(key);
        this.forEncryption = z;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), key.length * 8, cipherParameters, Utils.getPurpose(z)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i2, byte[] bArr2, int i3) {
        if (this.workingKey == null) {
            md.k("Rijndael engine not initialised");
            return 0;
        }
        int i4 = this.BC;
        if ((i4 / 2) + i2 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        if ((i4 / 2) + i3 > bArr2.length) {
            mt.n("output buffer too short");
            return 0;
        }
        boolean z = this.forEncryption;
        unpackBlock(bArr, i2);
        long[][] jArr = this.workingKey;
        if (z) {
            encryptBlock(jArr);
        } else {
            decryptBlock(jArr);
        }
        packBlock(bArr2, i3);
        return this.BC / 2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }

    public RijndaelEngine() {
        this(128);
    }
}
