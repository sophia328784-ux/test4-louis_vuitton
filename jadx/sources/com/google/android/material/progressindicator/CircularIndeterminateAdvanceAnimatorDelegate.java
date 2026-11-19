package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.animation.ArgbEvaluatorCompat;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
final class CircularIndeterminateAdvanceAnimatorDelegate extends IndeterminateAnimatorDelegate<ObjectAnimator> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f32800k = {0, 1350, 2700, 4050};
    public static final int[] l = {667, 2017, 3367, 4717};
    public static final int[] m = {1000, 2350, 3700, 5050};
    public static final Property n = new AnonymousClass3(Float.class, "animationFraction");
    public static final Property o = new AnonymousClass4(Float.class, "completeEndFraction");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ObjectAnimator f32801c;
    public ObjectAnimator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FastOutSlowInInterpolator f32802e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CircularProgressIndicatorSpec f32803f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f32804h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f32805i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Animatable2Compat.AnimationCallback f32806j;

    /* JADX INFO: renamed from: com.google.android.material.progressindicator.CircularIndeterminateAdvanceAnimatorDelegate$3, reason: invalid class name */
    public class AnonymousClass3 extends Property<CircularIndeterminateAdvanceAnimatorDelegate, Float> {
        @Override // android.util.Property
        public final Float get(CircularIndeterminateAdvanceAnimatorDelegate circularIndeterminateAdvanceAnimatorDelegate) {
            return Float.valueOf(circularIndeterminateAdvanceAnimatorDelegate.f32804h);
        }

        @Override // android.util.Property
        public final void set(CircularIndeterminateAdvanceAnimatorDelegate circularIndeterminateAdvanceAnimatorDelegate, Float f2) {
            CircularIndeterminateAdvanceAnimatorDelegate circularIndeterminateAdvanceAnimatorDelegate2 = circularIndeterminateAdvanceAnimatorDelegate;
            float fFloatValue = f2.floatValue();
            circularIndeterminateAdvanceAnimatorDelegate2.f32804h = fFloatValue;
            int i2 = (int) (fFloatValue * 5400.0f);
            FastOutSlowInInterpolator fastOutSlowInInterpolator = circularIndeterminateAdvanceAnimatorDelegate2.f32802e;
            ArrayList arrayList = circularIndeterminateAdvanceAnimatorDelegate2.f32842b;
            DrawingDelegate.ActiveIndicator activeIndicator = (DrawingDelegate.ActiveIndicator) arrayList.get(0);
            float f3 = circularIndeterminateAdvanceAnimatorDelegate2.f32804h * 1520.0f;
            activeIndicator.f32832a = (-20.0f) + f3;
            activeIndicator.f32833b = f3;
            for (int i3 = 0; i3 < 4; i3++) {
                activeIndicator.f32833b = (fastOutSlowInInterpolator.getInterpolation(IndeterminateAnimatorDelegate.b(i2, CircularIndeterminateAdvanceAnimatorDelegate.f32800k[i3], 667)) * 250.0f) + activeIndicator.f32833b;
                activeIndicator.f32832a = (fastOutSlowInInterpolator.getInterpolation(IndeterminateAnimatorDelegate.b(i2, CircularIndeterminateAdvanceAnimatorDelegate.l[i3], 667)) * 250.0f) + activeIndicator.f32832a;
            }
            float f4 = activeIndicator.f32832a;
            float f5 = activeIndicator.f32833b;
            activeIndicator.f32832a = (((f5 - f4) * circularIndeterminateAdvanceAnimatorDelegate2.f32805i) + f4) / 360.0f;
            activeIndicator.f32833b = f5 / 360.0f;
            for (int i4 = 0; i4 < 4; i4++) {
                float fB = IndeterminateAnimatorDelegate.b(i2, CircularIndeterminateAdvanceAnimatorDelegate.m[i4], 333);
                if (fB > Call.Parameters.DEFAULT_CAMERA_ZOOM && fB < 1.0f) {
                    int i5 = i4 + circularIndeterminateAdvanceAnimatorDelegate2.g;
                    int[] iArr = circularIndeterminateAdvanceAnimatorDelegate2.f32803f.f32789e;
                    int length = i5 % iArr.length;
                    int length2 = (length + 1) % iArr.length;
                    int i6 = iArr[length];
                    int i7 = iArr[length2];
                    float interpolation = fastOutSlowInInterpolator.getInterpolation(fB);
                    DrawingDelegate.ActiveIndicator activeIndicator2 = (DrawingDelegate.ActiveIndicator) arrayList.get(0);
                    ArgbEvaluatorCompat argbEvaluatorCompat = ArgbEvaluatorCompat.f32231a;
                    Integer numValueOf = Integer.valueOf(i6);
                    Integer numValueOf2 = Integer.valueOf(i7);
                    argbEvaluatorCompat.getClass();
                    activeIndicator2.f32834c = ArgbEvaluatorCompat.a(interpolation, numValueOf, numValueOf2).intValue();
                    break;
                }
            }
            circularIndeterminateAdvanceAnimatorDelegate2.f32841a.invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.progressindicator.CircularIndeterminateAdvanceAnimatorDelegate$4, reason: invalid class name */
    public class AnonymousClass4 extends Property<CircularIndeterminateAdvanceAnimatorDelegate, Float> {
        @Override // android.util.Property
        public final Float get(CircularIndeterminateAdvanceAnimatorDelegate circularIndeterminateAdvanceAnimatorDelegate) {
            return Float.valueOf(circularIndeterminateAdvanceAnimatorDelegate.f32805i);
        }

        @Override // android.util.Property
        public final void set(CircularIndeterminateAdvanceAnimatorDelegate circularIndeterminateAdvanceAnimatorDelegate, Float f2) {
            circularIndeterminateAdvanceAnimatorDelegate.f32805i = f2.floatValue();
        }
    }

    public CircularIndeterminateAdvanceAnimatorDelegate(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.g = 0;
        this.f32806j = null;
        this.f32803f = circularProgressIndicatorSpec;
        this.f32802e = new FastOutSlowInInterpolator();
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void a() {
        ObjectAnimator objectAnimator = this.f32801c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void c() {
        h();
        ObjectAnimator objectAnimator = this.f32801c;
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = this.f32803f;
        objectAnimator.setDuration((long) (circularProgressIndicatorSpec.n * 5400.0f));
        this.d.setDuration((long) (circularProgressIndicatorSpec.n * 333.0f));
        this.g = 0;
        ((DrawingDelegate.ActiveIndicator) this.f32842b.get(0)).f32834c = circularProgressIndicatorSpec.f32789e[0];
        this.f32805i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void d(Animatable2Compat.AnimationCallback animationCallback) {
        this.f32806j = animationCallback;
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void e() {
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        if (this.f32841a.isVisible()) {
            this.d.start();
        } else {
            a();
        }
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void f() {
        h();
        this.g = 0;
        ((DrawingDelegate.ActiveIndicator) this.f32842b.get(0)).f32834c = this.f32803f.f32789e[0];
        this.f32805i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f32801c.start();
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void g() {
        this.f32806j = null;
    }

    public final void h() {
        ObjectAnimator objectAnimator = this.f32801c;
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = this.f32803f;
        if (objectAnimator == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<CircularIndeterminateAdvanceAnimatorDelegate, Float>) n, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            this.f32801c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration((long) (circularProgressIndicatorSpec.n * 5400.0f));
            this.f32801c.setInterpolator(null);
            this.f32801c.setRepeatCount(-1);
            this.f32801c.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.CircularIndeterminateAdvanceAnimatorDelegate.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    CircularIndeterminateAdvanceAnimatorDelegate circularIndeterminateAdvanceAnimatorDelegate = CircularIndeterminateAdvanceAnimatorDelegate.this;
                    circularIndeterminateAdvanceAnimatorDelegate.g = (circularIndeterminateAdvanceAnimatorDelegate.g + 4) % circularIndeterminateAdvanceAnimatorDelegate.f32803f.f32789e.length;
                }
            });
        }
        if (this.d == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<CircularIndeterminateAdvanceAnimatorDelegate, Float>) o, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            this.d = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration((long) (circularProgressIndicatorSpec.n * 333.0f));
            this.d.setInterpolator(this.f32802e);
            this.d.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.CircularIndeterminateAdvanceAnimatorDelegate.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    CircularIndeterminateAdvanceAnimatorDelegate circularIndeterminateAdvanceAnimatorDelegate = CircularIndeterminateAdvanceAnimatorDelegate.this;
                    circularIndeterminateAdvanceAnimatorDelegate.a();
                    Animatable2Compat.AnimationCallback animationCallback = circularIndeterminateAdvanceAnimatorDelegate.f32806j;
                    if (animationCallback != null) {
                        animationCallback.a(circularIndeterminateAdvanceAnimatorDelegate.f32841a);
                    }
                }
            });
        }
    }
}
