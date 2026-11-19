package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements MultiViewUpdateListener.Listener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f32750a;

    @Override // com.google.android.material.internal.MultiViewUpdateListener.Listener
    public final void a(ValueAnimator valueAnimator, View view) {
        switch (this.f32750a) {
            case 0:
                view.setTranslationX(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 1:
                view.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 2:
                Float f2 = (Float) valueAnimator.getAnimatedValue();
                view.setScaleX(f2.floatValue());
                view.setScaleY(f2.floatValue());
                break;
            default:
                view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
        }
    }
}
