package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
final class LinearIndeterminateContiguousAnimatorDelegate extends IndeterminateAnimatorDelegate<ObjectAnimator> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Property f32848i = new AnonymousClass2(Float.class, "animationFraction");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ObjectAnimator f32849c;
    public final FastOutSlowInInterpolator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearProgressIndicatorSpec f32850e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f32851f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f32852h;

    /* JADX INFO: renamed from: com.google.android.material.progressindicator.LinearIndeterminateContiguousAnimatorDelegate$2, reason: invalid class name */
    public class AnonymousClass2 extends Property<LinearIndeterminateContiguousAnimatorDelegate, Float> {
        @Override // android.util.Property
        public final Float get(LinearIndeterminateContiguousAnimatorDelegate linearIndeterminateContiguousAnimatorDelegate) {
            return Float.valueOf(linearIndeterminateContiguousAnimatorDelegate.f32852h);
        }

        @Override // android.util.Property
        public final void set(LinearIndeterminateContiguousAnimatorDelegate linearIndeterminateContiguousAnimatorDelegate, Float f2) {
            LinearIndeterminateContiguousAnimatorDelegate linearIndeterminateContiguousAnimatorDelegate2 = linearIndeterminateContiguousAnimatorDelegate;
            float fFloatValue = f2.floatValue();
            linearIndeterminateContiguousAnimatorDelegate2.f32852h = fFloatValue;
            ArrayList arrayList = linearIndeterminateContiguousAnimatorDelegate2.f32842b;
            ((DrawingDelegate.ActiveIndicator) arrayList.get(0)).f32832a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            float fB = IndeterminateAnimatorDelegate.b((int) (fFloatValue * 333.0f), 0, 667);
            DrawingDelegate.ActiveIndicator activeIndicator = (DrawingDelegate.ActiveIndicator) arrayList.get(0);
            DrawingDelegate.ActiveIndicator activeIndicator2 = (DrawingDelegate.ActiveIndicator) arrayList.get(1);
            FastOutSlowInInterpolator fastOutSlowInInterpolator = linearIndeterminateContiguousAnimatorDelegate2.d;
            float interpolation = fastOutSlowInInterpolator.getInterpolation(fB);
            activeIndicator2.f32832a = interpolation;
            activeIndicator.f32833b = interpolation;
            DrawingDelegate.ActiveIndicator activeIndicator3 = (DrawingDelegate.ActiveIndicator) arrayList.get(1);
            DrawingDelegate.ActiveIndicator activeIndicator4 = (DrawingDelegate.ActiveIndicator) arrayList.get(2);
            float interpolation2 = fastOutSlowInInterpolator.getInterpolation(fB + 0.49925038f);
            activeIndicator4.f32832a = interpolation2;
            activeIndicator3.f32833b = interpolation2;
            ((DrawingDelegate.ActiveIndicator) arrayList.get(2)).f32833b = 1.0f;
            if (linearIndeterminateContiguousAnimatorDelegate2.g && ((DrawingDelegate.ActiveIndicator) arrayList.get(1)).f32833b < 1.0f) {
                ((DrawingDelegate.ActiveIndicator) arrayList.get(2)).f32834c = ((DrawingDelegate.ActiveIndicator) arrayList.get(1)).f32834c;
                ((DrawingDelegate.ActiveIndicator) arrayList.get(1)).f32834c = ((DrawingDelegate.ActiveIndicator) arrayList.get(0)).f32834c;
                ((DrawingDelegate.ActiveIndicator) arrayList.get(0)).f32834c = linearIndeterminateContiguousAnimatorDelegate2.f32850e.f32789e[linearIndeterminateContiguousAnimatorDelegate2.f32851f];
                linearIndeterminateContiguousAnimatorDelegate2.g = false;
            }
            linearIndeterminateContiguousAnimatorDelegate2.f32841a.invalidateSelf();
        }
    }

    public LinearIndeterminateContiguousAnimatorDelegate(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.f32851f = 1;
        this.f32850e = linearProgressIndicatorSpec;
        this.d = new FastOutSlowInInterpolator();
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void a() {
        ObjectAnimator objectAnimator = this.f32849c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void c() {
        h();
        this.f32849c.setDuration((long) (this.f32850e.n * 333.0f));
        i();
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void d(Animatable2Compat.AnimationCallback animationCallback) {
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void e() {
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void f() {
        h();
        i();
        this.f32849c.start();
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void g() {
    }

    public final void h() {
        if (this.f32849c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<LinearIndeterminateContiguousAnimatorDelegate, Float>) f32848i, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            this.f32849c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration((long) (this.f32850e.n * 333.0f));
            this.f32849c.setInterpolator(null);
            this.f32849c.setRepeatCount(-1);
            this.f32849c.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.LinearIndeterminateContiguousAnimatorDelegate.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    LinearIndeterminateContiguousAnimatorDelegate linearIndeterminateContiguousAnimatorDelegate = LinearIndeterminateContiguousAnimatorDelegate.this;
                    linearIndeterminateContiguousAnimatorDelegate.f32851f = (linearIndeterminateContiguousAnimatorDelegate.f32851f + 1) % linearIndeterminateContiguousAnimatorDelegate.f32850e.f32789e.length;
                    linearIndeterminateContiguousAnimatorDelegate.g = true;
                }
            });
        }
    }

    public final void i() {
        this.g = true;
        this.f32851f = 1;
        for (DrawingDelegate.ActiveIndicator activeIndicator : this.f32842b) {
            LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.f32850e;
            activeIndicator.f32834c = linearProgressIndicatorSpec.f32789e[0];
            activeIndicator.d = linearProgressIndicatorSpec.f32792i / 2;
        }
    }
}
