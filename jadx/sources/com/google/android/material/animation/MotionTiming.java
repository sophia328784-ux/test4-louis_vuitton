package com.google.android.material.animation;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import defpackage.a;

/* JADX INFO: loaded from: classes2.dex */
public class MotionTiming {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f32240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f32241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TimeInterpolator f32242c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f32243e;

    public MotionTiming(long j2, long j3) {
        this.f32242c = null;
        this.d = 0;
        this.f32243e = 1;
        this.f32240a = j2;
        this.f32241b = j3;
    }

    public final void a(Animator animator) {
        animator.setStartDelay(this.f32240a);
        animator.setDuration(this.f32241b);
        animator.setInterpolator(b());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.d);
            valueAnimator.setRepeatMode(this.f32243e);
        }
    }

    public final TimeInterpolator b() {
        TimeInterpolator timeInterpolator = this.f32242c;
        return timeInterpolator != null ? timeInterpolator : AnimationUtils.f32228b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MotionTiming)) {
            return false;
        }
        MotionTiming motionTiming = (MotionTiming) obj;
        if (this.f32240a == motionTiming.f32240a && this.f32241b == motionTiming.f32241b && this.d == motionTiming.d && this.f32243e == motionTiming.f32243e) {
            return b().getClass().equals(motionTiming.b().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j2 = this.f32240a;
        long j3 = this.f32241b;
        return ((((b().getClass().hashCode() + (((((int) (j2 ^ (j2 >>> 32))) * 31) + ((int) ((j3 >>> 32) ^ j3))) * 31)) * 31) + this.d) * 31) + this.f32243e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n");
        sb.append(getClass().getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" delay: ");
        sb.append(this.f32240a);
        sb.append(" duration: ");
        sb.append(this.f32241b);
        sb.append(" interpolator: ");
        sb.append(b().getClass());
        sb.append(" repeatCount: ");
        sb.append(this.d);
        sb.append(" repeatMode: ");
        return a.i(this.f32243e, "}\n", sb);
    }

    public MotionTiming(long j2, long j3, TimeInterpolator timeInterpolator) {
        this.d = 0;
        this.f32243e = 1;
        this.f32240a = j2;
        this.f32241b = j3;
        this.f32242c = timeInterpolator;
    }
}
