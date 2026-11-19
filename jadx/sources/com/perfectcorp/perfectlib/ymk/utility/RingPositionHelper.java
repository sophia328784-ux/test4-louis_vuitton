package com.perfectcorp.perfectlib.ymk.utility;

import com.perfectcorp.perfectlib.RingPosition;

/* JADX INFO: loaded from: classes3.dex */
public class RingPositionHelper {
    public static a a(RingPosition ringPosition) {
        int i2 = b.f42046a[ringPosition.ordinal()];
        if (i2 == 1) {
            return a.f42041a;
        }
        if (i2 == 2) {
            return a.f42042b;
        }
        if (i2 != 3) {
            return i2 != 4 ? a.d : a.f42044e;
        }
        return a.f42043c;
    }
}
