package org.spongycastle.pqc.math.linearalgebra;

import defpackage.lc0;
import java.lang.reflect.Array;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes5.dex */
public class GF2Matrix extends Matrix {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f78247c;
    public int d;

    public GF2Matrix(int i2, char c2, SecureRandom secureRandom) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int i3;
        int[][] iArr4;
        if (i2 <= 0) {
            lc0.l("Size of matrix is non-positive.");
            throw null;
        }
        Class cls = Integer.TYPE;
        int i4 = 0;
        int i5 = 1;
        if (c2 == 'I') {
            this.f78253a = i2;
            this.f78254b = i2;
            int i6 = (i2 + 31) >>> 5;
            this.d = i6;
            this.f78247c = (int[][]) Array.newInstance((Class<?>) cls, i2, i6);
            for (int i7 = 0; i7 < this.f78253a; i7++) {
                for (int i8 = 0; i8 < this.d; i8++) {
                    this.f78247c[i7][i8] = 0;
                }
            }
            for (int i9 = 0; i9 < this.f78253a; i9++) {
                this.f78247c[i9][i9 >>> 5] = 1 << (i9 & 31);
            }
            return;
        }
        if (c2 == 'L') {
            this.f78253a = i2;
            this.f78254b = i2;
            int i10 = (i2 + 31) >>> 5;
            this.d = i10;
            this.f78247c = (int[][]) Array.newInstance((Class<?>) cls, i2, i10);
            for (int i11 = 0; i11 < this.f78253a; i11++) {
                int i12 = i11 >>> 5;
                int i13 = i11 & 31;
                int i14 = 31 - i13;
                int i15 = 1 << i13;
                int i16 = 0;
                while (true) {
                    iArr = this.f78247c;
                    if (i16 >= i12) {
                        break;
                    }
                    iArr[i11][i16] = secureRandom.nextInt();
                    i16++;
                }
                iArr[i11][i12] = i15 | (secureRandom.nextInt() >>> i14);
                while (true) {
                    i12++;
                    if (i12 < this.d) {
                        this.f78247c[i11][i12] = 0;
                    }
                }
            }
            return;
        }
        if (c2 != 'R') {
            if (c2 != 'U') {
                if (c2 == 'Z') {
                    a(i2, i2);
                    return;
                } else {
                    lc0.l("Unknown matrix type.");
                    throw null;
                }
            }
            this.f78253a = i2;
            this.f78254b = i2;
            int i17 = (i2 + 31) >>> 5;
            this.d = i17;
            this.f78247c = (int[][]) Array.newInstance((Class<?>) cls, i2, i17);
            int i18 = i2 & 31;
            int i19 = i18 == 0 ? -1 : (1 << i18) - 1;
            for (int i20 = 0; i20 < this.f78253a; i20++) {
                int i21 = i20 >>> 5;
                int i22 = i20 & 31;
                int i23 = 0;
                while (true) {
                    iArr3 = this.f78247c;
                    if (i23 >= i21) {
                        break;
                    }
                    iArr3[i20][i23] = 0;
                    i23++;
                }
                iArr3[i20][i21] = (secureRandom.nextInt() | 1) << i22;
                while (true) {
                    i21++;
                    i3 = this.d;
                    iArr4 = this.f78247c;
                    if (i21 < i3) {
                        iArr4[i20][i21] = secureRandom.nextInt();
                    }
                }
                int[] iArr5 = iArr4[i20];
                int i24 = i3 - 1;
                iArr5[i24] = iArr5[i24] & i19;
            }
            return;
        }
        this.f78253a = i2;
        this.f78254b = i2;
        int i25 = (i2 + 31) >>> 5;
        this.d = i25;
        this.f78247c = (int[][]) Array.newInstance((Class<?>) cls, i2, i25);
        GF2Matrix gF2Matrix = new GF2Matrix(i2, 'L', secureRandom);
        GF2Matrix gF2Matrix2 = new GF2Matrix(i2, org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix.MATRIX_TYPE_RANDOM_UT, secureRandom);
        if (gF2Matrix2.f78253a != gF2Matrix.f78254b) {
            lc0.l("length mismatch");
            throw null;
        }
        int i26 = gF2Matrix.f78253a;
        int i27 = gF2Matrix2.f78254b;
        GF2Matrix gF2Matrix3 = new GF2Matrix();
        if (i27 <= 0 || i26 <= 0) {
            lc0.l("size of matrix is non-positive");
            throw null;
        }
        gF2Matrix3.a(i26, i27);
        int i28 = gF2Matrix.f78254b & 31;
        int i29 = gF2Matrix.d;
        i29 = i28 != 0 ? i29 - 1 : i29;
        int i30 = 0;
        while (i30 < gF2Matrix.f78253a) {
            int i31 = i4;
            int i32 = i31;
            while (true) {
                iArr2 = gF2Matrix.f78247c;
                if (i31 >= i29) {
                    break;
                }
                int i33 = iArr2[i30][i31];
                int i34 = i4;
                while (i34 < 32) {
                    if (((i5 << i34) & i33) != 0) {
                        for (int i35 = i4; i35 < gF2Matrix2.d; i35++) {
                            int[] iArr6 = gF2Matrix3.f78247c[i30];
                            iArr6[i35] = iArr6[i35] ^ gF2Matrix2.f78247c[i32][i35];
                        }
                    }
                    i32++;
                    i34++;
                    i5 = i5;
                    i4 = 0;
                }
                i31++;
                i4 = 0;
            }
            int i36 = i5;
            int i37 = iArr2[i30][gF2Matrix.d - 1];
            for (int i38 = 0; i38 < i28; i38++) {
                if (((i36 << i38) & i37) != 0) {
                    for (int i39 = 0; i39 < gF2Matrix2.d; i39++) {
                        int[] iArr7 = gF2Matrix3.f78247c[i30];
                        iArr7[i39] = iArr7[i39] ^ gF2Matrix2.f78247c[i32][i39];
                    }
                }
                i32++;
            }
            i30++;
            i5 = i36;
            i4 = 0;
        }
        int[] iArr8 = new Permutation(i2, secureRandom).f78255a;
        int[] iArr9 = new int[iArr8.length];
        int i40 = 0;
        System.arraycopy(iArr8, 0, iArr9, 0, iArr8.length);
        int i41 = 0;
        while (i41 < i2) {
            System.arraycopy(gF2Matrix3.f78247c[i41], i40, this.f78247c[iArr9[i41]], i40, this.d);
            i41++;
            i40 = 0;
        }
    }

    public final void a(int i2, int i3) {
        this.f78253a = i2;
        this.f78254b = i3;
        int i4 = (i3 + 31) >>> 5;
        this.d = i4;
        this.f78247c = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, i4);
        for (int i5 = 0; i5 < this.f78253a; i5++) {
            for (int i6 = 0; i6 < this.d; i6++) {
                this.f78247c[i5][i6] = 0;
            }
        }
    }

    public final byte[] b() {
        int i2 = (this.f78254b + 7) >>> 3;
        int i3 = this.f78253a;
        int i4 = 8;
        byte[] bArr = new byte[(i2 * i3) + 8];
        LittleEndianConversions.a(i3, bArr, 0);
        LittleEndianConversions.a(this.f78254b, bArr, 4);
        int i5 = this.f78254b;
        int i6 = i5 >>> 5;
        int i7 = i5 & 31;
        for (int i8 = 0; i8 < this.f78253a; i8++) {
            int i9 = 0;
            while (i9 < i6) {
                LittleEndianConversions.a(this.f78247c[i8][i9], bArr, i4);
                i9++;
                i4 += 4;
            }
            int i10 = 0;
            while (i10 < i7) {
                bArr[i4] = (byte) ((this.f78247c[i8][i6] >>> i10) & 255);
                i10 += 8;
                i4++;
            }
        }
        return bArr;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof GF2Matrix)) {
            return false;
        }
        GF2Matrix gF2Matrix = (GF2Matrix) obj;
        if (this.f78253a != gF2Matrix.f78253a || this.f78254b != gF2Matrix.f78254b || this.d != gF2Matrix.d) {
            return false;
        }
        for (int i2 = 0; i2 < this.f78253a; i2++) {
            if (!IntUtils.a(this.f78247c[i2], gF2Matrix.f78247c[i2])) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode = (((this.f78253a * 31) + this.f78254b) * 31) + this.d;
        for (int i2 = 0; i2 < this.f78253a; i2++) {
            iHashCode = (iHashCode * 31) + this.f78247c[i2].hashCode();
        }
        return iHashCode;
    }

    public final String toString() {
        int[][] iArr;
        int i2 = this.f78254b & 31;
        int i3 = this.d;
        if (i2 != 0) {
            i3--;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < this.f78253a; i4++) {
            stringBuffer.append(i4 + ": ");
            int i5 = 0;
            while (true) {
                iArr = this.f78247c;
                if (i5 >= i3) {
                    break;
                }
                int i6 = iArr[i4][i5];
                for (int i7 = 0; i7 < 32; i7++) {
                    if (((i6 >>> i7) & 1) == 0) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append('1');
                    }
                }
                stringBuffer.append(' ');
                i5++;
            }
            int i8 = iArr[i4][this.d - 1];
            for (int i9 = 0; i9 < i2; i9++) {
                if (((i8 >>> i9) & 1) == 0) {
                    stringBuffer.append('0');
                } else {
                    stringBuffer.append('1');
                }
            }
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }

    public GF2Matrix(int i2, int[][] iArr) {
        int[] iArr2 = iArr[0];
        if (iArr2.length == ((i2 + 31) >> 5)) {
            this.f78254b = i2;
            this.f78253a = iArr.length;
            this.d = iArr2.length;
            int i3 = i2 & 31;
            int i4 = i3 == 0 ? -1 : (1 << i3) - 1;
            for (int i5 = 0; i5 < this.f78253a; i5++) {
                int[] iArr3 = iArr[i5];
                int i6 = this.d - 1;
                iArr3[i6] = iArr3[i6] & i4;
            }
            this.f78247c = iArr;
            return;
        }
        lc0.l("Int array does not match given number of columns.");
        throw null;
    }

    public GF2Matrix(int i2, char c2) {
        this(i2, c2, new SecureRandom());
    }

    public GF2Matrix(byte[] bArr) {
        if (bArr.length >= 9) {
            this.f78253a = LittleEndianConversions.b(bArr, 0);
            int iB = LittleEndianConversions.b(bArr, 4);
            this.f78254b = iB;
            int i2 = this.f78253a;
            int i3 = ((iB + 7) >>> 3) * i2;
            if (i2 > 0) {
                int i4 = 8;
                if (i3 == bArr.length - 8) {
                    int i5 = (iB + 31) >>> 5;
                    this.d = i5;
                    this.f78247c = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, i5);
                    int i6 = this.f78254b;
                    int i7 = i6 >> 5;
                    int i8 = i6 & 31;
                    for (int i9 = 0; i9 < this.f78253a; i9++) {
                        int i10 = 0;
                        while (i10 < i7) {
                            this.f78247c[i9][i10] = LittleEndianConversions.b(bArr, i4);
                            i10++;
                            i4 += 4;
                        }
                        int i11 = 0;
                        while (i11 < i8) {
                            int[] iArr = this.f78247c[i9];
                            iArr[i7] = iArr[i7] ^ ((bArr[i4] & 255) << i11);
                            i11 += 8;
                            i4++;
                        }
                    }
                    return;
                }
            }
            lc0.l("given array is not an encoded matrix over GF(2)");
            throw null;
        }
        lc0.l("given array is not an encoded matrix over GF(2)");
        throw null;
    }

    public GF2Matrix(GF2Matrix gF2Matrix) {
        this.f78254b = gF2Matrix.f78254b;
        this.f78253a = gF2Matrix.f78253a;
        this.d = gF2Matrix.d;
        this.f78247c = new int[gF2Matrix.f78247c.length][];
        int i2 = 0;
        while (true) {
            int[][] iArr = this.f78247c;
            if (i2 >= iArr.length) {
                return;
            }
            int[] iArr2 = gF2Matrix.f78247c[i2];
            int[] iArr3 = new int[iArr2.length];
            System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
            iArr[i2] = iArr3;
            i2++;
        }
    }
}
