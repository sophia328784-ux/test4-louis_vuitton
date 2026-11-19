package com.google.android.material.internal;

import android.animation.TimeInterpolator;

/* JADX INFO: loaded from: classes2.dex */
public class ReversableAnimatedValueInterpolator implements TimeInterpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeInterpolator f32721a;

    public ReversableAnimatedValueInterpolator(TimeInterpolator timeInterpolator) {
        this.f32721a = timeInterpolator;
    }

    public static TimeInterpolator a(boolean z, TimeInterpolator timeInterpolator) {
        return z ? timeInterpolator : new ReversableAnimatedValueInterpolator(timeInterpolator);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f2) {
        return 1.0f - this.f32721a.getInterpolation(f2);
    }
}
