package org.spongycastle.math.raw;

import defpackage.md;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Mod {
    public static int a(int i2, int i3, int[] iArr, int[] iArr2, int[] iArr3) {
        int i4;
        int length = iArr.length;
        int i5 = 0;
        while (true) {
            i4 = iArr2[0];
            if (i4 != 0) {
                break;
            }
            int i6 = i2;
            int i7 = 0;
            while (true) {
                i6--;
                if (i6 >= 0) {
                    int i8 = iArr2[i6];
                    iArr2[i6] = i7;
                    i7 = i8;
                }
            }
            i5 += 32;
        }
        int i9 = 0;
        while ((i4 & 1) == 0) {
            i4 >>>= 1;
            i9++;
        }
        if (i9 > 0) {
            int i10 = 0;
            while (true) {
                i2--;
                if (i2 < 0) {
                    break;
                }
                int i11 = iArr2[i2];
                iArr2[i2] = (i10 << (-i9)) | (i11 >>> i9);
                i10 = i11;
            }
            i5 += i9;
        }
        for (int i12 = 0; i12 < i5; i12++) {
            if ((iArr3[0] & 1) != 0) {
                i3 = (i3 < 0 ? Nat.e(length, iArr, iArr3) : Nat.y(length, iArr, iArr3)) + i3;
            }
            int i13 = i3;
            int i14 = length;
            while (true) {
                i14--;
                if (i14 >= 0) {
                    int i15 = iArr3[i14];
                    iArr3[i14] = (i13 << 31) | (i15 >>> 1);
                    i13 = i15;
                }
            }
        }
        return i3;
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        if (Nat.r(length, iArr2)) {
            md.n("'x' cannot be 0");
            return;
        }
        if (Nat.q(length, iArr2)) {
            System.arraycopy(iArr2, 0, iArr3, 0, length);
            return;
        }
        int[] iArr4 = new int[length];
        System.arraycopy(iArr2, 0, iArr4, 0, length);
        int[] iArr5 = new int[length];
        iArr5[0] = 1;
        int iA = (1 & iArr4[0]) == 0 ? a(length, 0, iArr, iArr4, iArr5) : 0;
        if (Nat.q(length, iArr4)) {
            if (iA < 0) {
                Nat.a(iArr.length, iArr5, iArr, iArr3);
                return;
            } else {
                System.arraycopy(iArr5, 0, iArr3, 0, iArr.length);
                return;
            }
        }
        int[] iArr6 = new int[length];
        System.arraycopy(iArr, 0, iArr6, 0, length);
        int[] iArr7 = new int[length];
        int i2 = length;
        int iA2 = 0;
        while (true) {
            int i3 = i2 - 1;
            if (iArr4[i3] == 0 && iArr6[i3] == 0) {
                i2--;
            } else if (Nat.l(i2, iArr4, iArr6)) {
                Nat.y(i2, iArr6, iArr4);
                iA = a(i2, (Nat.y(length, iArr7, iArr5) - iA2) + iA, iArr, iArr4, iArr5);
                if (Nat.q(i2, iArr4)) {
                    if (iA < 0) {
                        Nat.a(iArr.length, iArr5, iArr, iArr3);
                        return;
                    } else {
                        System.arraycopy(iArr5, 0, iArr3, 0, iArr.length);
                        return;
                    }
                }
            } else {
                Nat.y(i2, iArr4, iArr6);
                iA2 = a(i2, (Nat.y(length, iArr5, iArr7) - iA) + iA2, iArr, iArr6, iArr7);
                if (Nat.q(i2, iArr6)) {
                    if (iA2 < 0) {
                        Nat.a(iArr.length, iArr7, iArr, iArr3);
                        return;
                    } else {
                        System.arraycopy(iArr7, 0, iArr3, 0, iArr.length);
                        return;
                    }
                }
            }
        }
    }
}
