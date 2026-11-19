package org.bouncycastle.math.ec.rfc7748;

import defpackage.md;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.rfc8032.Ed448;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public abstract class X448 {
    private static final int C_A = 156326;
    private static final int C_A24 = 39082;
    public static final int POINT_SIZE = 56;
    public static final int SCALAR_SIZE = 56;

    public static class F extends X448Field {
        private F() {
        }
    }

    public static class Friend {
        private static final Friend INSTANCE = new Friend();

        private Friend() {
        }
    }

    public static boolean calculateAgreement(byte[] bArr, int i2, byte[] bArr2, int i3, byte[] bArr3, int i4) {
        scalarMult(bArr, i2, bArr2, i3, bArr3, i4);
        return !Arrays.areAllZeroes(bArr3, i4, 56);
    }

    private static int decode32(byte[] bArr, int i2) {
        return (bArr[i2 + 3] << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    private static void decodeScalar(byte[] bArr, int i2, int[] iArr) {
        for (int i3 = 0; i3 < 14; i3++) {
            iArr[i3] = decode32(bArr, (i3 * 4) + i2);
        }
        iArr[0] = iArr[0] & (-4);
        iArr[13] = iArr[13] | Integer.MIN_VALUE;
    }

    public static void generatePrivateKey(SecureRandom secureRandom, byte[] bArr) {
        if (bArr.length != 56) {
            md.n("k");
            return;
        }
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & 252);
        bArr[55] = (byte) (bArr[55] | 128);
    }

    public static void generatePublicKey(byte[] bArr, int i2, byte[] bArr2, int i3) {
        scalarMultBase(bArr, i2, bArr2, i3);
    }

    private static void pointDouble(int[] iArr, int[] iArr2) {
        int[] iArrCreate = X448Field.create();
        int[] iArrCreate2 = X448Field.create();
        X448Field.add(iArr, iArr2, iArrCreate);
        X448Field.sub(iArr, iArr2, iArrCreate2);
        X448Field.sqr(iArrCreate, iArrCreate);
        X448Field.sqr(iArrCreate2, iArrCreate2);
        X448Field.mul(iArrCreate, iArrCreate2, iArr);
        X448Field.sub(iArrCreate, iArrCreate2, iArrCreate);
        X448Field.mul(iArrCreate, C_A24, iArr2);
        X448Field.add(iArr2, iArrCreate2, iArr2);
        X448Field.mul(iArr2, iArrCreate, iArr2);
    }

    public static void precompute() {
        Ed448.precompute();
    }

    public static void scalarMult(byte[] bArr, int i2, byte[] bArr2, int i3, byte[] bArr3, int i4) {
        int[] iArr = new int[14];
        decodeScalar(bArr, i2, iArr);
        int[] iArrCreate = X448Field.create();
        X448Field.decode(bArr2, i3, iArrCreate);
        int[] iArrCreate2 = X448Field.create();
        X448Field.copy(iArrCreate, 0, iArrCreate2, 0);
        int[] iArrCreate3 = X448Field.create();
        iArrCreate3[0] = 1;
        int[] iArrCreate4 = X448Field.create();
        iArrCreate4[0] = 1;
        int[] iArrCreate5 = X448Field.create();
        int[] iArrCreate6 = X448Field.create();
        int[] iArrCreate7 = X448Field.create();
        int i5 = 447;
        int i6 = 1;
        while (true) {
            X448Field.add(iArrCreate4, iArrCreate5, iArrCreate6);
            X448Field.sub(iArrCreate4, iArrCreate5, iArrCreate4);
            X448Field.add(iArrCreate2, iArrCreate3, iArrCreate5);
            X448Field.sub(iArrCreate2, iArrCreate3, iArrCreate2);
            X448Field.mul(iArrCreate6, iArrCreate2, iArrCreate6);
            X448Field.mul(iArrCreate4, iArrCreate5, iArrCreate4);
            X448Field.sqr(iArrCreate5, iArrCreate5);
            X448Field.sqr(iArrCreate2, iArrCreate2);
            X448Field.sub(iArrCreate5, iArrCreate2, iArrCreate7);
            X448Field.mul(iArrCreate7, C_A24, iArrCreate3);
            X448Field.add(iArrCreate3, iArrCreate2, iArrCreate3);
            X448Field.mul(iArrCreate3, iArrCreate7, iArrCreate3);
            X448Field.mul(iArrCreate2, iArrCreate5, iArrCreate2);
            X448Field.sub(iArrCreate6, iArrCreate4, iArrCreate5);
            X448Field.add(iArrCreate6, iArrCreate4, iArrCreate4);
            X448Field.sqr(iArrCreate4, iArrCreate4);
            X448Field.sqr(iArrCreate5, iArrCreate5);
            X448Field.mul(iArrCreate5, iArrCreate, iArrCreate5);
            i5--;
            int i7 = (iArr[i5 >>> 5] >>> (i5 & 31)) & 1;
            int i8 = i6 ^ i7;
            X448Field.cswap(i8, iArrCreate2, iArrCreate4);
            X448Field.cswap(i8, iArrCreate3, iArrCreate5);
            if (i5 < 2) {
                break;
            } else {
                i6 = i7;
            }
        }
        for (int i9 = 0; i9 < 2; i9++) {
            pointDouble(iArrCreate2, iArrCreate3);
        }
        X448Field.inv(iArrCreate3, iArrCreate3);
        X448Field.mul(iArrCreate2, iArrCreate3, iArrCreate2);
        X448Field.normalize(iArrCreate2);
        X448Field.encode(iArrCreate2, bArr3, i4);
    }

    public static void scalarMultBase(byte[] bArr, int i2, byte[] bArr2, int i3) {
        int[] iArrCreate = X448Field.create();
        int[] iArrCreate2 = X448Field.create();
        Ed448.scalarMultBaseXY(Friend.INSTANCE, bArr, i2, iArrCreate, iArrCreate2);
        X448Field.inv(iArrCreate, iArrCreate);
        X448Field.mul(iArrCreate, iArrCreate2, iArrCreate);
        X448Field.sqr(iArrCreate, iArrCreate);
        X448Field.normalize(iArrCreate);
        X448Field.encode(iArrCreate, bArr2, i3);
    }
}
