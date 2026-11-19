package org.bouncycastle.crypto.engines;

import com.batch.android.x0.h;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class DSTU7624Engine implements BlockCipher {
    private static final int ROUNDS_128 = 10;
    private static final int ROUNDS_256 = 14;
    private static final int ROUNDS_512 = 18;
    private static final byte[] S0 = {-88, 67, 95, 6, 107, 117, 108, 89, 113, h.a.J, -121, -107, 23, -16, h.a.C, 9, 109, -13, 29, h.a.p, h.a.n, 77, 44, -81, 121, h.a.K, -105, -3, 111, 75, 69, 57, 62, h.a.H, -93, 79, -76, -74, -102, 14, 31, -65, 21, -31, 73, h.a.w, -109, h.a.f24181k, -110, 114, -98, 97, h.a.v, 99, -6, -18, -12, 25, h.a.z, -83, 88, -92, -69, -95, h.a.G, -14, -125, 55, 66, -28, 122, 50, -100, h.a.q, -85, 74, -113, 110, 4, 39, 46, -25, -30, 90, -106, 22, 35, 43, h.a.g, 101, 102, 15, PSSSigner.TRAILER_IMPLICIT, -87, 71, 65, 52, 72, -4, -73, 106, -120, -91, 83, -122, -7, 91, h.a.F, 56, 123, h.a.f24178h, 30, 34, 51, 36, 40, 54, h.a.l, -78, 59, -114, 119, -70, -11, 20, -97, 8, 85, -101, 76, -2, 96, 92, h.a.E, 24, 70, h.a.r, 125, 33, -80, 63, 27, -119, -1, -21, -124, 105, 58, -99, h.a.B, h.a.x, 112, 103, 64, -75, h.a.I, 93, 48, -111, -79, 120, 17, 1, -27, 0, 104, -104, h.a.d, h.a.f24180j, 2, -90, 116, 45, 11, -94, 118, -77, -66, h.a.s, -67, -82, -23, -118, 49, 28, -20, -15, -103, -108, -86, -10, 38, 47, -17, -24, -116, 53, 3, h.a.y, 127, -5, 5, h.a.f24177f, 94, h.a.f24175c, 32, 61, -126, -9, -22, 10, 13, 126, -8, 80, 26, h.a.f24179i, 7, 87, -72, 60, 98, -29, h.a.m, -84, 82, 100, 16, h.a.u, h.a.D, 19, 12, 18, 41, 81, -71, h.a.t, h.a.A, 115, -115, -127, 84, h.a.f24176e, -19, 78, 68, -89, 42, -123, 37, -26, h.a.o, 124, -117, 86, -128};
    private static final byte[] S1 = {h.a.s, -69, -21, -110, -22, h.a.p, 19, h.a.f24177f, -23, 58, h.a.A, -78, h.a.w, h.a.f24175c, 23, -8, 66, 21, 86, -76, 101, 28, -120, 67, h.a.f24180j, 92, 54, -70, -11, 87, 103, -115, 49, -10, 100, 88, -98, -12, 34, -86, 117, 15, 2, -79, h.a.J, 109, 115, 77, 124, 38, 46, -9, 8, 93, 68, 62, -97, 20, h.a.m, -82, 84, 16, h.a.C, PSSSigner.TRAILER_IMPLICIT, 26, 107, 105, -13, -67, 51, -85, -6, h.a.v, -101, 104, 78, 22, -107, -111, -18, 76, 99, -114, 91, h.a.q, 60, 25, -95, -127, 73, 123, h.a.D, 111, 55, 96, h.a.o, -25, 43, 72, -3, -106, 69, -4, 65, 18, 13, 121, -27, -119, -116, -29, 32, 48, h.a.G, -73, 108, 74, -75, 63, -105, h.a.y, 98, 45, 6, -92, -91, -125, 95, 42, h.a.E, h.a.n, 0, 126, -94, 85, -65, 17, h.a.z, -100, h.a.t, 14, 10, 61, 81, 125, -109, 27, -2, h.a.f24179i, 71, 9, -122, 11, -113, -99, 106, 7, -71, -80, -104, 24, 50, 113, 75, -17, 59, 112, h.a.d, -28, 64, -1, h.a.f24178h, -87, -26, 120, -7, -117, 70, -128, 30, 56, -31, -72, -88, h.a.K, 12, 35, 118, 29, 37, 36, 5, -15, 110, -108, 40, -102, -124, -24, -93, 79, 119, h.a.x, -123, -30, 82, -14, -126, 80, 122, 47, 116, 83, -77, 97, -81, 57, 53, h.a.I, h.a.r, 31, -103, -84, -83, 114, 44, h.a.H, h.a.u, -121, -66, 94, -90, -20, 4, h.a.f24181k, 3, 52, -5, h.a.F, 89, -74, h.a.g, 1, -16, 90, -19, -89, 102, 33, 127, -118, 39, h.a.l, h.a.f24176e, 41, h.a.B};
    private static final byte[] S2 = {-109, h.a.D, -102, -75, -104, 34, 69, -4, -70, 106, h.a.J, 2, -97, h.a.G, 81, 89, 74, 23, 43, h.a.g, -108, -12, -69, -93, 98, -28, 113, h.a.y, h.a.r, 112, 22, -31, 73, 60, h.a.f24176e, h.a.C, 92, -101, -83, -123, 83, -95, 122, h.a.m, 45, h.a.K, h.a.v, 114, -90, 44, h.a.f24179i, -29, 118, 120, -73, -76, 9, 59, 14, 65, 76, h.a.I, -78, h.a.f24175c, 37, -91, h.a.B, 3, 17, 0, h.a.f24178h, 46, -110, -17, 78, 18, -99, 125, h.a.p, 53, 16, h.a.z, 79, -98, 77, -87, 85, h.a.f24181k, h.a.u, 123, 24, -105, h.a.x, 54, -26, 72, 86, -127, -113, 119, h.a.q, -100, -71, -30, -84, -72, 47, 21, -92, 124, h.a.E, 56, 30, 11, 5, h.a.A, 20, 110, 108, 126, 102, -3, -79, -27, 96, -81, 94, 51, -121, h.a.n, -16, 93, 109, 63, -120, -115, h.a.l, -9, 29, -23, -20, -19, -128, 41, 39, h.a.t, -103, -88, 80, 15, 55, 36, 40, 48, -107, h.a.w, 62, 91, 64, -125, -77, 105, 87, 31, 7, 28, -118, PSSSigner.TRAILER_IMPLICIT, 32, -21, h.a.s, -114, -85, -18, 49, -94, 115, -7, h.a.o, 58, 26, -5, 13, h.a.f24177f, -2, -6, -14, 111, -67, -106, h.a.H, 67, 82, -74, 8, -13, -82, -66, 25, -119, 50, 38, -80, -22, 75, 100, -124, -126, 107, -11, 121, -65, 1, 95, 117, 99, 27, 35, 61, 104, 42, 101, -24, -111, -10, -1, 19, 88, -15, 71, 10, 127, h.a.f24180j, -89, -25, 97, 90, 6, 70, 68, 66, 4, h.a.d, h.a.F, 57, -122, 84, -86, -116, 52, 33, -117, -8, 12, 116, 103};
    private static final byte[] S3 = {104, -115, h.a.o, 77, 115, 75, 78, 42, h.a.y, 82, 38, -77, 84, 30, 25, 31, 34, 3, 70, 61, 45, 74, 83, -125, 19, -118, -73, h.a.z, 37, 121, -11, -67, 88, 47, 13, 2, -19, 81, -98, 17, -14, 62, 85, 94, h.a.v, 22, 60, 102, 112, 93, -13, 69, 64, h.a.q, -24, -108, 86, 8, h.a.s, 26, 58, h.a.w, -31, h.a.J, -75, 56, 110, 14, -27, -12, -7, -122, -23, 79, h.a.A, -123, 35, h.a.t, 50, -103, 49, 20, -82, -18, h.a.m, 72, h.a.x, 48, -95, -110, 65, -79, 24, h.a.f24179i, 44, 113, 114, 68, 21, -3, 55, -66, 95, -86, -101, -120, h.a.C, -85, -119, -100, -6, 96, -22, PSSSigner.TRAILER_IMPLICIT, 98, 12, 36, -90, -88, -20, 103, 32, h.a.F, 124, 40, h.a.H, -84, 91, 52, 126, 16, -15, 123, -113, 99, h.a.d, 5, -102, 67, 119, 33, -65, 39, 9, h.a.f24178h, -97, -74, h.a.B, 41, h.a.g, -21, h.a.f24176e, -92, -117, -116, 29, -5, -1, h.a.f24177f, -78, -105, 46, -8, 101, -10, 117, 7, 4, 73, 51, -28, h.a.D, -71, h.a.u, 66, h.a.l, 108, h.a.f24175c, 0, -114, 111, 80, 1, h.a.f24180j, h.a.E, 71, 63, h.a.r, 105, -94, -30, 122, -89, h.a.f24181k, -109, 15, 10, 6, -26, 43, -106, -93, 28, -81, 106, 18, -124, 57, -25, -80, -126, -9, -2, -99, -121, 92, -127, 53, h.a.I, -76, -91, -4, -128, -17, h.a.p, -69, 107, 118, -70, 90, 125, 120, 11, -107, -29, -83, 116, -104, 59, 54, 100, 109, h.a.G, -16, 89, -87, 76, 23, 127, -111, -72, h.a.n, 87, 27, h.a.K, 97};
    private static final byte[] T0 = {-92, -94, -87, h.a.f24180j, 78, h.a.n, 3, h.a.D, 126, 15, h.a.w, -83, -25, h.a.x, 39, 91, -29, -95, -24, -26, 124, 42, 85, 12, -122, 57, h.a.B, -115, -72, 18, 111, 40, h.a.r, -118, 112, 86, 114, -7, -65, 79, 115, -23, -9, 87, 22, -84, 80, h.a.f24176e, -99, -73, 71, 113, 96, h.a.f24179i, 116, 67, 108, 31, -109, 119, h.a.G, h.a.s, 32, -116, -103, 95, 68, 1, -11, 30, -121, 94, 97, 44, 75, 29, -127, 21, -12, 35, h.a.A, -22, -31, 103, -15, 127, -2, h.a.E, 60, 7, 83, 106, -124, -100, h.a.p, 2, -125, 51, h.a.H, 53, -30, 89, 90, -104, -91, -110, 100, 4, 6, 16, 77, 28, -105, 8, 49, -18, -85, 5, -81, 121, h.a.d, 24, 70, 109, -4, -119, h.a.y, h.a.l, -1, -16, h.a.t, 66, -111, -8, 104, 10, 101, -114, -74, -3, h.a.f24178h, -17, 120, 76, h.a.q, -98, 48, 46, PSSSigner.TRAILER_IMPLICIT, 11, 84, 26, -90, -69, 38, -128, 72, -108, 50, 125, -89, 63, -82, 34, 61, 102, -86, -10, 0, 93, -67, 74, h.a.K, 59, -76, 23, -117, -97, 118, -80, 36, -102, 37, 99, h.a.F, -21, 122, 62, 92, -77, -79, 41, -14, h.a.o, 88, 110, h.a.C, -88, 47, 117, h.a.J, 20, -5, 19, 73, -120, -78, -20, -28, 52, 45, -106, h.a.f24181k, 58, -19, -107, 14, -27, -123, 107, 64, 33, -101, 9, 25, 43, 82, h.a.I, 69, -93, -6, 81, h.a.g, -75, h.a.v, h.a.f24175c, -71, -13, 55, h.a.f24177f, 13, -70, 65, 17, 56, 123, -66, h.a.u, h.a.z, 105, 54, h.a.m, 98, 27, -126, -113};
    private static final byte[] T1 = {-125, -14, 42, -21, -23, -65, 123, -100, 52, -106, -115, -104, -71, 105, -116, 41, 61, -120, 104, 6, 57, 17, 76, 14, h.a.d, 86, 64, -110, 21, PSSSigner.TRAILER_IMPLICIT, -77, h.a.G, 111, -8, 38, -70, -66, -67, 49, -5, h.a.f24178h, -2, -128, 97, -31, 122, 50, h.a.w, 112, 32, -95, 69, -20, h.a.D, 26, 93, -76, h.a.C, 9, -91, 85, -114, 55, 118, -87, 103, 16, 23, 54, 101, -79, -107, 98, 89, 116, -93, 80, 47, 75, h.a.m, h.a.u, -113, h.a.r, h.a.y, 60, -122, 18, 29, 35, -17, -12, 83, 25, 53, -26, 127, 94, h.a.A, 121, 81, 34, 20, -9, 30, 74, 66, -101, 65, 115, 45, h.a.f24177f, 92, -90, -94, h.a.K, 46, h.a.x, 40, -69, h.a.n, -82, 106, h.a.v, 90, 48, h.a.f24175c, -124, -7, -78, 88, h.a.t, 126, h.a.f24180j, h.a.p, -105, -28, 22, 108, -6, -80, 109, 31, 82, -103, 13, 78, 3, -111, h.a.g, 77, 100, 119, -97, h.a.H, h.a.f24179i, 73, -118, -102, 36, 56, -89, 87, -123, h.a.l, 124, 125, -25, -10, -73, -84, 39, 70, h.a.I, h.a.J, 59, h.a.B, -98, 43, 11, h.a.z, 19, 117, -16, 114, -74, -99, 27, 1, 63, 68, -27, -121, -3, 7, -15, -85, -108, 24, -22, -4, 58, -126, 95, 5, 84, h.a.F, 0, -117, -29, 72, 12, h.a.o, 120, -119, 10, -1, 62, 91, -127, -18, 113, -30, h.a.E, 44, -72, -75, h.a.q, 110, -88, 107, -83, 96, h.a.f24181k, 8, 4, 2, -24, -11, 79, -92, -13, h.a.f24176e, h.a.s, 67, 37, 28, 33, 51, 15, -81, 71, -19, 102, 99, -109, -86};
    private static final byte[] T2 = {69, h.a.y, 11, 67, -15, 114, -19, -92, h.a.g, 56, -26, 113, -3, -74, 58, -107, 80, 68, 75, -30, 116, 107, 30, 17, 90, h.a.f24181k, -76, h.a.C, -91, -118, 112, -93, -88, -6, 5, h.a.D, -105, 64, h.a.n, h.a.f24175c, -104, -113, h.a.G, 18, 49, 44, 71, 106, -103, -82, h.a.m, 127, -7, 79, 93, -106, 111, -12, -77, 57, 33, h.a.E, -100, -123, -98, 59, -16, -65, -17, 6, -18, -27, 95, 32, 16, h.a.q, 60, 84, 74, 82, -108, 14, h.a.f24176e, 40, -10, 86, 96, -94, -29, 15, -20, -99, 36, -125, 126, h.a.z, 124, -21, 24, h.a.B, h.a.r, h.a.H, 120, -1, h.a.F, -95, 9, h.a.u, 118, -124, 117, -69, 29, 26, 47, -80, -2, h.a.A, 52, 99, 53, h.a.w, 42, 89, 109, 77, 119, -25, -114, 97, h.a.t, -97, h.a.s, 39, -11, -128, -122, h.a.l, -90, -5, -8, -121, -85, 98, 63, h.a.J, 72, 0, 20, -102, -67, 91, 4, -110, 2, 37, 101, 76, 83, 12, -14, 41, -81, 23, 108, 65, 48, -23, -109, 85, -9, -84, 104, 38, h.a.f24179i, 125, h.a.o, 122, 62, h.a.d, 55, 3, h.a.f24177f, 54, 105, 102, 8, 22, -89, PSSSigner.TRAILER_IMPLICIT, h.a.f24180j, h.a.x, 34, -73, 19, 70, 50, -24, 87, -120, 43, -127, -78, 78, 100, 28, -86, -111, 88, 46, -101, 92, 27, 81, 115, 66, 35, 1, 110, -13, 13, -66, 61, 10, 45, 31, 103, 51, 25, 123, 94, -22, h.a.I, -117, h.a.p, -87, -116, -115, -83, 73, -126, -28, -70, h.a.f24178h, 21, h.a.v, h.a.K, -119, -4, -79, -71, -75, 7, 121, -72, -31};
    private static final byte[] T3 = {-78, -74, 35, 17, -89, -120, h.a.f24180j, -90, 57, -113, h.a.f24179i, -24, 115, 34, 67, h.a.f24178h, -126, 39, h.a.r, 24, 81, 98, 45, -9, 92, 14, 59, -3, h.a.o, -101, 13, 15, 121, -116, 16, 76, 116, 28, 10, -114, 124, -108, 7, h.a.l, 94, 20, -95, 33, 87, 80, 78, -87, -128, h.a.D, -17, 100, 65, h.a.t, 60, -18, 46, 19, 41, -70, 52, 90, -82, -118, 97, 51, 18, -71, 85, -88, 21, 5, -10, 3, 6, 73, -75, 37, 9, 22, 12, 42, 56, -4, 32, -12, -27, 127, h.a.B, 49, 43, 102, 111, -1, 114, -122, -16, -93, 47, 120, 0, PSSSigner.TRAILER_IMPLICIT, h.a.q, -30, -80, -15, 66, -76, 48, 95, 96, 4, -20, -91, -29, -117, -25, 29, -65, -124, 123, -26, -127, -8, h.a.I, h.a.C, h.a.w, 23, h.a.s, 75, 71, h.a.A, 105, 108, 25, -103, -102, 1, -77, -123, -79, -7, 89, h.a.g, 55, -23, h.a.m, h.a.d, -19, 79, -119, 104, 109, h.a.z, 38, -111, -121, 88, -67, h.a.n, -104, h.a.G, 117, h.a.f24176e, 118, -11, 103, 107, 126, -21, 82, h.a.p, h.a.v, 91, -97, 11, h.a.F, 64, -110, 26, -6, -84, -28, -31, 113, 31, 101, -115, -105, -98, -107, h.a.f24175c, 93, -73, h.a.f24177f, -81, 84, -5, 2, h.a.K, 53, -69, 58, 77, -83, 44, 61, 86, 8, 27, 74, -109, 106, -85, -72, 122, -14, 125, h.a.E, 63, -2, 62, -66, -22, -86, 68, h.a.f24181k, h.a.u, 54, 72, 112, -106, 119, 36, 83, h.a.J, -13, -125, 40, 50, 69, 30, -92, h.a.x, -94, 70, 110, -100, h.a.H, 99, h.a.y, -99};
    private boolean forEncryption;
    private long[] internalState;
    private long[][] roundKeys;
    private int roundsAmount;
    private int wordsInBlock;
    private int wordsInKey;
    private long[] workingKey;

    public DSTU7624Engine(int i2) throws IllegalArgumentException {
        if (i2 != 128 && i2 != 256 && i2 != 512) {
            md.n("unsupported block length: only 128/256/512 are allowed");
            throw null;
        }
        int i3 = i2 >>> 6;
        this.wordsInBlock = i3;
        this.internalState = new long[i3];
    }

    private void addRoundKey(int i2) {
        long[] jArr = this.roundKeys[i2];
        for (int i3 = 0; i3 < this.wordsInBlock; i3++) {
            long[] jArr2 = this.internalState;
            jArr2[i3] = jArr2[i3] + jArr[i3];
        }
    }

    private void decryptBlock_128(byte[] bArr, int i2, byte[] bArr2, int i3) {
        long jLittleEndianToLong = Pack.littleEndianToLong(bArr, i2);
        long jLittleEndianToLong2 = Pack.littleEndianToLong(bArr, i2 + 8);
        long[][] jArr = this.roundKeys;
        int i4 = this.roundsAmount;
        long[] jArr2 = jArr[i4];
        char c2 = 0;
        long j2 = jLittleEndianToLong - jArr2[0];
        char c3 = 1;
        long j3 = jLittleEndianToLong2 - jArr2[1];
        while (true) {
            long jMixColumnInv = mixColumnInv(j2);
            long jMixColumnInv2 = mixColumnInv(j3);
            int i5 = (int) jMixColumnInv;
            int i6 = (int) (jMixColumnInv >>> 32);
            int i7 = (int) jMixColumnInv2;
            int i8 = (int) (jMixColumnInv2 >>> 32);
            byte[] bArr3 = T0;
            byte b2 = bArr3[i5 & 255];
            byte[] bArr4 = T1;
            byte b3 = bArr4[(i5 >>> 8) & 255];
            byte[] bArr5 = T2;
            char c4 = c2;
            byte b4 = bArr5[(i5 >>> 16) & 255];
            byte[] bArr6 = T3;
            char c5 = c3;
            long j4 = (((long) ((bArr6[i5 >>> 24] << 24) | ((b4 & 255) << 16) | (b2 & 255) | ((b3 & 255) << 8))) & BodyPartID.bodyIdMax) | (((long) ((bArr6[i8 >>> 24] << 24) | (((bArr3[i8 & 255] & 255) | ((bArr4[(i8 >>> 8) & 255] & 255) << 8)) | ((bArr5[(i8 >>> 16) & 255] & 255) << 16)))) << 32);
            long j5 = (((long) ((bArr6[i7 >>> 24] << 24) | (bArr3[i7 & 255] & 255) | ((bArr4[(i7 >>> 8) & 255] & 255) << 8) | ((bArr5[(i7 >>> 16) & 255] & 255) << 16))) & BodyPartID.bodyIdMax) | (((long) ((bArr6[i6 >>> 24] << 24) | (((bArr3[i6 & 255] & 255) | ((bArr4[(i6 >>> 8) & 255] & 255) << 8)) | ((bArr5[(i6 >>> 16) & 255] & 255) << 16)))) << 32);
            i4--;
            long[][] jArr3 = this.roundKeys;
            if (i4 == 0) {
                long[] jArr4 = jArr3[c4];
                long j6 = j4 - jArr4[c4];
                long j7 = j5 - jArr4[c5];
                Pack.longToLittleEndian(j6, bArr2, i3);
                Pack.longToLittleEndian(j7, bArr2, i3 + 8);
                return;
            }
            long[] jArr5 = jArr3[i4];
            long j8 = jArr5[c4] ^ j4;
            j3 = j5 ^ jArr5[c5];
            j2 = j8;
            c2 = c4;
            c3 = c5;
        }
    }

    private void encryptBlock_128(byte[] bArr, int i2, byte[] bArr2, int i3) {
        long jLittleEndianToLong = Pack.littleEndianToLong(bArr, i2);
        long jLittleEndianToLong2 = Pack.littleEndianToLong(bArr, i2 + 8);
        char c2 = 0;
        long[] jArr = this.roundKeys[0];
        long j2 = jLittleEndianToLong + jArr[0];
        char c3 = 1;
        long j3 = jLittleEndianToLong2 + jArr[1];
        int i4 = 0;
        while (true) {
            int i5 = (int) j2;
            int i6 = (int) (j2 >>> 32);
            int i7 = (int) j3;
            int i8 = (int) (j3 >>> 32);
            byte[] bArr3 = S0;
            byte b2 = bArr3[i5 & 255];
            byte[] bArr4 = S1;
            byte b3 = bArr4[(i5 >>> 8) & 255];
            byte[] bArr5 = S2;
            char c4 = c2;
            byte b4 = bArr5[(i5 >>> 16) & 255];
            byte[] bArr6 = S3;
            char c5 = c3;
            long j4 = (((long) (((b4 & 255) << 16) | (b2 & 255) | ((b3 & 255) << 8) | (bArr6[i5 >>> 24] << 24))) & BodyPartID.bodyIdMax) | (((long) ((bArr6[i8 >>> 24] << 24) | (((bArr3[i8 & 255] & 255) | ((bArr4[(i8 >>> 8) & 255] & 255) << 8)) | ((bArr5[(i8 >>> 16) & 255] & 255) << 16)))) << 32);
            long j5 = (((long) ((bArr6[i7 >>> 24] << 24) | (bArr3[i7 & 255] & 255) | ((bArr4[(i7 >>> 8) & 255] & 255) << 8) | ((bArr5[(i7 >>> 16) & 255] & 255) << 16))) & BodyPartID.bodyIdMax) | (((long) ((bArr6[i6 >>> 24] << 24) | (((bArr3[i6 & 255] & 255) | ((bArr4[(i6 >>> 8) & 255] & 255) << 8)) | ((bArr5[(i6 >>> 16) & 255] & 255) << 16)))) << 32);
            long jMixColumn = mixColumn(j4);
            long jMixColumn2 = mixColumn(j5);
            i4++;
            int i9 = this.roundsAmount;
            long[][] jArr2 = this.roundKeys;
            if (i4 == i9) {
                long[] jArr3 = jArr2[i9];
                long j6 = jMixColumn + jArr3[c4];
                long j7 = jMixColumn2 + jArr3[c5];
                Pack.longToLittleEndian(j6, bArr2, i3);
                Pack.longToLittleEndian(j7, bArr2, i3 + 8);
                return;
            }
            long[] jArr4 = jArr2[i4];
            long j8 = jMixColumn ^ jArr4[c4];
            j3 = jMixColumn2 ^ jArr4[c5];
            j2 = j8;
            c2 = c4;
            c3 = c5;
        }
    }

    private void invShiftRows() {
        int i2 = this.wordsInBlock;
        if (i2 == 2) {
            long[] jArr = this.internalState;
            long j2 = jArr[0];
            long j3 = jArr[1];
            long j4 = (j2 ^ j3) & (-4294967296L);
            jArr[0] = j2 ^ j4;
            jArr[1] = j4 ^ j3;
            return;
        }
        if (i2 == 4) {
            long[] jArr2 = this.internalState;
            long j5 = jArr2[0];
            long j6 = jArr2[1];
            long j7 = jArr2[2];
            long j8 = jArr2[3];
            long j9 = (j5 ^ j6) & (-281470681808896L);
            long j10 = j5 ^ j9;
            long j11 = j6 ^ j9;
            long j12 = (j7 ^ j8) & (-281470681808896L);
            long j13 = j7 ^ j12;
            long j14 = j8 ^ j12;
            long j15 = (j10 ^ j13) & (-4294967296L);
            long j16 = j10 ^ j15;
            long j17 = (j11 ^ j14) & 281474976645120L;
            jArr2[0] = j16;
            jArr2[1] = j11 ^ j17;
            jArr2[2] = j13 ^ j15;
            jArr2[3] = j17 ^ j14;
            return;
        }
        if (i2 != 8) {
            md.k("unsupported block length: only 128/256/512 are allowed");
            return;
        }
        long[] jArr3 = this.internalState;
        long j18 = jArr3[0];
        long j19 = jArr3[1];
        long j20 = jArr3[2];
        long j21 = jArr3[3];
        long j22 = jArr3[4];
        long j23 = jArr3[5];
        long j24 = jArr3[6];
        long j25 = jArr3[7];
        long j26 = (j18 ^ j19) & (-71777214294589696L);
        long j27 = j18 ^ j26;
        long j28 = j19 ^ j26;
        long j29 = (j20 ^ j21) & (-71777214294589696L);
        long j30 = j20 ^ j29;
        long j31 = j21 ^ j29;
        long j32 = (j22 ^ j23) & (-71777214294589696L);
        long j33 = j22 ^ j32;
        long j34 = j23 ^ j32;
        long j35 = (j24 ^ j25) & (-71777214294589696L);
        long j36 = j24 ^ j35;
        long j37 = j25 ^ j35;
        long j38 = (j27 ^ j30) & (-281470681808896L);
        long j39 = j27 ^ j38;
        long j40 = j30 ^ j38;
        long j41 = (j28 ^ j31) & 72056494543077120L;
        long j42 = j28 ^ j41;
        long j43 = j31 ^ j41;
        long j44 = (j33 ^ j36) & (-281470681808896L);
        long j45 = j33 ^ j44;
        long j46 = j36 ^ j44;
        long j47 = (j34 ^ j37) & 72056494543077120L;
        long j48 = j34 ^ j47;
        long j49 = j37 ^ j47;
        long j50 = (j39 ^ j45) & (-4294967296L);
        long j51 = j39 ^ j50;
        long j52 = j45 ^ j50;
        long j53 = (j42 ^ j48) & 72057594021150720L;
        long j54 = j42 ^ j53;
        long j55 = (j40 ^ j46) & 281474976645120L;
        long j56 = j40 ^ j55;
        long j57 = j55 ^ j46;
        long j58 = (j43 ^ j49) & 1099511627520L;
        jArr3[0] = j51;
        jArr3[1] = j54;
        jArr3[2] = j56;
        jArr3[3] = j43 ^ j58;
        jArr3[4] = j52;
        jArr3[5] = j48 ^ j53;
        jArr3[6] = j57;
        jArr3[7] = j49 ^ j58;
    }

    private void invSubBytes() {
        for (int i2 = 0; i2 < this.wordsInBlock; i2++) {
            long[] jArr = this.internalState;
            long j2 = jArr[i2];
            int i3 = (int) j2;
            int i4 = (int) (j2 >>> 32);
            byte[] bArr = T0;
            byte b2 = bArr[i3 & 255];
            byte[] bArr2 = T1;
            byte b3 = bArr2[(i3 >>> 8) & 255];
            byte[] bArr3 = T2;
            byte b4 = bArr3[(i3 >>> 16) & 255];
            byte[] bArr4 = T3;
            int i5 = (bArr4[i3 >>> 24] << 24) | (b2 & 255) | ((b3 & 255) << 8) | ((b4 & 255) << 16);
            byte b5 = bArr[i4 & 255];
            byte b6 = bArr2[(i4 >>> 8) & 255];
            byte b7 = bArr3[(i4 >>> 16) & 255];
            jArr[i2] = (((long) i5) & BodyPartID.bodyIdMax) | (((long) ((bArr4[i4 >>> 24] << 24) | (((b5 & 255) | ((b6 & 255) << 8)) | ((b7 & 255) << 16)))) << 32);
        }
    }

    private static long mixColumn(long j2) {
        long jMulX = mulX(j2);
        long jRotate = rotate(8, j2) ^ j2;
        long jRotate2 = (jRotate ^ rotate(16, jRotate)) ^ rotate(48, j2);
        return ((rotate(32, mulX2((j2 ^ jRotate2) ^ jMulX)) ^ jRotate2) ^ rotate(40, jMulX)) ^ rotate(48, jMulX);
    }

    private static long mixColumnInv(long j2) {
        long jRotate = rotate(8, j2) ^ j2;
        long jRotate2 = (jRotate ^ rotate(32, jRotate)) ^ rotate(48, j2);
        long j3 = jRotate2 ^ j2;
        long jRotate3 = rotate(48, j2);
        long jRotate4 = rotate(56, j2);
        long jMulX = mulX(j3 ^ jRotate4) ^ rotate(56, j3);
        long jMulX2 = mulX(rotate(40, mulX(jMulX) ^ j2) ^ (rotate(16, j3) ^ j2)) ^ (j3 ^ jRotate3);
        return mulX(rotate(40, ((j2 ^ rotate(32, j3)) ^ jRotate4) ^ mulX(((jRotate3 ^ (rotate(24, j2) ^ j3)) ^ jRotate4) ^ mulX(mulX(jMulX2) ^ rotate(16, jRotate2))))) ^ jRotate2;
    }

    private void mixColumns() {
        for (int i2 = 0; i2 < this.wordsInBlock; i2++) {
            long[] jArr = this.internalState;
            jArr[i2] = mixColumn(jArr[i2]);
        }
    }

    private void mixColumnsInv() {
        for (int i2 = 0; i2 < this.wordsInBlock; i2++) {
            long[] jArr = this.internalState;
            jArr[i2] = mixColumnInv(jArr[i2]);
        }
    }

    private static long mulX(long j2) {
        return (((j2 & (-9187201950435737472L)) >>> 7) * 29) ^ ((9187201950435737471L & j2) << 1);
    }

    private static long mulX2(long j2) {
        return (((j2 & 4629771061636907072L) >>> 6) * 29) ^ (((4557430888798830399L & j2) << 2) ^ ((((-9187201950435737472L) & j2) >>> 6) * 29));
    }

    private static long rotate(int i2, long j2) {
        return (j2 << (-i2)) | (j2 >>> i2);
    }

    private void rotateLeft(long[] jArr, long[] jArr2) {
        int i2 = this.wordsInBlock;
        if (i2 == 2) {
            long j2 = jArr[0];
            long j3 = jArr[1];
            jArr2[0] = (j2 >>> 56) | (j3 << 8);
            jArr2[1] = (j2 << 8) | (j3 >>> 56);
            return;
        }
        if (i2 == 4) {
            long j4 = jArr[0];
            long j5 = jArr[1];
            long j6 = jArr[2];
            long j7 = jArr[3];
            jArr2[0] = (j5 >>> 24) | (j6 << 40);
            jArr2[1] = (j6 >>> 24) | (j7 << 40);
            jArr2[2] = (j7 >>> 24) | (j4 << 40);
            jArr2[3] = (j4 >>> 24) | (j5 << 40);
            return;
        }
        if (i2 != 8) {
            md.k("unsupported block length: only 128/256/512 are allowed");
            return;
        }
        long j8 = jArr[0];
        long j9 = jArr[1];
        long j10 = jArr[2];
        long j11 = jArr[3];
        long j12 = jArr[4];
        long j13 = jArr[5];
        long j14 = jArr[6];
        long j15 = jArr[7];
        jArr2[0] = (j10 >>> 24) | (j11 << 40);
        jArr2[1] = (j11 >>> 24) | (j12 << 40);
        jArr2[2] = (j12 >>> 24) | (j13 << 40);
        jArr2[3] = (j13 >>> 24) | (j14 << 40);
        jArr2[4] = (j14 >>> 24) | (j15 << 40);
        jArr2[5] = (j15 >>> 24) | (j8 << 40);
        jArr2[6] = (j8 >>> 24) | (j9 << 40);
        jArr2[7] = (j9 >>> 24) | (j10 << 40);
    }

    private void shiftRows() {
        int i2 = this.wordsInBlock;
        if (i2 == 2) {
            long[] jArr = this.internalState;
            long j2 = jArr[0];
            long j3 = jArr[1];
            long j4 = (j2 ^ j3) & (-4294967296L);
            jArr[0] = j2 ^ j4;
            jArr[1] = j4 ^ j3;
            return;
        }
        if (i2 == 4) {
            long[] jArr2 = this.internalState;
            long j5 = jArr2[0];
            long j6 = jArr2[1];
            long j7 = jArr2[2];
            long j8 = jArr2[3];
            long j9 = (j5 ^ j7) & (-4294967296L);
            long j10 = j5 ^ j9;
            long j11 = j7 ^ j9;
            long j12 = (j6 ^ j8) & 281474976645120L;
            long j13 = j6 ^ j12;
            long j14 = j8 ^ j12;
            long j15 = (j10 ^ j13) & (-281470681808896L);
            long j16 = (j11 ^ j14) & (-281470681808896L);
            jArr2[0] = j10 ^ j15;
            jArr2[1] = j13 ^ j15;
            jArr2[2] = j11 ^ j16;
            jArr2[3] = j14 ^ j16;
            return;
        }
        if (i2 != 8) {
            md.k("unsupported block length: only 128/256/512 are allowed");
            return;
        }
        long[] jArr3 = this.internalState;
        long j17 = jArr3[0];
        long j18 = jArr3[1];
        long j19 = jArr3[2];
        long j20 = jArr3[3];
        long j21 = jArr3[4];
        long j22 = jArr3[5];
        long j23 = jArr3[6];
        long j24 = jArr3[7];
        long j25 = (j17 ^ j21) & (-4294967296L);
        long j26 = j17 ^ j25;
        long j27 = j21 ^ j25;
        long j28 = (j18 ^ j22) & 72057594021150720L;
        long j29 = j18 ^ j28;
        long j30 = j22 ^ j28;
        long j31 = (j19 ^ j23) & 281474976645120L;
        long j32 = j19 ^ j31;
        long j33 = j23 ^ j31;
        long j34 = (j20 ^ j24) & 1099511627520L;
        long j35 = j20 ^ j34;
        long j36 = j24 ^ j34;
        long j37 = (j26 ^ j32) & (-281470681808896L);
        long j38 = j26 ^ j37;
        long j39 = j32 ^ j37;
        long j40 = (j29 ^ j35) & 72056494543077120L;
        long j41 = j29 ^ j40;
        long j42 = j35 ^ j40;
        long j43 = (j27 ^ j33) & (-281470681808896L);
        long j44 = j27 ^ j43;
        long j45 = j33 ^ j43;
        long j46 = (j30 ^ j36) & 72056494543077120L;
        long j47 = j30 ^ j46;
        long j48 = j36 ^ j46;
        long j49 = (j38 ^ j41) & (-71777214294589696L);
        long j50 = j38 ^ j49;
        long j51 = j41 ^ j49;
        long j52 = (j39 ^ j42) & (-71777214294589696L);
        long j53 = j39 ^ j52;
        long j54 = j42 ^ j52;
        long j55 = (j44 ^ j47) & (-71777214294589696L);
        long j56 = j44 ^ j55;
        long j57 = j47 ^ j55;
        long j58 = (j45 ^ j48) & (-71777214294589696L);
        jArr3[0] = j50;
        jArr3[1] = j51;
        jArr3[2] = j53;
        jArr3[3] = j54;
        jArr3[4] = j56;
        jArr3[5] = j57;
        jArr3[6] = j45 ^ j58;
        jArr3[7] = j48 ^ j58;
    }

    private void subBytes() {
        for (int i2 = 0; i2 < this.wordsInBlock; i2++) {
            long[] jArr = this.internalState;
            long j2 = jArr[i2];
            int i3 = (int) j2;
            int i4 = (int) (j2 >>> 32);
            byte[] bArr = S0;
            byte b2 = bArr[i3 & 255];
            byte[] bArr2 = S1;
            byte b3 = bArr2[(i3 >>> 8) & 255];
            byte[] bArr3 = S2;
            byte b4 = bArr3[(i3 >>> 16) & 255];
            byte[] bArr4 = S3;
            int i5 = (bArr4[i3 >>> 24] << 24) | (b2 & 255) | ((b3 & 255) << 8) | ((b4 & 255) << 16);
            byte b5 = bArr[i4 & 255];
            byte b6 = bArr2[(i4 >>> 8) & 255];
            byte b7 = bArr3[(i4 >>> 16) & 255];
            jArr[i2] = (((long) i5) & BodyPartID.bodyIdMax) | (((long) ((bArr4[i4 >>> 24] << 24) | (((b5 & 255) | ((b6 & 255) << 8)) | ((b7 & 255) << 16)))) << 32);
        }
    }

    private void subRoundKey(int i2) {
        long[] jArr = this.roundKeys[i2];
        for (int i3 = 0; i3 < this.wordsInBlock; i3++) {
            long[] jArr2 = this.internalState;
            jArr2[i3] = jArr2[i3] - jArr[i3];
        }
    }

    private void workingKeyExpandEven(long[] jArr, long[] jArr2) {
        int i2;
        long[] jArr3;
        int i3;
        long[] jArr4;
        int i4 = this.wordsInKey;
        long[] jArr5 = new long[i4];
        long[] jArr6 = new long[this.wordsInBlock];
        System.arraycopy(jArr, 0, jArr5, 0, i4);
        long j2 = 281479271743489L;
        int i5 = 0;
        while (true) {
            for (int i6 = 0; i6 < this.wordsInBlock; i6++) {
                jArr6[i6] = jArr2[i6] + j2;
            }
            for (int i7 = 0; i7 < this.wordsInBlock; i7++) {
                this.internalState[i7] = jArr5[i7] + jArr6[i7];
            }
            subBytes();
            shiftRows();
            mixColumns();
            for (int i8 = 0; i8 < this.wordsInBlock; i8++) {
                long[] jArr7 = this.internalState;
                jArr7[i8] = jArr7[i8] ^ jArr6[i8];
            }
            subBytes();
            shiftRows();
            mixColumns();
            int i9 = 0;
            while (true) {
                i2 = this.wordsInBlock;
                jArr3 = this.internalState;
                if (i9 >= i2) {
                    break;
                }
                jArr3[i9] = jArr3[i9] + jArr6[i9];
                i9++;
            }
            System.arraycopy(jArr3, 0, this.roundKeys[i5], 0, i2);
            if (this.roundsAmount == i5) {
                return;
            }
            if (this.wordsInBlock != this.wordsInKey) {
                i5 += 2;
                j2 <<= 1;
                for (int i10 = 0; i10 < this.wordsInBlock; i10++) {
                    jArr6[i10] = jArr2[i10] + j2;
                }
                int i11 = 0;
                while (true) {
                    int i12 = this.wordsInBlock;
                    if (i11 >= i12) {
                        break;
                    }
                    this.internalState[i11] = jArr5[i12 + i11] + jArr6[i11];
                    i11++;
                }
                subBytes();
                shiftRows();
                mixColumns();
                for (int i13 = 0; i13 < this.wordsInBlock; i13++) {
                    long[] jArr8 = this.internalState;
                    jArr8[i13] = jArr8[i13] ^ jArr6[i13];
                }
                subBytes();
                shiftRows();
                mixColumns();
                int i14 = 0;
                while (true) {
                    i3 = this.wordsInBlock;
                    jArr4 = this.internalState;
                    if (i14 >= i3) {
                        break;
                    }
                    jArr4[i14] = jArr4[i14] + jArr6[i14];
                    i14++;
                }
                System.arraycopy(jArr4, 0, this.roundKeys[i5], 0, i3);
                if (this.roundsAmount == i5) {
                    return;
                }
            }
            i5 += 2;
            j2 <<= 1;
            long j3 = jArr5[0];
            for (int i15 = 1; i15 < i4; i15++) {
                jArr5[i15 - 1] = jArr5[i15];
            }
            jArr5[i4 - 1] = j3;
        }
    }

    private void workingKeyExpandKT(long[] jArr, long[] jArr2) {
        int i2 = this.wordsInBlock;
        long[] jArr3 = new long[i2];
        long[] jArr4 = new long[i2];
        long[] jArr5 = new long[i2];
        this.internalState = jArr5;
        long j2 = jArr5[0];
        int i3 = this.wordsInKey;
        jArr5[0] = j2 + ((long) (i2 + i3 + 1));
        System.arraycopy(jArr, 0, jArr3, 0, i2);
        if (i2 == i3) {
            System.arraycopy(jArr, 0, jArr4, 0, i2);
        } else {
            int i4 = this.wordsInBlock;
            System.arraycopy(jArr, i4, jArr4, 0, i4);
        }
        int i5 = 0;
        while (true) {
            long[] jArr6 = this.internalState;
            if (i5 >= jArr6.length) {
                break;
            }
            jArr6[i5] = jArr6[i5] + jArr3[i5];
            i5++;
        }
        subBytes();
        shiftRows();
        mixColumns();
        int i6 = 0;
        while (true) {
            long[] jArr7 = this.internalState;
            if (i6 >= jArr7.length) {
                break;
            }
            jArr7[i6] = jArr7[i6] ^ jArr4[i6];
            i6++;
        }
        subBytes();
        shiftRows();
        mixColumns();
        int i7 = 0;
        while (true) {
            long[] jArr8 = this.internalState;
            if (i7 >= jArr8.length) {
                subBytes();
                shiftRows();
                mixColumns();
                System.arraycopy(this.internalState, 0, jArr2, 0, this.wordsInBlock);
                return;
            }
            jArr8[i7] = jArr8[i7] + jArr3[i7];
            i7++;
        }
    }

    private void workingKeyExpandOdd() {
        for (int i2 = 1; i2 < this.roundsAmount; i2 += 2) {
            long[][] jArr = this.roundKeys;
            rotateLeft(jArr[i2 - 1], jArr[i2]);
        }
    }

    private void xorRoundKey(int i2) {
        long[] jArr = this.roundKeys[i2];
        for (int i3 = 0; i3 < this.wordsInBlock; i3++) {
            long[] jArr2 = this.internalState;
            jArr2[i3] = jArr2[i3] ^ jArr[i3];
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "DSTU7624";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.wordsInBlock << 3;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0087 A[LOOP:0: B:26:0x0082->B:28:0x0087, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x009b  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:37:0x0090 A[EDGE_INSN: B:37:0x0090->B:29:0x0090 BREAK  A[LOOP:0: B:26:0x0082->B:28:0x0087], SYNTHETIC] */
    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        DefaultServiceProperties defaultServiceProperties;
        int i2;
        long[][] jArr;
        long[] jArr2;
        if (!(cipherParameters instanceof KeyParameter)) {
            md.n("Invalid parameter passed to DSTU7624Engine init");
            return;
        }
        this.forEncryption = z;
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        int length = key.length << 3;
        int i3 = this.wordsInBlock << 6;
        if (length != 128 && length != 256 && length != 512) {
            md.n("unsupported key length: only 128/256/512 are allowed");
            return;
        }
        if (length != i3 && length != i3 * 2) {
            md.n("Unsupported key length");
            return;
        }
        if (length == 128) {
            this.roundsAmount = 10;
            defaultServiceProperties = new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z));
        } else {
            if (length != 256) {
                if (length == 512) {
                    this.roundsAmount = 18;
                    defaultServiceProperties = new DefaultServiceProperties(getAlgorithmName(), 256, cipherParameters, Utils.getPurpose(z));
                }
                this.wordsInKey = length >>> 6;
                this.roundKeys = new long[this.roundsAmount + 1][];
                i2 = 0;
                while (true) {
                    jArr = this.roundKeys;
                    if (i2 < jArr.length) {
                        break;
                    }
                    jArr[i2] = new long[this.wordsInBlock];
                    i2++;
                }
                jArr2 = new long[this.wordsInKey];
                this.workingKey = jArr2;
                if (key.length == (length >>> 3)) {
                    md.n("Invalid key parameter passed to DSTU7624Engine init");
                    return;
                }
                Pack.littleEndianToLong(key, 0, jArr2);
                long[] jArr3 = new long[this.wordsInBlock];
                workingKeyExpandKT(this.workingKey, jArr3);
                workingKeyExpandEven(this.workingKey, jArr3);
                workingKeyExpandOdd();
            }
            this.roundsAmount = 14;
            defaultServiceProperties = new DefaultServiceProperties(getAlgorithmName(), 256, cipherParameters, Utils.getPurpose(z));
        }
        CryptoServicesRegistrar.checkConstraints(defaultServiceProperties);
        this.wordsInKey = length >>> 6;
        this.roundKeys = new long[this.roundsAmount + 1][];
        i2 = 0;
        while (true) {
            jArr = this.roundKeys;
            if (i2 < jArr.length) {
                break;
                break;
            } else {
                jArr[i2] = new long[this.wordsInBlock];
                i2++;
            }
        }
        jArr2 = new long[this.wordsInKey];
        this.workingKey = jArr2;
        if (key.length == (length >>> 3)) {
            md.n("Invalid key parameter passed to DSTU7624Engine init");
            return;
        }
        Pack.littleEndianToLong(key, 0, jArr2);
        long[] jArr4 = new long[this.wordsInBlock];
        workingKeyExpandKT(this.workingKey, jArr4);
        workingKeyExpandEven(this.workingKey, jArr4);
        workingKeyExpandOdd();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i2, byte[] bArr2, int i3) throws IllegalStateException, DataLengthException {
        int i4;
        int i5 = 0;
        if (this.workingKey == null) {
            md.k("DSTU7624Engine not initialised");
            return 0;
        }
        if (getBlockSize() + i2 > bArr.length) {
            b21.q("Input buffer too short");
            return 0;
        }
        if (getBlockSize() + i3 > bArr2.length) {
            mt.n("Output buffer too short");
            return 0;
        }
        boolean z = this.forEncryption;
        int i6 = this.wordsInBlock;
        if (z) {
            if (i6 != 2) {
                Pack.littleEndianToLong(bArr, i2, this.internalState);
                addRoundKey(0);
                while (true) {
                    subBytes();
                    shiftRows();
                    mixColumns();
                    i5++;
                    i4 = this.roundsAmount;
                    if (i5 == i4) {
                        break;
                    }
                    xorRoundKey(i5);
                }
                addRoundKey(i4);
                Pack.longToLittleEndian(this.internalState, bArr2, i3);
            } else {
                encryptBlock_128(bArr, i2, bArr2, i3);
            }
        } else if (i6 != 2) {
            Pack.littleEndianToLong(bArr, i2, this.internalState);
            subRoundKey(this.roundsAmount);
            int i7 = this.roundsAmount;
            while (true) {
                mixColumnsInv();
                invShiftRows();
                invSubBytes();
                i7--;
                if (i7 == 0) {
                    break;
                }
                xorRoundKey(i7);
            }
            subRoundKey(0);
            Pack.longToLittleEndian(this.internalState, bArr2, i3);
        } else {
            decryptBlock_128(bArr, i2, bArr2, i3);
        }
        return getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        Arrays.fill(this.internalState, 0L);
    }
}
