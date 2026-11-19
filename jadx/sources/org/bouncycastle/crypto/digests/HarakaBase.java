package org.bouncycastle.crypto.digests;

import com.batch.android.x0.h;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Bytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class HarakaBase implements Digest {
    protected static final int DIGEST_SIZE = 32;
    static final byte[][] RC = {new byte[]{-99, 123, -127, 117, -16, -2, h.a.f24180j, -78, 10, h.a.f24176e, 32, -26, 76, 112, -124, 6}, new byte[]{23, -9, 8, 47, -92, 107, 15, 100, 107, h.a.d, -13, -120, -31, -76, 102, -117}, new byte[]{20, -111, 2, -97, 96, -99, 2, h.a.t, -104, -124, -14, 83, 45, h.a.I, 2, 52}, new byte[]{121, 79, 91, -3, -81, PSSSigner.TRAILER_IMPLICIT, -13, -69, 8, 79, 123, 46, -26, -22, h.a.A, 14}, new byte[]{68, 112, 57, -66, 28, h.a.r, -18, 121, -117, 68, 114, 72, h.a.p, -80, h.a.t, h.a.p}, new byte[]{123, 5, -118, 43, -19, 53, 83, -115, -73, 50, h.a.f24175c, 110, -18, h.a.r, -22, 126}, new byte[]{27, -17, 79, h.a.E, 97, 39, 65, -30, h.a.u, 124, 46, 94, 67, -113, h.a.g, 103}, new byte[]{59, 11, h.a.l, 31, -30, -3, 95, 103, 7, h.a.q, h.a.o, -81, -80, h.a.D, 36, 41}, new byte[]{-18, 101, h.a.y, -71, h.a.o, -113, h.a.F, -20, -23, 127, -122, -26, -15, 99, 77, -85}, new byte[]{51, 126, 3, -83, 79, 64, 42, 91, 100, h.a.r, -73, h.a.y, -124, -65, 48, 28}, new byte[]{0, -104, -10, -115, 46, -117, 2, 105, -65, 35, 23, -108, -71, 11, h.a.q, -78}, new byte[]{-118, 45, -99, 92, h.a.m, -98, -86, 74, 114, 85, 111, h.a.I, -90, 120, 4, -6}, new byte[]{h.a.y, -97, 18, 41, 46, 79, -6, 14, 18, 42, 119, 107, 43, -97, -76, h.a.J}, new byte[]{-18, 18, 106, -69, -82, 17, h.a.A, 50, 54, -94, 73, -12, 68, 3, -95, 30}, new byte[]{-90, -20, -88, -100, h.a.n, 0, -106, 95, -124, 0, 5, 75, -120, 73, 4, -81}, new byte[]{-20, -109, -27, 39, -29, h.a.l, -94, 120, 79, -100, 25, -99, h.a.C, 94, 2, 33}, new byte[]{115, 1, h.a.y, -126, h.a.r, 46, 40, -71, -73, h.a.n, 89, -89, -8, -86, 58, -65}, new byte[]{107, 125, 48, 16, h.a.D, -17, -14, 55, 23, -80, -122, 97, 13, 112, 96, 98}, new byte[]{h.a.f24181k, -102, -4, -10, 83, -111, h.a.g, -127, 67, 4, 48, 33, h.a.g, 69, h.a.o, 90}, new byte[]{58, -108, h.a.v, 54, -24, -110, -81, 44, -69, 104, 107, 34, 60, -105, 35, -110}, new byte[]{-76, 113, 16, -27, 88, -71, -70, 108, -21, -122, 88, 34, 56, -110, -65, h.a.x}, new byte[]{-115, 18, -31, 36, h.a.H, -3, 61, -109, 119, h.a.f24181k, -16, -82, -27, 60, -122, h.a.F}, new byte[]{-79, 18, 34, h.a.p, -29, -115, -28, -125, -100, h.a.d, -21, -1, 104, 98, 96, -69}, new byte[]{125, -9, 43, h.a.l, 78, 26, -71, 45, -100, h.a.v, -28, -30, h.a.G, h.a.x, 75, 115}, new byte[]{78, -110, -77, 44, h.a.f24179i, 21, 20, 75, 67, 27, 48, 97, h.a.f24178h, 71, -69, 67}, new byte[]{-103, 104, -21, 22, h.a.H, 49, -78, 3, -10, -17, 7, -25, -88, 117, -89, h.a.F}, new byte[]{44, 71, h.a.o, 126, 2, 35, 94, -114, 119, 89, 117, 60, 75, 97, -13, 109}, new byte[]{-7, 23, -122, -72, -71, -27, 27, 109, 119, 125, h.a.I, h.a.A, 23, 90, -89, h.a.r}, new byte[]{93, -18, 70, -87, -99, 6, 108, -99, -86, -23, -88, 107, -16, 67, 107, -20}, new byte[]{h.a.f24177f, 39, -13, 59, 89, 17, 83, -94, 43, 51, 87, -7, 80, 105, 30, h.a.p}, new byte[]{h.a.D, h.a.u, 14, 96, 83, 3, -19, -28, -100, 97, h.a.E, 0, 117, 12, -18, 44}, new byte[]{80, -93, -92, 99, PSSSigner.TRAILER_IMPLICIT, -70, -69, -128, -85, 12, -23, -106, -95, -91, -79, -16}, new byte[]{57, h.a.o, -115, -109, 48, h.a.I, 13, -85, -120, 41, -106, 94, 2, -79, 61, -82}, new byte[]{66, -76, 117, 46, -88, -13, 20, -120, 11, -92, 84, h.a.z, 56, -113, -69, 23}, new byte[]{-10, 22, 10, 54, 121, -73, -74, -82, h.a.B, 127, 66, 95, 91, -118, -69, 52}, new byte[]{h.a.I, -81, -70, -1, 24, 89, h.a.s, 67, 56, 84, -27, h.a.p, 65, 82, -10, 38}, new byte[]{120, h.a.n, -98, -125, -9, -100, h.a.o, -94, 106, 2, -13, -71, 84, -102, -23, 76}, new byte[]{53, 18, h.a.f24175c, 34, 40, 110, h.a.f24176e, 64, -66, -9, h.a.J, 27, 26, -91, 81, -82}, new byte[]{h.a.t, 89, -90, 72, 15, PSSSigner.TRAILER_IMPLICIT, 115, h.a.f24177f, 43, h.a.w, 126, -70, 60, 97, h.a.f24177f, h.a.d}, new byte[]{-95, -99, h.a.f24180j, -23, -3, -67, h.a.A, 74, -120, -126, 40, 2, 3, h.a.q, 106, 117}};
    private static final byte[][] S = {new byte[]{99, 124, 119, 123, -14, 107, 111, h.a.f24180j, 48, 1, 103, 43, -2, h.a.B, -85, 118}, new byte[]{h.a.o, -126, h.a.n, 125, -6, 89, 71, -16, -83, h.a.y, -94, -81, -100, -92, 114, h.a.f24176e}, new byte[]{-73, -3, -109, 38, 54, 63, -9, h.a.q, 52, -91, -27, -15, 113, h.a.C, 49, 21}, new byte[]{4, h.a.l, 35, h.a.f24178h, 24, -106, 5, -102, 7, 18, -128, -30, -21, 39, -78, 117}, new byte[]{9, -125, 44, 26, 27, 110, 90, h.a.d, 82, 59, h.a.A, -77, 41, -29, 47, -124}, new byte[]{83, h.a.v, 0, -19, 32, -4, -79, 91, 106, h.a.p, -66, 57, 74, 76, 88, h.a.t}, new byte[]{h.a.u, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, 127, 80, 60, -97, -88}, new byte[]{81, -93, 64, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, h.a.E, 33, 16, -1, -13, h.a.w}, new byte[]{h.a.r, 12, 19, -20, 95, -105, 68, 23, h.a.f24179i, -89, 126, 61, 100, 93, 25, 115}, new byte[]{96, -127, 79, h.a.G, 34, 42, h.a.f24175c, -120, 70, -18, -72, 20, h.a.I, 94, 11, h.a.F}, new byte[]{h.a.K, 50, 58, 10, 73, 6, 36, 92, h.a.g, h.a.x, -84, 98, -111, -107, -28, 121}, new byte[]{-25, h.a.m, 55, 109, -115, h.a.z, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8}, new byte[]{-70, 120, 37, 46, 28, -90, -76, h.a.f24181k, -24, h.a.H, 116, 31, 75, -67, -117, -118}, new byte[]{112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, h.a.f24177f, 29, -98}, new byte[]{-31, -8, -104, 17, 105, h.a.D, -114, -108, -101, 30, -121, -23, h.a.s, 85, 40, h.a.J}, new byte[]{-116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, 22}};

    public static byte[] aesEnc(byte[] bArr, byte[] bArr2) {
        byte[] bArrMixColumns = mixColumns(shiftRows(subBytes(bArr)));
        Bytes.xorTo(16, bArr2, bArrMixColumns);
        return bArrMixColumns;
    }

    private static byte[] mixColumns(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int i2 = 0;
        for (int i3 = 0; i3 < 4; i3++) {
            int i4 = i3 * 4;
            int i5 = i4 + 1;
            int i6 = i4 + 2;
            int i7 = i4 + 3;
            bArr2[i2] = (byte) ((((mulX(bArr[i4]) ^ mulX(bArr[i5])) ^ bArr[i5]) ^ bArr[i6]) ^ bArr[i7]);
            bArr2[i2 + 1] = (byte) ((((bArr[i4] ^ mulX(bArr[i5])) ^ mulX(bArr[i6])) ^ bArr[i6]) ^ bArr[i7]);
            int i8 = i2 + 3;
            bArr2[i2 + 2] = (byte) ((((bArr[i4] ^ bArr[i5]) ^ mulX(bArr[i6])) ^ mulX(bArr[i7])) ^ bArr[i7]);
            i2 += 4;
            bArr2[i8] = (byte) ((((mulX(bArr[i4]) ^ bArr[i4]) ^ bArr[i5]) ^ bArr[i6]) ^ mulX(bArr[i7]));
        }
        return bArr2;
    }

    public static byte mulX(byte b2) {
        return (byte) ((((b2 & 128) >> 7) * 27) ^ ((b2 & 127) << 1));
    }

    public static byte sBox(byte b2) {
        return S[(b2 & 255) >>> 4][b2 & 15];
    }

    public static byte[] shiftRows(byte[] bArr) {
        return new byte[]{bArr[0], bArr[5], bArr[10], bArr[15], bArr[4], bArr[9], bArr[14], bArr[3], bArr[8], bArr[13], bArr[2], bArr[7], bArr[12], bArr[1], bArr[6], bArr[11]};
    }

    public static byte[] subBytes(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        bArr2[0] = sBox(bArr[0]);
        bArr2[1] = sBox(bArr[1]);
        bArr2[2] = sBox(bArr[2]);
        bArr2[3] = sBox(bArr[3]);
        bArr2[4] = sBox(bArr[4]);
        bArr2[5] = sBox(bArr[5]);
        bArr2[6] = sBox(bArr[6]);
        bArr2[7] = sBox(bArr[7]);
        bArr2[8] = sBox(bArr[8]);
        bArr2[9] = sBox(bArr[9]);
        bArr2[10] = sBox(bArr[10]);
        bArr2[11] = sBox(bArr[11]);
        bArr2[12] = sBox(bArr[12]);
        bArr2[13] = sBox(bArr[13]);
        bArr2[14] = sBox(bArr[14]);
        bArr2[15] = sBox(bArr[15]);
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }
}
