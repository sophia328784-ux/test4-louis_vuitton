package com.google.android.material.carousel;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
abstract class CarouselOrientationHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f32448a;

    public CarouselOrientationHelper(int i2) {
        this.f32448a = i2;
    }

    public abstract void a(RectF rectF, RectF rectF2, RectF rectF3);

    public abstract RectF b(float f2, float f3, float f4, float f5);

    public abstract int c();

    public abstract int d();

    public abstract int e();

    public abstract int f();

    public abstract int g();

    public abstract void h(View view, int i2, int i3);

    public abstract void i(RectF rectF, RectF rectF2, RectF rectF3);

    public abstract void j(View view, Rect rect, float f2, float f3);
}
