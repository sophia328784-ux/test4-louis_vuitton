package com.google.ar.core;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes2.dex */
final class u implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f33440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f33441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f33442c;
    public final /* synthetic */ InstallActivity d;

    public u(InstallActivity installActivity, int i2, int i3, int i4) {
        this.f33440a = i2;
        this.f33441b = i3;
        this.f33442c = i4;
        this.d = installActivity;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = 1.0f - valueAnimator.getAnimatedFraction();
        float animatedFraction2 = valueAnimator.getAnimatedFraction() * this.f33441b;
        InstallActivity installActivity = this.d;
        installActivity.getWindow().setLayout((int) ((this.f33440a * animatedFraction) + animatedFraction2), (int) ((this.f33442c * animatedFraction) + animatedFraction2));
        installActivity.getWindow().getDecorView().refreshDrawableState();
    }
}
