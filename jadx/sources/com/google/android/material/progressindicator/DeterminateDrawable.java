package com.google.android.material.progressindicator;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.provider.Settings;
import android.view.animation.LinearInterpolator;
import androidx.core.math.MathUtils;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import com.vuitton.android.R;
import defpackage.b7;
import defpackage.ft;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class DeterminateDrawable<S extends BaseProgressIndicatorSpec> extends DrawableWithAnimatedVisibilityChange {
    public static final FloatPropertyCompat z = new AnonymousClass1("indicatorLevel");
    public final DrawingDelegate o;
    public final SpringForce p;
    public final SpringAnimation q;
    public final DrawingDelegate.ActiveIndicator r;
    public float s;
    public boolean t;
    public final ValueAnimator u;
    public ValueAnimator v;
    public TimeInterpolator w;
    public TimeInterpolator x;
    public TimeInterpolator y;

    /* JADX INFO: renamed from: com.google.android.material.progressindicator.DeterminateDrawable$1, reason: invalid class name */
    public class AnonymousClass1 extends FloatPropertyCompat<DeterminateDrawable<?>> {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((DeterminateDrawable) obj).r.f32833b * 10000.0f;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            DeterminateDrawable determinateDrawable = (DeterminateDrawable) obj;
            FloatPropertyCompat floatPropertyCompat = DeterminateDrawable.z;
            determinateDrawable.r.f32833b = f2 / 10000.0f;
            determinateDrawable.invalidateSelf();
            int i2 = (int) f2;
            if (determinateDrawable.f32819c.b(true)) {
                Context context = determinateDrawable.f32818b;
                if (determinateDrawable.v == null) {
                    LinearInterpolator linearInterpolator = AnimationUtils.f32227a;
                    determinateDrawable.x = MotionUtils.d(context, R.attr.motionEasingStandardInterpolator, linearInterpolator);
                    determinateDrawable.y = MotionUtils.d(context, R.attr.motionEasingEmphasizedAccelerateInterpolator, linearInterpolator);
                    ValueAnimator valueAnimator = new ValueAnimator();
                    determinateDrawable.v = valueAnimator;
                    valueAnimator.setDuration(500L);
                    determinateDrawable.v.setFloatValues(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                    determinateDrawable.v.setInterpolator(null);
                    determinateDrawable.v.addUpdateListener(new ft(determinateDrawable, 2));
                }
                float f3 = i2;
                float f4 = (f3 < 1000.0f || f3 > 9000.0f) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : 1.0f;
                float f5 = determinateDrawable.s;
                ValueAnimator valueAnimator2 = determinateDrawable.v;
                if (f4 == f5) {
                    if (valueAnimator2.isRunning()) {
                        return;
                    }
                    determinateDrawable.r.f32835e = f4;
                    determinateDrawable.invalidateSelf();
                    return;
                }
                if (valueAnimator2.isRunning()) {
                    determinateDrawable.v.cancel();
                }
                determinateDrawable.s = f4;
                if (f4 == 1.0f) {
                    determinateDrawable.w = determinateDrawable.x;
                    determinateDrawable.v.start();
                } else {
                    determinateDrawable.w = determinateDrawable.y;
                    determinateDrawable.v.reverse();
                }
            }
        }
    }

    public DeterminateDrawable(Context context, BaseProgressIndicatorSpec baseProgressIndicatorSpec, DrawingDelegate drawingDelegate) {
        super(context, baseProgressIndicatorSpec);
        this.t = false;
        this.o = drawingDelegate;
        DrawingDelegate.ActiveIndicator activeIndicator = new DrawingDelegate.ActiveIndicator();
        this.r = activeIndicator;
        activeIndicator.f32837h = true;
        SpringForce springForce = new SpringForce();
        this.p = springForce;
        springForce.a(1.0f);
        springForce.b(50.0f);
        SpringAnimation springAnimation = new SpringAnimation(this, (FloatPropertyCompat<DeterminateDrawable<S>>) z);
        this.q = springAnimation;
        springAnimation.u = springForce;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.u = valueAnimator;
        valueAnimator.setDuration(1000L);
        valueAnimator.setFloatValues(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        valueAnimator.setRepeatCount(-1);
        valueAnimator.addUpdateListener(new b7(this, baseProgressIndicatorSpec, 1));
        if (baseProgressIndicatorSpec.b(true) && baseProgressIndicatorSpec.m != 0) {
            valueAnimator.start();
        }
        if (this.f32824j != 1.0f) {
            this.f32824j = 1.0f;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public final void d() {
        g(false, false, false);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(this.m)) {
            canvas.save();
            Rect bounds = getBounds();
            float fB = b();
            boolean zF = super.f();
            boolean zE = super.e();
            DrawingDelegate drawingDelegate = this.o;
            drawingDelegate.f32828a.d();
            drawingDelegate.a(canvas, bounds, fB, zF, zE);
            float fC = c();
            DrawingDelegate.ActiveIndicator activeIndicator = this.r;
            activeIndicator.f32836f = fC;
            Paint.Style style = Paint.Style.FILL;
            Paint paint = this.f32825k;
            paint.setStyle(style);
            paint.setAntiAlias(true);
            BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32819c;
            activeIndicator.f32834c = baseProgressIndicatorSpec.f32789e[0];
            int iA = baseProgressIndicatorSpec.f32792i;
            DrawingDelegate drawingDelegate2 = this.o;
            if (iA > 0) {
                if (!(drawingDelegate2 instanceof LinearDrawingDelegate)) {
                    iA = (int) ((MathUtils.a(activeIndicator.f32833b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.01f) * iA) / 0.01f);
                }
                this.o.d(canvas, paint, activeIndicator.f32833b, 1.0f, baseProgressIndicatorSpec.f32790f, this.l, iA);
            } else {
                drawingDelegate2.d(canvas, paint, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, baseProgressIndicatorSpec.f32790f, this.l, 0);
            }
            int i2 = this.l;
            DrawingDelegate drawingDelegate3 = this.o;
            drawingDelegate3.c(canvas, paint, activeIndicator, i2);
            drawingDelegate3.b(baseProgressIndicatorSpec.f32789e[0], this.l, canvas, paint);
            canvas.restore();
        }
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public final boolean g(boolean z2, boolean z3, boolean z4) {
        AnimatorDurationScaleProvider animatorDurationScaleProvider = this.d;
        ContentResolver contentResolver = this.f32818b.getContentResolver();
        animatorDurationScaleProvider.getClass();
        return h(z2, z3, z4 && Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) > Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.l;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.o.e();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.o.f();
    }

    @Override // android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public final boolean h(boolean z2, boolean z3, boolean z4) {
        boolean zH = super.h(z2, z3, z4);
        AnimatorDurationScaleProvider animatorDurationScaleProvider = this.d;
        ContentResolver contentResolver = this.f32818b.getContentResolver();
        animatorDurationScaleProvider.getClass();
        float f2 = Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            this.t = true;
            return zH;
        }
        this.t = false;
        this.p.b(50.0f / f2);
        return zH;
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.q.g();
        this.r.f32833b = getLevel() / 10000.0f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i2) {
        float f2 = i2;
        float f3 = (f2 < 1000.0f || f2 > 9000.0f) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : 1.0f;
        boolean z2 = this.t;
        DrawingDelegate.ActiveIndicator activeIndicator = this.r;
        SpringAnimation springAnimation = this.q;
        if (z2) {
            springAnimation.g();
            activeIndicator.f32833b = f2 / 10000.0f;
            invalidateSelf();
            activeIndicator.f32835e = f3;
            invalidateSelf();
        } else {
            springAnimation.f13040b = activeIndicator.f32833b * 10000.0f;
            springAnimation.f13041c = true;
            springAnimation.f(f2);
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z2, boolean z3) {
        return g(z2, z3, true);
    }
}
