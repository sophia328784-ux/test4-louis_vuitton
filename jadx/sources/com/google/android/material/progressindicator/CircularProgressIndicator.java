package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import com.vuitton.android.R;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class CircularProgressIndicator extends BaseProgressIndicator<CircularProgressIndicatorSpec> {
    public static final /* synthetic */ int o = 0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface IndeterminateAnimationType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface IndicatorDirection {
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) this.f32776b;
        CircularDrawingDelegate circularDrawingDelegate = new CircularDrawingDelegate(circularProgressIndicatorSpec);
        Context context2 = getContext();
        IndeterminateDrawable indeterminateDrawable = new IndeterminateDrawable(context2, circularProgressIndicatorSpec, circularDrawingDelegate, circularProgressIndicatorSpec.o == 1 ? new CircularIndeterminateRetreatAnimatorDelegate(context2, circularProgressIndicatorSpec) : new CircularIndeterminateAdvanceAnimatorDelegate(circularProgressIndicatorSpec));
        indeterminateDrawable.q = VectorDrawableCompat.a(R.drawable.ic_mtrl_arrow_circle, null, context2.getResources());
        setIndeterminateDrawable(indeterminateDrawable);
        setProgressDrawable(new DeterminateDrawable(getContext(), circularProgressIndicatorSpec, circularDrawingDelegate));
        this.f32781i = true;
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public final BaseProgressIndicatorSpec a(Context context, AttributeSet attributeSet) {
        return new CircularProgressIndicatorSpec(context, attributeSet);
    }

    public int getIndeterminateAnimationType() {
        return ((CircularProgressIndicatorSpec) this.f32776b).o;
    }

    public int getIndicatorDirection() {
        return ((CircularProgressIndicatorSpec) this.f32776b).r;
    }

    public int getIndicatorInset() {
        return ((CircularProgressIndicatorSpec) this.f32776b).q;
    }

    public int getIndicatorSize() {
        return ((CircularProgressIndicatorSpec) this.f32776b).p;
    }

    public void setIndeterminateAnimationType(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).o == i2) {
            return;
        }
        if (d() && isIndeterminate()) {
            md.k("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
            return;
        }
        ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).o = i2;
        ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).d();
        IndeterminateAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate = i2 == 1 ? new CircularIndeterminateRetreatAnimatorDelegate(getContext(), (CircularProgressIndicatorSpec) baseProgressIndicatorSpec) : new CircularIndeterminateAdvanceAnimatorDelegate((CircularProgressIndicatorSpec) baseProgressIndicatorSpec);
        IndeterminateDrawable<CircularProgressIndicatorSpec> indeterminateDrawable = getIndeterminateDrawable();
        indeterminateDrawable.p = circularIndeterminateRetreatAnimatorDelegate;
        circularIndeterminateRetreatAnimatorDelegate.f32841a = indeterminateDrawable;
        b();
        invalidate();
    }

    public void setIndicatorDirection(int i2) {
        ((CircularProgressIndicatorSpec) this.f32776b).r = i2;
        invalidate();
    }

    public void setIndicatorInset(int i2) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).q != i2) {
            ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).q = i2;
            invalidate();
        }
    }

    public void setIndicatorSize(int i2) {
        int iMax = Math.max(i2, getTrackThickness() * 2);
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32776b;
        if (((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).p != iMax) {
            ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).p = iMax;
            ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).d();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackThickness(int i2) {
        super.setTrackThickness(i2);
        ((CircularProgressIndicatorSpec) this.f32776b).d();
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(Context context) {
        this(context, null);
    }
}
