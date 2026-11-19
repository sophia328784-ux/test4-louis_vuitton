package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.math.MathUtils;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.vuitton.android.R;
import java.util.ArrayList;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
final class LinearIndeterminateDisjointAnimatorDelegate extends IndeterminateAnimatorDelegate<ObjectAnimator> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f32854k = {533, 567, 850, 750};
    public static final int[] l = {1267, 1000, 333, 0};
    public static final Property m = new AnonymousClass3(Float.class, "animationFraction");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ObjectAnimator f32855c;
    public ObjectAnimator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Interpolator[] f32856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearProgressIndicatorSpec f32857f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f32858h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f32859i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Animatable2Compat.AnimationCallback f32860j;

    /* JADX INFO: renamed from: com.google.android.material.progressindicator.LinearIndeterminateDisjointAnimatorDelegate$3, reason: invalid class name */
    public class AnonymousClass3 extends Property<LinearIndeterminateDisjointAnimatorDelegate, Float> {
        @Override // android.util.Property
        public final Float get(LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate) {
            return Float.valueOf(linearIndeterminateDisjointAnimatorDelegate.f32859i);
        }

        @Override // android.util.Property
        public final void set(LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate, Float f2) {
            LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate2 = linearIndeterminateDisjointAnimatorDelegate;
            float fFloatValue = f2.floatValue();
            linearIndeterminateDisjointAnimatorDelegate2.f32859i = fFloatValue;
            int i2 = (int) (fFloatValue * 1800.0f);
            Interpolator[] interpolatorArr = linearIndeterminateDisjointAnimatorDelegate2.f32856e;
            ArrayList arrayList = linearIndeterminateDisjointAnimatorDelegate2.f32842b;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                DrawingDelegate.ActiveIndicator activeIndicator = (DrawingDelegate.ActiveIndicator) arrayList.get(i3);
                int[] iArr = LinearIndeterminateDisjointAnimatorDelegate.l;
                int i4 = i3 * 2;
                int i5 = iArr[i4];
                int[] iArr2 = LinearIndeterminateDisjointAnimatorDelegate.f32854k;
                activeIndicator.f32832a = MathUtils.a(interpolatorArr[i4].getInterpolation(IndeterminateAnimatorDelegate.b(i2, i5, iArr2[i4])), Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                int i6 = i4 + 1;
                activeIndicator.f32833b = MathUtils.a(interpolatorArr[i6].getInterpolation(IndeterminateAnimatorDelegate.b(i2, iArr[i6], iArr2[i6])), Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            }
            if (linearIndeterminateDisjointAnimatorDelegate2.f32858h) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((DrawingDelegate.ActiveIndicator) it.next()).f32834c = linearIndeterminateDisjointAnimatorDelegate2.f32857f.f32789e[linearIndeterminateDisjointAnimatorDelegate2.g];
                }
                linearIndeterminateDisjointAnimatorDelegate2.f32858h = false;
            }
            linearIndeterminateDisjointAnimatorDelegate2.f32841a.invalidateSelf();
        }
    }

    public LinearIndeterminateDisjointAnimatorDelegate(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.g = 0;
        this.f32860j = null;
        this.f32857f = linearProgressIndicatorSpec;
        this.f32856e = new Interpolator[]{AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line1_head_interpolator), AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line1_tail_interpolator), AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line2_head_interpolator), AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line2_tail_interpolator)};
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void a() {
        ObjectAnimator objectAnimator = this.f32855c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void c() {
        h();
        ObjectAnimator objectAnimator = this.f32855c;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.f32857f;
        objectAnimator.setDuration((long) (linearProgressIndicatorSpec.n * 1800.0f));
        this.d.setDuration((long) (linearProgressIndicatorSpec.n * 1800.0f));
        i();
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void d(Animatable2Compat.AnimationCallback animationCallback) {
        this.f32860j = animationCallback;
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void e() {
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        a();
        if (this.f32841a.isVisible()) {
            this.d.setFloatValues(this.f32859i, 1.0f);
            this.d.setDuration((long) ((1.0f - this.f32859i) * 1800.0f));
            this.d.start();
        }
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void f() {
        h();
        i();
        this.f32855c.start();
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public final void g() {
        this.f32860j = null;
    }

    public final void h() {
        ObjectAnimator objectAnimator = this.f32855c;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.f32857f;
        Property property = m;
        if (objectAnimator == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<LinearIndeterminateDisjointAnimatorDelegate, Float>) property, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            this.f32855c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration((long) (linearProgressIndicatorSpec.n * 1800.0f));
            this.f32855c.setInterpolator(null);
            this.f32855c.setRepeatCount(-1);
            this.f32855c.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.LinearIndeterminateDisjointAnimatorDelegate.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate = LinearIndeterminateDisjointAnimatorDelegate.this;
                    linearIndeterminateDisjointAnimatorDelegate.g = (linearIndeterminateDisjointAnimatorDelegate.g + 1) % linearIndeterminateDisjointAnimatorDelegate.f32857f.f32789e.length;
                    linearIndeterminateDisjointAnimatorDelegate.f32858h = true;
                }
            });
        }
        if (this.d == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<LinearIndeterminateDisjointAnimatorDelegate, Float>) property, 1.0f);
            this.d = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration((long) (linearProgressIndicatorSpec.n * 1800.0f));
            this.d.setInterpolator(null);
            this.d.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.LinearIndeterminateDisjointAnimatorDelegate.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate = LinearIndeterminateDisjointAnimatorDelegate.this;
                    linearIndeterminateDisjointAnimatorDelegate.a();
                    Animatable2Compat.AnimationCallback animationCallback = linearIndeterminateDisjointAnimatorDelegate.f32860j;
                    if (animationCallback != null) {
                        animationCallback.a(linearIndeterminateDisjointAnimatorDelegate.f32841a);
                    }
                }
            });
        }
    }

    public final void i() {
        this.g = 0;
        Iterator it = this.f32842b.iterator();
        while (it.hasNext()) {
            ((DrawingDelegate.ActiveIndicator) it.next()).f32834c = this.f32857f.f32789e[0];
        }
    }
}
