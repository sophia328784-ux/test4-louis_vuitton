package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class FadeThroughUpdateListener implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f32711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f32712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float[] f32713c = new float[2];

    public FadeThroughUpdateListener(View view, View view2) {
        this.f32711a = view;
        this.f32712b = view2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float[] fArr = this.f32713c;
        FadeThroughUtils.a(fFloatValue, fArr);
        View view = this.f32711a;
        if (view != null) {
            view.setAlpha(fArr[0]);
        }
        View view2 = this.f32712b;
        if (view2 != null) {
            view2.setAlpha(fArr[1]);
        }
    }
}
