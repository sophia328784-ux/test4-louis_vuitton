package com.google.android.material.progressindicator;

import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.R$styleable;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.vuitton.android.R;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseProgressIndicator<S extends BaseProgressIndicatorSpec> extends ProgressBar {
    public static final /* synthetic */ int n = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BaseProgressIndicatorSpec f32776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f32777c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f32778e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AnimatorDurationScaleProvider f32779f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f32780h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f32781i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Runnable f32782j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Runnable f32783k;
    public final Animatable2Compat.AnimationCallback l;
    public final Animatable2Compat.AnimationCallback m;

    @Retention(RetentionPolicy.SOURCE)
    public @interface HideAnimationBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ShowAnimationBehavior {
    }

    public BaseProgressIndicator(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, R.style.Widget_MaterialComponents_ProgressIndicator), attributeSet, i2);
        this.g = false;
        this.f32780h = 4;
        this.f32782j = new Runnable() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.1
            @Override // java.lang.Runnable
            public void run() {
                BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
                int i4 = BaseProgressIndicator.n;
                if (baseProgressIndicator.f32778e > 0) {
                    SystemClock.uptimeMillis();
                }
                baseProgressIndicator.setVisibility(0);
            }
        };
        this.f32783k = new Runnable() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.2
            @Override // java.lang.Runnable
            public void run() {
                BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
                int i4 = BaseProgressIndicator.n;
                ((DrawableWithAnimatedVisibilityChange) baseProgressIndicator.getCurrentDrawable()).g(false, false, true);
                if ((baseProgressIndicator.getProgressDrawable() == null || !baseProgressIndicator.getProgressDrawable().isVisible()) && (baseProgressIndicator.getIndeterminateDrawable() == null || !baseProgressIndicator.getIndeterminateDrawable().isVisible())) {
                    baseProgressIndicator.setVisibility(4);
                }
                BaseProgressIndicator.this.getClass();
            }
        };
        this.l = new Animatable2Compat.AnimationCallback() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.3
            @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
            public final void a(Drawable drawable) {
                BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
                baseProgressIndicator.setIndeterminate(false);
                baseProgressIndicator.c(baseProgressIndicator.f32777c);
            }
        };
        this.m = new Animatable2Compat.AnimationCallback() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.4
            @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
            public final void a(Drawable drawable) {
                BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
                if (baseProgressIndicator.g) {
                    return;
                }
                baseProgressIndicator.setVisibility(baseProgressIndicator.f32780h);
            }
        };
        Context context2 = getContext();
        this.f32776b = a(context2, attributeSet);
        TypedArray typedArrayD = ThemeEnforcement.d(context2, attributeSet, R$styleable.d, i2, i3, new int[0]);
        typedArrayD.getInt(7, -1);
        this.f32778e = Math.min(typedArrayD.getInt(5, -1), 1000);
        typedArrayD.recycle();
        this.f32779f = new AnimatorDurationScaleProvider();
        this.d = true;
    }

    private DrawingDelegate<S> getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().o;
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().o;
    }

    public abstract BaseProgressIndicatorSpec a(Context context, AttributeSet attributeSet);

    public final void b() {
        if (getProgressDrawable() == null || getIndeterminateDrawable() == null) {
            return;
        }
        getIndeterminateDrawable().p.d(this.l);
    }

    public void c(int i2) {
        if (!isIndeterminate()) {
            super.setProgress(i2);
            if (getProgressDrawable() != null) {
                getProgressDrawable().jumpToCurrentState();
                return;
            }
            return;
        }
        if (getProgressDrawable() != null) {
            this.f32777c = i2;
            this.g = true;
            if (getIndeterminateDrawable().isVisible()) {
                AnimatorDurationScaleProvider animatorDurationScaleProvider = this.f32779f;
                ContentResolver contentResolver = getContext().getContentResolver();
                animatorDurationScaleProvider.getClass();
                if (Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    getIndeterminateDrawable().p.e();
                    return;
                }
            }
            this.l.a(getIndeterminateDrawable());
        }
    }

    public final boolean d() {
        if (!isAttachedToWindow() || getWindowVisibility() != 0) {
            return false;
        }
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    @Override // android.widget.ProgressBar
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.f32776b.f32791h;
    }

    @Override // android.widget.ProgressBar
    public IndeterminateDrawable<S> getIndeterminateDrawable() {
        return (IndeterminateDrawable) super.getIndeterminateDrawable();
    }

    public int[] getIndicatorColor() {
        return this.f32776b.f32789e;
    }

    public int getIndicatorTrackGapSize() {
        return this.f32776b.f32792i;
    }

    @Override // android.widget.ProgressBar
    public DeterminateDrawable<S> getProgressDrawable() {
        return (DeterminateDrawable) super.getProgressDrawable();
    }

    public int getShowAnimationBehavior() {
        return this.f32776b.g;
    }

    public int getTrackColor() {
        return this.f32776b.f32790f;
    }

    public int getTrackCornerRadius() {
        return this.f32776b.f32787b;
    }

    public float getTrackCornerRadiusFraction() {
        return this.f32776b.f32788c;
    }

    public int getTrackThickness() {
        return this.f32776b.f32786a;
    }

    public int getWaveAmplitude() {
        return this.f32776b.l;
    }

    public int getWaveSpeed() {
        return this.f32776b.m;
    }

    public int getWavelengthDeterminate() {
        return this.f32776b.f32793j;
    }

    public int getWavelengthIndeterminate() {
        return this.f32776b.f32794k;
    }

    @Override // android.view.View
    public final void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        b();
        DeterminateDrawable<S> progressDrawable = getProgressDrawable();
        Animatable2Compat.AnimationCallback animationCallback = this.m;
        if (progressDrawable != null) {
            DeterminateDrawable<S> progressDrawable2 = getProgressDrawable();
            if (progressDrawable2.f32822h == null) {
                progressDrawable2.f32822h = new ArrayList();
            }
            if (!progressDrawable2.f32822h.contains(animationCallback)) {
                progressDrawable2.f32822h.add(animationCallback);
            }
        }
        if (getIndeterminateDrawable() != null) {
            IndeterminateDrawable<S> indeterminateDrawable = getIndeterminateDrawable();
            if (indeterminateDrawable.f32822h == null) {
                indeterminateDrawable.f32822h = new ArrayList();
            }
            if (!indeterminateDrawable.f32822h.contains(animationCallback)) {
                indeterminateDrawable.f32822h.add(animationCallback);
            }
        }
        if (d()) {
            if (this.f32778e > 0) {
                SystemClock.uptimeMillis();
            }
            setVisibility(0);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f32783k);
        removeCallbacks(this.f32782j);
        ((DrawableWithAnimatedVisibilityChange) getCurrentDrawable()).d();
        IndeterminateDrawable<S> indeterminateDrawable = getIndeterminateDrawable();
        Animatable2Compat.AnimationCallback animationCallback = this.m;
        if (indeterminateDrawable != null) {
            getIndeterminateDrawable().i(animationCallback);
            getIndeterminateDrawable().p.g();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().i(animationCallback);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        try {
            int iSave = canvas.save();
            if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
                canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            }
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(iSave);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        getCurrentDrawingDelegate().g();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i2, int i3) {
        try {
            DrawingDelegate<S> currentDrawingDelegate = getCurrentDrawingDelegate();
            if (currentDrawingDelegate == null) {
                return;
            }
            setMeasuredDimension(currentDrawingDelegate.f() < 0 ? View.getDefaultSize(getSuggestedMinimumWidth(), i2) : currentDrawingDelegate.f() + getPaddingLeft() + getPaddingRight(), currentDrawingDelegate.e() < 0 ? View.getDefaultSize(getSuggestedMinimumHeight(), i3) : currentDrawingDelegate.e() + getPaddingTop() + getPaddingBottom());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        boolean z = i2 == 0;
        if (this.d) {
            ((DrawableWithAnimatedVisibilityChange) getCurrentDrawable()).g(d(), false, z);
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (this.d) {
            ((DrawableWithAnimatedVisibilityChange) getCurrentDrawable()).g(d(), false, false);
        }
    }

    public void setAnimatorDurationScaleProvider(AnimatorDurationScaleProvider animatorDurationScaleProvider) {
        this.f32779f = animatorDurationScaleProvider;
        if (getProgressDrawable() != null) {
            getProgressDrawable().d = animatorDurationScaleProvider;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().d = animatorDurationScaleProvider;
        }
    }

    public void setHideAnimationBehavior(int i2) {
        this.f32776b.f32791h = i2;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z) {
        try {
            if (z == isIndeterminate()) {
                return;
            }
            DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange = (DrawableWithAnimatedVisibilityChange) getCurrentDrawable();
            if (drawableWithAnimatedVisibilityChange != null) {
                drawableWithAnimatedVisibilityChange.d();
            }
            super.setIndeterminate(z);
            DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange2 = (DrawableWithAnimatedVisibilityChange) getCurrentDrawable();
            if (drawableWithAnimatedVisibilityChange2 != null) {
                drawableWithAnimatedVisibilityChange2.g(d(), false, false);
            }
            if ((drawableWithAnimatedVisibilityChange2 instanceof IndeterminateDrawable) && d()) {
                ((IndeterminateDrawable) drawableWithAnimatedVisibilityChange2).p.f();
            }
            this.g = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setIndeterminateAnimatorDurationScale(float f2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (baseProgressIndicatorSpec.n != f2) {
            baseProgressIndicatorSpec.n = f2;
            getIndeterminateDrawable().p.c();
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable instanceof IndeterminateDrawable) {
            ((DrawableWithAnimatedVisibilityChange) drawable).d();
            super.setIndeterminateDrawable(drawable);
        } else if (this.f32781i) {
            md.n("Cannot set framework drawable as indeterminate drawable.");
        } else {
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{MaterialColors.c(getContext(), R.attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.f32776b.f32789e = iArr;
        getIndeterminateDrawable().p.c();
        invalidate();
    }

    public void setIndicatorTrackGapSize(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (baseProgressIndicatorSpec.f32792i != i2) {
            baseProgressIndicatorSpec.f32792i = i2;
            baseProgressIndicatorSpec.d();
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i2) {
        if (isIndeterminate()) {
            return;
        }
        c(i2);
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        if (drawable instanceof DeterminateDrawable) {
            DeterminateDrawable determinateDrawable = (DeterminateDrawable) drawable;
            determinateDrawable.g(false, false, false);
            super.setProgressDrawable(determinateDrawable);
            determinateDrawable.setLevel((int) ((getProgress() / getMax()) * 10000.0f));
            return;
        }
        if (this.f32781i) {
            md.n("Cannot set framework drawable as progress drawable.");
        } else {
            super.setProgressDrawable(drawable);
        }
    }

    public void setShowAnimationBehavior(int i2) {
        this.f32776b.g = i2;
        invalidate();
    }

    public void setTrackColor(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (baseProgressIndicatorSpec.f32790f != i2) {
            baseProgressIndicatorSpec.f32790f = i2;
            invalidate();
        }
    }

    public void setTrackCornerRadius(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (baseProgressIndicatorSpec.f32787b != i2) {
            baseProgressIndicatorSpec.f32787b = Math.min(i2, baseProgressIndicatorSpec.f32786a / 2);
            baseProgressIndicatorSpec.d = false;
            invalidate();
        }
    }

    public void setTrackCornerRadiusFraction(float f2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (baseProgressIndicatorSpec.f32788c != f2) {
            baseProgressIndicatorSpec.f32788c = Math.min(f2, 0.5f);
            baseProgressIndicatorSpec.d = true;
            invalidate();
        }
    }

    public void setTrackThickness(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (baseProgressIndicatorSpec.f32786a != i2) {
            baseProgressIndicatorSpec.f32786a = i2;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i2) {
        if (i2 == 0 || i2 == 4 || i2 == 8) {
            this.f32780h = i2;
        } else {
            md.n("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
    }

    public void setWaveAmplitude(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (baseProgressIndicatorSpec.l != i2) {
            baseProgressIndicatorSpec.l = Math.abs(i2);
            requestLayout();
        }
    }

    public void setWaveSpeed(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        baseProgressIndicatorSpec.m = i2;
        DeterminateDrawable<S> progressDrawable = getProgressDrawable();
        boolean z = baseProgressIndicatorSpec.m != 0;
        ValueAnimator valueAnimator = progressDrawable.u;
        if (z && !valueAnimator.isRunning()) {
            valueAnimator.start();
        } else {
            if (z || !valueAnimator.isRunning()) {
                return;
            }
            valueAnimator.cancel();
        }
    }

    public void setWavelength(int i2) {
        setWavelengthDeterminate(i2);
        setWavelengthIndeterminate(i2);
    }

    public void setWavelengthDeterminate(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (baseProgressIndicatorSpec.f32793j != i2) {
            baseProgressIndicatorSpec.f32793j = Math.abs(i2);
            if (isIndeterminate()) {
                return;
            }
            requestLayout();
        }
    }

    public void setWavelengthIndeterminate(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (baseProgressIndicatorSpec.f32794k != i2) {
            baseProgressIndicatorSpec.f32794k = Math.abs(i2);
            if (isIndeterminate()) {
                requestLayout();
            }
        }
    }
}
