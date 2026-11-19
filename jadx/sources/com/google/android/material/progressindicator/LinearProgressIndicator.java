package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Pair;
import com.vuitton.android.R;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class LinearProgressIndicator extends BaseProgressIndicator<LinearProgressIndicatorSpec> {
    public static final /* synthetic */ int o = 0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface IndeterminateAnimationType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface IndicatorDirection {
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) this.f32776b;
        LinearDrawingDelegate linearDrawingDelegate = new LinearDrawingDelegate(linearProgressIndicatorSpec);
        linearDrawingDelegate.f32843f = 300.0f;
        linearDrawingDelegate.o = new Pair(new DrawingDelegate.PathPoint(linearDrawingDelegate), new DrawingDelegate.PathPoint(linearDrawingDelegate));
        Context context2 = getContext();
        setIndeterminateDrawable(new IndeterminateDrawable(context2, linearProgressIndicatorSpec, linearDrawingDelegate, linearProgressIndicatorSpec.o == 0 ? new LinearIndeterminateContiguousAnimatorDelegate(linearProgressIndicatorSpec) : new LinearIndeterminateDisjointAnimatorDelegate(context2, linearProgressIndicatorSpec)));
        setProgressDrawable(new DeterminateDrawable(getContext(), linearProgressIndicatorSpec, linearDrawingDelegate));
        this.f32781i = true;
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public final BaseProgressIndicatorSpec a(Context context, AttributeSet attributeSet) {
        return new LinearProgressIndicatorSpec(context, attributeSet);
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public final void c(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (baseProgressIndicatorSpec != null && ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).o == 0 && isIndeterminate()) {
            return;
        }
        super.c(i2);
    }

    public int getIndeterminateAnimationType() {
        return ((LinearProgressIndicatorSpec) this.f32776b).o;
    }

    public int getIndicatorDirection() {
        return ((LinearProgressIndicatorSpec) this.f32776b).p;
    }

    public int getTrackInnerCornerRadius() {
        return ((LinearProgressIndicatorSpec) this.f32776b).t;
    }

    public Integer getTrackStopIndicatorPadding() {
        return ((LinearProgressIndicatorSpec) this.f32776b).s;
    }

    public int getTrackStopIndicatorSize() {
        return ((LinearProgressIndicatorSpec) this.f32776b).r;
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) baseProgressIndicatorSpec;
        boolean z2 = true;
        if (((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).p != 1 && ((getLayoutDirection() != 1 || ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).p != 2) && (getLayoutDirection() != 0 || ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).p != 3))) {
            z2 = false;
        }
        linearProgressIndicatorSpec.q = z2;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        int paddingRight = i2 - (getPaddingRight() + getPaddingLeft());
        int paddingBottom = i3 - (getPaddingBottom() + getPaddingTop());
        IndeterminateDrawable<LinearProgressIndicatorSpec> indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
        DeterminateDrawable<LinearProgressIndicatorSpec> progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
    }

    public void setIndeterminateAnimationType(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).o == i2) {
            return;
        }
        if (d() && isIndeterminate()) {
            md.k("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
            return;
        }
        ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).o = i2;
        ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).d();
        if (i2 == 0) {
            IndeterminateDrawable<LinearProgressIndicatorSpec> indeterminateDrawable = getIndeterminateDrawable();
            LinearIndeterminateContiguousAnimatorDelegate linearIndeterminateContiguousAnimatorDelegate = new LinearIndeterminateContiguousAnimatorDelegate((LinearProgressIndicatorSpec) baseProgressIndicatorSpec);
            indeterminateDrawable.p = linearIndeterminateContiguousAnimatorDelegate;
            linearIndeterminateContiguousAnimatorDelegate.f32841a = indeterminateDrawable;
        } else {
            IndeterminateDrawable<LinearProgressIndicatorSpec> indeterminateDrawable2 = getIndeterminateDrawable();
            LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate = new LinearIndeterminateDisjointAnimatorDelegate(getContext(), (LinearProgressIndicatorSpec) baseProgressIndicatorSpec);
            indeterminateDrawable2.p = linearIndeterminateDisjointAnimatorDelegate;
            linearIndeterminateDisjointAnimatorDelegate.f32841a = indeterminateDrawable2;
        }
        b();
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setIndicatorColor(int... iArr) {
        super.setIndicatorColor(iArr);
        ((LinearProgressIndicatorSpec) this.f32776b).d();
    }

    public void setIndicatorDirection(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).p = i2;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) baseProgressIndicatorSpec;
        boolean z = true;
        if (i2 != 1 && ((getLayoutDirection() != 1 || ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).p != 2) && (getLayoutDirection() != 0 || i2 != 3))) {
            z = false;
        }
        linearProgressIndicatorSpec.q = z;
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackCornerRadius(int i2) {
        super.setTrackCornerRadius(i2);
        ((LinearProgressIndicatorSpec) this.f32776b).d();
        invalidate();
    }

    public void setTrackInnerCornerRadius(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).t != i2) {
            ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).t = Math.round(Math.min(i2, ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).f32786a / 2.0f));
            ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).v = false;
            ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).w = true;
            ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).d();
            invalidate();
        }
    }

    public void setTrackInnerCornerRadiusFraction(float f2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).u != f2) {
            ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).u = Math.min(f2, 0.5f);
            ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).v = true;
            ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).w = true;
            ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).d();
            invalidate();
        }
    }

    public void setTrackStopIndicatorPadding(Integer num) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (Objects.equals(((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).s, num)) {
            return;
        }
        ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).s = num;
        invalidate();
    }

    public void setTrackStopIndicatorSize(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).r != i2) {
            ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).r = Math.min(i2, ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).f32786a);
            ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).d();
            invalidate();
        }
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicator(Context context) {
        this(context, null);
    }
}
