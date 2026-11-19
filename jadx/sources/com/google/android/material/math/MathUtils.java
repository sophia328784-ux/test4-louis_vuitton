package com.google.android.material.math;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MathUtils {
    public static float a(float f2, float f3, float f4, float f5) {
        return (float) Math.hypot(f4 - f2, f5 - f3);
    }

    public static float b(float f2, float f3, float f4, float f5) {
        float fA = a(f2, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float fA2 = a(f2, f3, f4, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float fA3 = a(f2, f3, f4, f5);
        float fA4 = a(f2, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, f5);
        if (fA > fA2 && fA > fA3 && fA > fA4) {
            return fA;
        }
        if (fA2 <= fA3 || fA2 <= fA4) {
            return fA3 > fA4 ? fA3 : fA4;
        }
        return fA2;
    }

    public static float c(float f2, float f3, float f4) {
        return (f4 * f3) + ((1.0f - f4) * f2);
    }
}
