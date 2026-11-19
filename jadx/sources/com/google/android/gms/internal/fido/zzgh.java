package com.google.android.gms.internal.fido;

import defpackage.a61;
import defpackage.lc0;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgh {
    public static int a(int i2, int i3) {
        RoundingMode roundingMode = RoundingMode.CEILING;
        roundingMode.getClass();
        if (i3 == 0) {
            lc0.l("/ by zero");
            return 0;
        }
        int i4 = i2 / i3;
        int i5 = i2 - (i3 * i4);
        if (i5 == 0) {
            return i4;
        }
        int i6 = ((i2 ^ i3) >> 31) | 1;
        switch (zzgg.f29893a[roundingMode.ordinal()]) {
            case 1:
                lc0.l("mode was UNNECESSARY, but rounding was necessary");
                return 0;
            case 2:
                return i4;
            case 3:
                if (i6 >= 0) {
                    return i4;
                }
                break;
            case 4:
                break;
            case 5:
                if (i6 <= 0) {
                    return i4;
                }
                break;
            case 6:
            case 7:
            case 8:
                int iAbs = Math.abs(i5);
                int iAbs2 = iAbs - (Math.abs(i3) - iAbs);
                if (iAbs2 == 0) {
                    RoundingMode roundingMode2 = RoundingMode.HALF_UP;
                    RoundingMode roundingMode3 = RoundingMode.HALF_EVEN;
                    return i4;
                }
                if (iAbs2 <= 0) {
                    return i4;
                }
                break;
            default:
                a61.h();
                return 0;
        }
        return i4 + i6;
    }
}
