package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.Property;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.ArgbEvaluatorCompat;
import com.google.android.material.math.MathUtils;
import com.google.android.material.motion.MotionUtils;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.vuitton.android.R;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
final class CircularIndeterminateRetreatAnimatorDelegate extends IndeterminateAnimatorDelegate<ObjectAnimator> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final FastOutSlowInInterpolator f32809k = AnimationUtils.f32228b;
    public static final int[] l = {0, 1500, HarvestConfiguration.SLOW_START_THRESHOLD, 4500};
    public static final float[] m = {0.1f, 0.87f};
    public static final Property n = new AnonymousClass3(Float.class, "animationFraction");
    public static final Property o = new AnonymousClass4(Float.class, "completeEndFraction");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ObjectAnimator f32810c;
    public ObjectAnimator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TimeInterpolator f32811e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CircularProgressIndicatorSpec f32812f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f32813h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f32814i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Animatable2Compat.AnimationCallback f32815j;

    /* JADX INFO: renamed from: com.google.android.material.progressindicator.CircularIndeterminateRetreatAnimatorDelegate$3, reason: invalid class name */
    public class AnonymousClass3 extends Property<CircularIndeterminateRetreatAnimatorDelegate, Float> {
        @Override // android.util.Property
        public final Float get(CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate) {
            return Float.valueOf(circularIndeterminateRetreatAnimatorDelegate.f32813h);
        }

        @Override // android.util.Property
        public final void set(CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate, Float f2) {
            CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate2 = circularIndeterminateRetreatAnimatorDelegate;
            float fFloatValue = f2.floatValue();
            circularIndeterminateRetreatAnimatorDelegate2.f32813h = fFloatValue;
            int i2 = (int) (fFloatValue * 6000.0f);
            TimeInterpolator timeInterpolator = circularIndeterminateRetreatAnimatorDelegate2.f32811e;
            ArrayList arrayList = circularIndeterminateRetreatAnimatorDelegate2.f32842b;
            DrawingDelegate.ActiveIndicator activeIndicator = (DrawingDelegate.ActiveIndicator) arrayList.get(0);
            float f3 = circularIndeterminateRetreatAnimatorDelegate2.f32813h * 1080.0f;
            int[] iArr = CircularIndeterminateRetreatAnimatorDelegate.l;
            float interpolation = 0.0f;
            for (int i3 : iArr) {
                interpolation += timeInterpolator.getInterpolation(IndeterminateAnimatorDelegate.b(i2, i3, 500)) * 90.0f;
            }
            activeIndicator.g = f3 + interpolation;
            float interpolation2 = timeInterpolator.getInterpolation(IndeterminateAnimatorDelegate.b(i2, 0, HarvestConfiguration.SLOW_START_THRESHOLD)) - timeInterpolator.getInterpolation(IndeterminateAnimatorDelegate.b(i2, HarvestConfiguration.SLOW_START_THRESHOLD, HarvestConfiguration.SLOW_START_THRESHOLD));
            activeIndicator.f32832a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            float[] fArr = CircularIndeterminateRetreatAnimatorDelegate.m;
            float fC = MathUtils.c(fArr[0], fArr[1], interpolation2);
            activeIndicator.f32833b = fC;
            float f4 = circularIndeterminateRetreatAnimatorDelegate2.f32814i;
            if (f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                activeIndicator.f32833b = (1.0f - f4) * fC;
            }
            for (int i4 = 0; i4 < iArr.length; i4++) {
                float fB = IndeterminateAnimatorDelegate.b(i2, iArr[i4], 100);
                if (fB >= Call.Parameters.DEFAULT_CAMERA_ZOOM && fB <= 1.0f) {
                    int i5 = i4 + circularIndeterminateRetreatAnimatorDelegate2.g;
                    int[] iArr2 = circularIndeterminateRetreatAnimatorDelegate2.f32812f.f32789e;
                    int length = i5 % iArr2.length;
                    int length2 = (length + 1) % iArr2.length;
                    int i6 = iArr2[length];
                    int i7 = iArr2[length2];
                    float interpolation3 = timeInterpolator.getInterpolation(fB);
                    DrawingDelegate.ActiveIndicator activeIndicator2 = (DrawingDelegate.ActiveIndicator) arrayList.get(0);
                    ArgbEvaluatorCompat argbEvaluatorCompat = ArgbEvaluatorCompat.f32231a;
                    Integer numValueOf = Integer.valueOf(i6);
                    Integer numValueOf2 = Integer.valueOf(i7);
                    argbEvaluatorCompat.getClass();
                    activeIndicator2.f32834c = ArgbEvaluatorCompat.a(interpolation3, numValueOf, numValueOf2).intValue();
                    break;
                }
            }
            circularIndeterminateRetreatAnimatorDelegate2.f32841a.invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.progressindicator.CircularIndeterminateRetreatAnimatorDelegate$4, reason: invalid class name */
    public class AnonymousClass4 extends Property<CircularIndeterminateRetreatAnimatorDelegate, Float> {
        @Override // android.util.Property
        public final Float get(CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate) {
            return Float.valueOf(circularIndeterminateRetreatAnimatorDelegate.f32814i);
        }

        @Override // android.util.Property
        public final void set(CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate, Float f2) {
            circularIndeterminateRetreatAnimatorDelegate.f32814i = f2.floatValue();
        }
    }

    public CircularIndeterminateRetreatAnimatorDelegate(Context context, CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.g = 0;
        this.f32815j = null;
        this.f32812f = circularProgressIndicatorSpec;
        this.f32811e = MotionUtils.d(context, R.attr.motionEasingStandardInterpolator, f32809k);
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void a() {
        ObjectAnimator objectAnimator = this.f32810c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void c() {
        h();
        ObjectAnimator objectAnimator = this.f32810c;
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = this.f32812f;
        objectAnimator.setDuration((long) (circularProgressIndicatorSpec.n * 6000.0f));
        this.d.setDuration((long) (circularProgressIndicatorSpec.n * 500.0f));
        this.g = 0;
        ((DrawingDelegate.ActiveIndicator) this.f32842b.get(0)).f32834c = circularProgressIndicatorSpec.f32789e[0];
        this.f32814i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void d(Animatable2Compat.AnimationCallback animationCallback) {
        this.f32815j = animationCallback;
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
        ((DrawingDelegate.ActiveIndicator) this.f32842b.get(0)).f32834c = this.f32812f.f32789e[0];
        this.f32814i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f32810c.start();
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void g() {
        this.f32815j = null;
    }

    public final void h() {
        ObjectAnimator objectAnimator = this.f32810c;
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = this.f32812f;
        if (objectAnimator == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<CircularIndeterminateRetreatAnimatorDelegate, Float>) n, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            this.f32810c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration((long) (circularProgressIndicatorSpec.n * 6000.0f));
            this.f32810c.setInterpolator(null);
            this.f32810c.setRepeatCount(-1);
            this.f32810c.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.CircularIndeterminateRetreatAnimatorDelegate.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate = CircularIndeterminateRetreatAnimatorDelegate.this;
                    circularIndeterminateRetreatAnimatorDelegate.g = (circularIndeterminateRetreatAnimatorDelegate.g + CircularIndeterminateRetreatAnimatorDelegate.l.length) % circularIndeterminateRetreatAnimatorDelegate.f32812f.f32789e.length;
                }
            });
        }
        if (this.d == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<CircularIndeterminateRetreatAnimatorDelegate, Float>) o, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            this.d = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration((long) (circularProgressIndicatorSpec.n * 500.0f));
            this.d.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.CircularIndeterminateRetreatAnimatorDelegate.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate = CircularIndeterminateRetreatAnimatorDelegate.this;
                    circularIndeterminateRetreatAnimatorDelegate.a();
                    Animatable2Compat.AnimationCallback animationCallback = circularIndeterminateRetreatAnimatorDelegate.f32815j;
                    if (animationCallback != null) {
                        animationCallback.a(circularIndeterminateRetreatAnimatorDelegate.f32841a);
                    }
                }
            });
        }
    }
}
