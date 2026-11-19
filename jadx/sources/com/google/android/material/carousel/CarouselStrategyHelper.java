package com.google.android.material.carousel;

/* JADX INFO: loaded from: classes2.dex */
abstract class CarouselStrategyHelper {
    public static float a(float f2, float f3, int i2) {
        return (Math.max(0, i2 - 1) * f3) + f2;
    }

    public static float b(float f2, float f3, int i2) {
        return i2 > 0 ? (f3 / 2.0f) + f2 : f2;
    }

    public static float c(float f2, float f3, float f4, int i2) {
        return i2 > 0 ? (f4 / 2.0f) + f3 : f2;
    }
}
