package com.google.android.material.animation;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public class AnimationUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LinearInterpolator f32227a = new LinearInterpolator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FastOutSlowInInterpolator f32228b = new FastOutSlowInInterpolator();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FastOutLinearInInterpolator f32229c = new FastOutLinearInInterpolator();
    public static final LinearOutSlowInInterpolator d = new LinearOutSlowInInterpolator();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final DecelerateInterpolator f32230e = new DecelerateInterpolator();

    public static float a(float f2, float f3, float f4) {
        return tr.a(f3, f2, f4, f2);
    }

    public static float b(float f2, float f3, float f4, float f5, float f6) {
        if (f6 <= f4) {
            return f2;
        }
        return f6 >= f5 ? f3 : a(f2, f3, (f6 - f4) / (f5 - f4));
    }

    public static int c(int i2, int i3, float f2) {
        return Math.round(f2 * (i3 - i2)) + i2;
    }
}
