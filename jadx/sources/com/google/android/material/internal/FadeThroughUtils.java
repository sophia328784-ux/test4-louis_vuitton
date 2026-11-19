package com.google.android.material.internal;

/* JADX INFO: loaded from: classes2.dex */
abstract class FadeThroughUtils {
    public static void a(float f2, float[] fArr) {
        if (f2 <= 0.5f) {
            fArr[0] = 1.0f - (f2 * 2.0f);
            fArr[1] = 0.0f;
        } else {
            fArr[0] = 0.0f;
            fArr[1] = (f2 * 2.0f) - 1.0f;
        }
    }
}
