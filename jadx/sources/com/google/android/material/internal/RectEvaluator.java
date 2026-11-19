package com.google.android.material.internal;

import android.animation.TypeEvaluator;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public class RectEvaluator implements TypeEvaluator<Rect> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f32720a;

    public RectEvaluator(Rect rect) {
        this.f32720a = rect;
    }

    @Override // android.animation.TypeEvaluator
    public final Rect evaluate(float f2, Rect rect, Rect rect2) {
        Rect rect3 = rect;
        Rect rect4 = rect2;
        int i2 = rect3.left;
        int i3 = i2 + ((int) ((rect4.left - i2) * f2));
        int i4 = rect3.top;
        int i5 = i4 + ((int) ((rect4.top - i4) * f2));
        int i6 = rect3.right;
        int i7 = i6 + ((int) ((rect4.right - i6) * f2));
        int i8 = rect3.bottom;
        int i9 = i8 + ((int) ((rect4.bottom - i8) * f2));
        Rect rect5 = this.f32720a;
        rect5.set(i3, i5, i7, i9);
        return rect5;
    }
}
