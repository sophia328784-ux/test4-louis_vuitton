package com.sightcall.universal.internal.view;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.ColorFilter;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.sightcall.universal.R;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class CallButtonImageView extends AppCompatImageView {
    private AnimatorSet animator;
    private ColorStateList tint;
    private CallButton type;
    private static final OvershootInterpolator OVERSHOOT_INTERPOLATOR = new OvershootInterpolator();
    private static final AccelerateInterpolator ACCELERATE_INTERPOLATOR = new AccelerateInterpolator();
    private static final AnimatorSet EMPTY_ANIMATOR_SET = new AnimatorSet();

    public CallButtonImageView(Context context) {
        super(context);
    }

    private AnimatorSet createAnimator(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this, "weight", getWeightForVisibility(z)), ObjectAnimator.ofFloat(this, "alpha", getAlphaForVisibility(z)), ObjectAnimator.ofFloat(this, "translationY", getTranslationYForVisibility(z)));
        if (z) {
            animatorSet.setInterpolator(OVERSHOOT_INTERPOLATOR);
            return animatorSet;
        }
        animatorSet.setInterpolator(ACCELERATE_INTERPOLATOR);
        return animatorSet;
    }

    private float getAlphaForVisibility(boolean z) {
        if (z) {
            return 1.0f;
        }
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    private float getTranslationYForVisibility(boolean z) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        boolean z2 = (layoutParams instanceof LinearLayout.LayoutParams) && ((LinearLayout.LayoutParams) layoutParams).gravity == 48;
        float dimension = getResources().getDimension(R.dimen.universal_call_button_bar_height);
        if (z) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        if (z2) {
            dimension = -dimension;
        }
        return dimension * 2.0f;
    }

    private float getWeightForVisibility(boolean z) {
        if (z) {
            return 1.0f;
        }
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    private void updateTintColor() {
        setColorFilter(this.tint.getColorForState(getDrawableState(), 0));
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        ColorStateList colorStateList = this.tint;
        if (colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        updateTintColor();
    }

    public CallButton getType() {
        return this.type;
    }

    public float getWeight() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return ((LinearLayout.LayoutParams) layoutParams).weight;
        }
        if (isEnabled()) {
            return 1.0f;
        }
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public void setColorFilter(ColorStateList colorStateList) {
        this.tint = colorStateList;
        if (colorStateList == null) {
            super.setColorFilter((ColorFilter) null);
        } else {
            super.setColorFilter(colorStateList.getColorForState(getDrawableState(), 0));
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        boolean z2 = z != isEnabled();
        super.setEnabled(z);
        super.setFocusable(z);
        if (z2) {
            AnimatorSet animatorSet = this.animator;
            if (animatorSet != null && animatorSet.isStarted()) {
                this.animator.cancel();
            }
            if (this.animator == null) {
                setWeight(getWeightForVisibility(z));
                setAlpha(getAlphaForVisibility(z));
                setTranslationY(getTranslationYForVisibility(z));
            } else {
                AnimatorSet animatorSetCreateAnimator = createAnimator(z);
                animatorSetCreateAnimator.start();
                this.animator = animatorSetCreateAnimator;
            }
        }
        if (this.animator == null) {
            this.animator = EMPTY_ANIMATOR_SET;
        }
    }

    public void setType(CallButton callButton) {
        this.type = callButton;
        setImageResource(callButton.drawable);
    }

    public void setWeight(float f2) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            if (layoutParams2.weight != f2) {
                layoutParams2.weight = f2;
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestLayout();
                }
            }
        }
    }

    public CallButtonImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CallButtonImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
