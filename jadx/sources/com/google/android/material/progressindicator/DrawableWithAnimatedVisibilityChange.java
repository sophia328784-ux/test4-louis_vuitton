package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Property;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.animation.AnimationUtils;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
abstract class DrawableWithAnimatedVisibilityChange extends Drawable implements Animatable2Compat {
    public static final Property n = new AnonymousClass3(Float.class, "growFraction");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f32818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BaseProgressIndicatorSpec f32819c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ObjectAnimator f32820e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ObjectAnimator f32821f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList f32822h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f32823i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f32824j;
    public int l;
    public final float g = -1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Paint f32825k = new Paint();
    public final Rect m = new Rect();
    public AnimatorDurationScaleProvider d = new AnimatorDurationScaleProvider();

    /* JADX INFO: renamed from: com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange$3, reason: invalid class name */
    public class AnonymousClass3 extends Property<DrawableWithAnimatedVisibilityChange, Float> {
        @Override // android.util.Property
        public final Float get(DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange) {
            return Float.valueOf(drawableWithAnimatedVisibilityChange.b());
        }

        @Override // android.util.Property
        public final void set(DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange, Float f2) {
            DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange2 = drawableWithAnimatedVisibilityChange;
            float fFloatValue = f2.floatValue();
            if (drawableWithAnimatedVisibilityChange2.f32824j != fFloatValue) {
                drawableWithAnimatedVisibilityChange2.f32824j = fFloatValue;
                drawableWithAnimatedVisibilityChange2.invalidateSelf();
            }
        }
    }

    public DrawableWithAnimatedVisibilityChange(Context context, BaseProgressIndicatorSpec baseProgressIndicatorSpec) {
        this.f32818b = context;
        this.f32819c = baseProgressIndicatorSpec;
        setAlpha(255);
    }

    public final float b() {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32819c;
        if (baseProgressIndicatorSpec.g == 0 && baseProgressIndicatorSpec.f32791h == 0) {
            return 1.0f;
        }
        return this.f32824j;
    }

    public final float c() {
        float f2 = this.g;
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return f2;
        }
        boolean z = this instanceof DeterminateDrawable;
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32819c;
        if (baseProgressIndicatorSpec.b(z) && baseProgressIndicatorSpec.m != 0) {
            AnimatorDurationScaleProvider animatorDurationScaleProvider = this.d;
            ContentResolver contentResolver = this.f32818b.getContentResolver();
            animatorDurationScaleProvider.getClass();
            float f3 = Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
            if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                int i2 = (int) ((((z ? baseProgressIndicatorSpec.f32793j : baseProgressIndicatorSpec.f32794k) * 1000.0f) / baseProgressIndicatorSpec.m) * f3);
                float fUptimeMillis = (SystemClock.uptimeMillis() % ((long) i2)) / i2;
                return fUptimeMillis < Call.Parameters.DEFAULT_CAMERA_ZOOM ? (fUptimeMillis % 1.0f) + 1.0f : fUptimeMillis;
            }
        }
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public abstract void d();

    public boolean e() {
        ObjectAnimator objectAnimator = this.f32821f;
        return objectAnimator != null && objectAnimator.isRunning();
    }

    public boolean f() {
        ObjectAnimator objectAnimator = this.f32820e;
        return objectAnimator != null && objectAnimator.isRunning();
    }

    public abstract boolean g(boolean z, boolean z2, boolean z3);

    public boolean h(boolean z, boolean z2, boolean z3) {
        ObjectAnimator objectAnimator = this.f32820e;
        Property property = n;
        if (objectAnimator == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<DrawableWithAnimatedVisibilityChange, Float>) property, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            this.f32820e = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(500L);
            this.f32820e.setInterpolator(AnimationUtils.f32228b);
            ObjectAnimator objectAnimator2 = this.f32820e;
            if (objectAnimator2 != null && objectAnimator2.isRunning()) {
                md.n("Cannot set showAnimator while the current showAnimator is running.");
                return false;
            }
            this.f32820e = objectAnimator2;
            objectAnimator2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange = DrawableWithAnimatedVisibilityChange.this;
                    ArrayList arrayList = drawableWithAnimatedVisibilityChange.f32822h;
                    if (arrayList == null || drawableWithAnimatedVisibilityChange.f32823i) {
                        return;
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((Animatable2Compat.AnimationCallback) it.next()).b(drawableWithAnimatedVisibilityChange);
                    }
                }
            });
        }
        if (this.f32821f == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<DrawableWithAnimatedVisibilityChange, Float>) property, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.f32821f = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(500L);
            this.f32821f.setInterpolator(AnimationUtils.f32228b);
            ObjectAnimator objectAnimator3 = this.f32821f;
            if (objectAnimator3 != null && objectAnimator3.isRunning()) {
                md.n("Cannot set hideAnimator while the current hideAnimator is running.");
                return false;
            }
            this.f32821f = objectAnimator3;
            objectAnimator3.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange = DrawableWithAnimatedVisibilityChange.this;
                    DrawableWithAnimatedVisibilityChange.super.setVisible(false, false);
                    ArrayList arrayList = drawableWithAnimatedVisibilityChange.f32822h;
                    if (arrayList == null || drawableWithAnimatedVisibilityChange.f32823i) {
                        return;
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((Animatable2Compat.AnimationCallback) it.next()).a(drawableWithAnimatedVisibilityChange);
                    }
                }
            });
        }
        if (isVisible() || z) {
            ObjectAnimator objectAnimator4 = z ? this.f32820e : this.f32821f;
            ObjectAnimator objectAnimator5 = z ? this.f32821f : this.f32820e;
            if (!z3) {
                if (objectAnimator5.isRunning()) {
                    boolean z4 = this.f32823i;
                    this.f32823i = true;
                    new ValueAnimator[]{objectAnimator5}[0].cancel();
                    this.f32823i = z4;
                }
                if (objectAnimator4.isRunning()) {
                    objectAnimator4.end();
                } else {
                    boolean z5 = this.f32823i;
                    this.f32823i = true;
                    new ValueAnimator[]{objectAnimator4}[0].end();
                    this.f32823i = z5;
                }
                return super.setVisible(z, false);
            }
            if (!objectAnimator4.isRunning()) {
                boolean z6 = !z || super.setVisible(z, false);
                BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32819c;
                if (!z ? baseProgressIndicatorSpec.f32791h != 0 : baseProgressIndicatorSpec.g != 0) {
                    boolean z7 = this.f32823i;
                    this.f32823i = true;
                    new ValueAnimator[]{objectAnimator4}[0].end();
                    this.f32823i = z7;
                    return z6;
                }
                if (z2 || !objectAnimator4.isPaused()) {
                    objectAnimator4.start();
                    return z6;
                }
                objectAnimator4.resume();
                return z6;
            }
        }
        return false;
    }

    public boolean i(Animatable2Compat.AnimationCallback animationCallback) {
        ArrayList arrayList = this.f32822h;
        if (arrayList == null || !arrayList.contains(animationCallback)) {
            return false;
        }
        this.f32822h.remove(animationCallback);
        if (!this.f32822h.isEmpty()) {
            return true;
        }
        this.f32822h = null;
        return true;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return f() || e();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.l = i2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f32825k.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        h(true, true, false);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        h(false, true, false);
    }
}
