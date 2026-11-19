package XqjhMb;

/* JADX INFO: loaded from: classes.dex */
public final class CnROgj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f80a = 7617;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f81b = 1001;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f82c = CZqWkm.a("pTrUTT\u000ebx{u\"em%v|{Dy\u0001by>)");

    public static void a(int i2, float[] fArr, float[] fArr2, int i3) {
        int i4;
        int i5;
        if (i3 == 1) {
            return;
        }
        int i6 = i3 / 2;
        int i7 = 0;
        for (int i8 = 0; i8 < i6; i8++) {
            int i9 = i2 + i8;
            float f2 = fArr[i9];
            float f3 = fArr[((i2 + i3) - 1) - i8];
            fArr2[i9] = f2 + f3;
            fArr2[i9 + i6] = (f2 - f3) / (((float) Math.cos(((((double) i8) + 0.5d) * 3.141592653589793d) / ((double) i3))) * 2.0f);
        }
        a(i2, fArr2, fArr, i6);
        int i10 = i2 + i6;
        a(i10, fArr2, fArr, i6);
        while (true) {
            if (i7 >= i6 - 1) {
                int i11 = i2 + i3;
                fArr[i11 - 2] = fArr2[i10 - 1];
                int i12 = i11 - 1;
                fArr[i12] = fArr2[i12];
                return;
            }
            int i13 = (i7 * 2) + i2;
            int i14 = i2 + i7;
            fArr[i13] = fArr2[i14];
            int i15 = i14 + i6;
            fArr[i13 + 1] = fArr2[i15] + fArr2[i15 + 1];
            i7++;
            if (f81b <= 1000) {
                while (true) {
                    int i16 = f81b;
                    int i17 = i16 + 65;
                    if (i17 != 23) {
                        if (i17 != 156) {
                            if (i17 == 256) {
                                f81b = (i16 % 94) % 82;
                            } else if (i17 != 432) {
                            }
                            f81b = (f81b % 95) % 107;
                            if ((f80a ^ 7617) != 0) {
                                while (true) {
                                    i5 = f80a;
                                    int i18 = i5 + 91;
                                    if (i18 != 8) {
                                        if (i18 == 74) {
                                            break;
                                        }
                                    } else {
                                        f80a = (i5 ^ 8177) >> 63;
                                    }
                                }
                                f80a = (i5 >> 104) + i5;
                            }
                        } else {
                            f81b = (i16 * 69) + i16;
                            if ((f80a ^ 7617) != 0) {
                                do {
                                    i4 = f80a;
                                } while (i4 + 65 != 90);
                                while (true) {
                                    f80a = (f80a + i4) % 35;
                                }
                            }
                        }
                    }
                    while (true) {
                        f81b = ((f81b ^ 3212) + i16) % 109;
                    }
                }
            }
        }
    }
}
