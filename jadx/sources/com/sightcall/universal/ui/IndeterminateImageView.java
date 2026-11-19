package com.sightcall.universal.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.ViewCompat;
import com.batch.android.q0.b;
import com.sightcall.universal.R;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class IndeterminateImageView extends AppCompatImageView {
    private final Rect bounds;
    private IndeterminateDrawable indeterminateDrawable;

    public IndeterminateImageView(Context context) {
        super(context);
        this.bounds = new Rect();
        init(null, 0);
    }

    private void init(AttributeSet attributeSet, int i2) {
        if (isInEditMode()) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.universal_IndeterminateImageView, i2, 0);
        IndeterminateDrawable.Builder builder = new IndeterminateDrawable.Builder(getContext());
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.universal_IndeterminateImageView_indeterminate_color)) {
            builder.color(typedArrayObtainStyledAttributes.getColor(R.styleable.universal_IndeterminateImageView_indeterminate_color, b.v));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.universal_IndeterminateImageView_indeterminate_padding)) {
            builder.padding(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.universal_IndeterminateImageView_indeterminate_padding, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.universal_IndeterminateImageView_indeterminate_strokeWidth)) {
            builder.strokeWidth(typedArrayObtainStyledAttributes.getDimension(R.styleable.universal_IndeterminateImageView_indeterminate_strokeWidth, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.universal_IndeterminateImageView_indeterminate_rotationDuration)) {
            builder.rotationDuration(typedArrayObtainStyledAttributes.getInt(R.styleable.universal_IndeterminateImageView_indeterminate_rotationDuration, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.universal_IndeterminateImageView_indeterminate_sweepDuration)) {
            builder.sweepDuration(typedArrayObtainStyledAttributes.getInt(R.styleable.universal_IndeterminateImageView_indeterminate_sweepDuration, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        setIndeterminateDrawable(builder.build());
    }

    private void updateIndeterminateDrawableState() {
        if (this.indeterminateDrawable == null) {
            return;
        }
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        boolean zIsAttachedToWindow = isAttachedToWindow();
        int visibility = getVisibility();
        if (!this.indeterminateDrawable.isStarted() && zIsAttachedToWindow && visibility == 0) {
            this.indeterminateDrawable.start();
        } else if (this.indeterminateDrawable.isStarted()) {
            if (zIsAttachedToWindow && visibility == 0) {
                return;
            }
            this.indeterminateDrawable.stop();
        }
    }

    public IndeterminateDrawable getIndeterminateDrawable() {
        return this.indeterminateDrawable;
    }

    public void hide(final boolean z) {
        if (getVisibility() == (z ? 8 : 4)) {
            return;
        }
        animate().alpha(Call.Parameters.DEFAULT_CAMERA_ZOOM).setListener(new AnimatorListenerAdapter() { // from class: com.sightcall.universal.ui.IndeterminateImageView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                IndeterminateImageView.this.setVisibility(z ? 8 : 4);
            }
        });
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateIndeterminateDrawableState();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        updateIndeterminateDrawableState();
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.bounds.set(0, 0, i2, i3);
        IndeterminateDrawable indeterminateDrawable = this.indeterminateDrawable;
        if (indeterminateDrawable != null) {
            indeterminateDrawable.onBoundsChange(this.bounds);
        }
    }

    public void setIndeterminateDrawable(IndeterminateDrawable indeterminateDrawable) {
        setImageDrawable(indeterminateDrawable);
        this.indeterminateDrawable = indeterminateDrawable;
        updateIndeterminateDrawableState();
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        updateIndeterminateDrawableState();
    }

    public void show() {
        if (getVisibility() == 0) {
            return;
        }
        setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        setVisibility(0);
        animate().alpha(1.0f).setListener(null);
    }

    public IndeterminateImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bounds = new Rect();
        init(attributeSet, 0);
    }

    public IndeterminateImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.bounds = new Rect();
        init(attributeSet, i2);
    }
}
