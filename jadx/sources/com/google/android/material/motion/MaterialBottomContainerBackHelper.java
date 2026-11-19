package com.google.android.material.motion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.BackEventCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.animation.AnimationUtils;
import com.vuitton.android.R;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialBottomContainerBackHelper extends MaterialBackAnimationHelper<View> {
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f32762h;

    public MaterialBottomContainerBackHelper(View view) {
        super(view);
        Resources resources = view.getResources();
        this.g = resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_x_distance);
        this.f32762h = resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_y_distance);
    }

    public final AnimatorSet a() {
        AnimatorSet animatorSet = new AnimatorSet();
        View view = this.f32752b;
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, 1.0f));
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i2), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setInterpolator(new FastOutSlowInInterpolator());
        return animatorSet;
    }

    public final void b(BackEventCompat backEventCompat, Animator.AnimatorListener animatorListener) {
        View view = this.f32752b;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, view.getScaleY() * view.getHeight());
        objectAnimatorOfFloat.setInterpolator(new FastOutSlowInInterpolator());
        objectAnimatorOfFloat.setDuration(AnimationUtils.c(this.f32753c, this.d, backEventCompat.f654c));
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.motion.MaterialBottomContainerBackHelper.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MaterialBottomContainerBackHelper materialBottomContainerBackHelper = MaterialBottomContainerBackHelper.this;
                materialBottomContainerBackHelper.f32752b.setTranslationY(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                materialBottomContainerBackHelper.c(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }
        });
        objectAnimatorOfFloat.addListener(animatorListener);
        objectAnimatorOfFloat.start();
    }

    public final void c(float f2) {
        float interpolation = this.f32751a.getInterpolation(f2);
        View view = this.f32752b;
        float width = view.getWidth();
        float height = view.getHeight();
        if (width <= Call.Parameters.DEFAULT_CAMERA_ZOOM || height <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        float f3 = this.g / width;
        float f4 = this.f32762h / height;
        float fA = 1.0f - AnimationUtils.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, interpolation);
        float fA2 = 1.0f - AnimationUtils.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, interpolation);
        if (Float.isNaN(fA) || Float.isNaN(fA2)) {
            return;
        }
        view.setScaleX(fA);
        view.setPivotY(height);
        view.setScaleY(fA2);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                childAt.setPivotY(-childAt.getTop());
                childAt.setScaleY(fA2 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? fA / fA2 : 1.0f);
            }
        }
    }
}
