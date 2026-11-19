package com.airbnb.lottie.utils;

import android.animation.Animator;
import android.graphics.PointF;
import android.view.Choreographer;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import defpackage.ct0;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class LottieValueAnimator extends BaseLottieAnimator implements Choreographer.FrameCallback {
    public LottieComposition m;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f22291e = 1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f22292f = false;
    public long g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f22293h = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f22294i = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f22295j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f22296k = -2.14748365E9f;
    public float l = 2.14748365E9f;
    public boolean n = false;
    public final boolean o = false;

    public final float c() {
        LottieComposition lottieComposition = this.m;
        if (lottieComposition == null) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float f2 = this.f22294i;
        float f3 = lottieComposition.l;
        return (f2 - f3) / (lottieComposition.m - f3);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void cancel() {
        Iterator it = this.f22281c.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
        }
        a(f());
        g(true);
    }

    public final float d() {
        LottieComposition lottieComposition = this.m;
        if (lottieComposition == null) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float f2 = this.l;
        return f2 == 2.14748365E9f ? lottieComposition.m : f2;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j2) {
        boolean z = false;
        if (this.n) {
            g(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
        LottieComposition lottieComposition = this.m;
        if (lottieComposition == null || !this.n) {
            return;
        }
        AsyncUpdates asyncUpdates = L.f21740a;
        long j3 = this.g;
        float fAbs = (j3 != 0 ? j2 - j3 : 0L) / ((1.0E9f / lottieComposition.n) / Math.abs(this.f22291e));
        float f2 = this.f22293h;
        if (f()) {
            fAbs = -fAbs;
        }
        float f3 = f2 + fAbs;
        float fE = e();
        float fD = d();
        PointF pointF = MiscUtils.f22298a;
        if (f3 >= fE && f3 <= fD) {
            z = true;
        }
        float f4 = this.f22293h;
        float fB = MiscUtils.b(f3, e(), d());
        this.f22293h = fB;
        boolean z2 = this.o;
        if (z2) {
            fB = (float) Math.floor(fB);
        }
        this.f22294i = fB;
        this.g = j2;
        if (z) {
            if (!z2 || this.f22293h != f4) {
                b();
            }
        } else if (getRepeatCount() == -1 || this.f22295j < getRepeatCount()) {
            if (getRepeatMode() == 2) {
                this.f22292f = !this.f22292f;
                this.f22291e = -this.f22291e;
            } else {
                float fD2 = f() ? d() : e();
                this.f22293h = fD2;
                this.f22294i = fD2;
            }
            this.g = j2;
            if (!z2 || this.f22293h != f4) {
                b();
            }
            Iterator it = this.f22281c.iterator();
            while (it.hasNext()) {
                ((Animator.AnimatorListener) it.next()).onAnimationRepeat(this);
            }
            this.f22295j++;
        } else {
            float fE2 = this.f22291e < Call.Parameters.DEFAULT_CAMERA_ZOOM ? e() : d();
            this.f22293h = fE2;
            this.f22294i = fE2;
            g(true);
            if (!z2 || this.f22293h != f4) {
                b();
            }
            a(f());
        }
        if (this.m != null) {
            float f5 = this.f22294i;
            float f6 = this.f22296k;
            if (f5 < f6 || f5 > this.l) {
                throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(f6), Float.valueOf(this.l), Float.valueOf(this.f22294i)));
            }
        }
        AsyncUpdates asyncUpdates2 = L.f21740a;
    }

    public final float e() {
        LottieComposition lottieComposition = this.m;
        if (lottieComposition == null) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float f2 = this.f22296k;
        return f2 == -2.14748365E9f ? lottieComposition.l : f2;
    }

    public final boolean f() {
        return this.f22291e < Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public final void g(boolean z) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z) {
            this.n = false;
        }
    }

    @Override // android.animation.ValueAnimator
    public final float getAnimatedFraction() {
        float fE;
        float fD;
        float fE2;
        if (this.m == null) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        if (f()) {
            fE = d() - this.f22294i;
            fD = d();
            fE2 = e();
        } else {
            fE = this.f22294i - e();
            fD = d();
            fE2 = e();
        }
        return fE / (fD - fE2);
    }

    @Override // android.animation.ValueAnimator
    public final Object getAnimatedValue() {
        return Float.valueOf(c());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final long getDuration() {
        LottieComposition lottieComposition = this.m;
        if (lottieComposition == null) {
            return 0L;
        }
        return (long) lottieComposition.b();
    }

    public final void h(float f2) {
        if (this.f22293h == f2) {
            return;
        }
        float fB = MiscUtils.b(f2, e(), d());
        this.f22293h = fB;
        if (this.o) {
            fB = (float) Math.floor(fB);
        }
        this.f22294i = fB;
        this.g = 0L;
        b();
    }

    public final void i(float f2, float f3) {
        if (f2 > f3) {
            ct0.k("minFrame (", f2, ") must be <= maxFrame (", f3, ")");
            return;
        }
        LottieComposition lottieComposition = this.m;
        float f4 = lottieComposition == null ? -3.4028235E38f : lottieComposition.l;
        float f5 = lottieComposition == null ? Float.MAX_VALUE : lottieComposition.m;
        float fB = MiscUtils.b(f2, f4, f5);
        float fB2 = MiscUtils.b(f3, f4, f5);
        if (fB == this.f22296k && fB2 == this.l) {
            return;
        }
        this.f22296k = fB;
        this.l = fB2;
        h((int) MiscUtils.b(this.f22294i, fB, fB2));
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final boolean isRunning() {
        return this.n;
    }

    @Override // android.animation.ValueAnimator
    public final void setRepeatMode(int i2) {
        super.setRepeatMode(i2);
        if (i2 == 2 || !this.f22292f) {
            return;
        }
        this.f22292f = false;
        this.f22291e = -this.f22291e;
    }
}
