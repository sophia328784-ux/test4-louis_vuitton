package com.google.android.material.motion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.BackEventCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.sidesheet.a;
import com.vuitton.android.R;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialSideContainerBackHelper extends MaterialBackAnimationHelper<View> {
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f32769h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f32770i;

    public MaterialSideContainerBackHelper(View view) {
        super(view);
        Resources resources = view.getResources();
        this.g = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
        this.f32769h = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
        this.f32770i = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_y_distance);
    }

    public final void a(BackEventCompat backEventCompat, final int i2, Animator.AnimatorListener animatorListener, a aVar) {
        int i3;
        final boolean z = backEventCompat.d == 0;
        View view = this.f32752b;
        boolean z2 = (Gravity.getAbsoluteGravity(i2, view.getLayoutDirection()) & 3) == 3;
        float scaleX = view.getScaleX() * view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            i3 = z2 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
        } else {
            i3 = 0;
        }
        float f2 = scaleX + i3;
        Property property = View.TRANSLATION_X;
        if (z2) {
            f2 = -f2;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f2);
        if (aVar != null) {
            objectAnimatorOfFloat.addUpdateListener(aVar);
        }
        objectAnimatorOfFloat.setInterpolator(new FastOutSlowInInterpolator());
        objectAnimatorOfFloat.setDuration(AnimationUtils.c(this.f32753c, this.d, backEventCompat.f654c));
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.motion.MaterialSideContainerBackHelper.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MaterialSideContainerBackHelper materialSideContainerBackHelper = MaterialSideContainerBackHelper.this;
                materialSideContainerBackHelper.f32752b.setTranslationX(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                materialSideContainerBackHelper.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, i2, z);
            }
        });
        objectAnimatorOfFloat.addListener(animatorListener);
        objectAnimatorOfFloat.start();
    }

    public final void b(float f2, int i2, boolean z) {
        float interpolation = this.f32751a.getInterpolation(f2);
        View view = this.f32752b;
        boolean z2 = (Gravity.getAbsoluteGravity(i2, view.getLayoutDirection()) & 3) == 3;
        boolean z3 = z == z2;
        int width = view.getWidth();
        int height = view.getHeight();
        float f3 = width;
        if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float f4 = height;
            if (f4 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return;
            }
            float f5 = this.g / f3;
            float f6 = this.f32769h / f3;
            float f7 = this.f32770i / f4;
            if (z2) {
                f3 = 0.0f;
            }
            view.setPivotX(f3);
            if (!z3) {
                f6 = -f5;
            }
            float fA = AnimationUtils.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, f6, interpolation);
            float f8 = fA + 1.0f;
            float fA2 = 1.0f - AnimationUtils.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, f7, interpolation);
            if (Float.isNaN(f8) || Float.isNaN(fA2)) {
                return;
            }
            view.setScaleX(f8);
            view.setScaleY(fA2);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                    View childAt = viewGroup.getChildAt(i3);
                    childAt.setPivotX(z2 ? childAt.getWidth() + (width - childAt.getRight()) : -childAt.getLeft());
                    childAt.setPivotY(-childAt.getTop());
                    float f9 = z3 ? 1.0f - fA : 1.0f;
                    float f10 = fA2 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? (f8 / fA2) * f9 : 1.0f;
                    if (!Float.isNaN(f9) && !Float.isNaN(f10)) {
                        childAt.setScaleX(f9);
                        childAt.setScaleY(f10);
                    }
                }
            }
        }
    }
}
