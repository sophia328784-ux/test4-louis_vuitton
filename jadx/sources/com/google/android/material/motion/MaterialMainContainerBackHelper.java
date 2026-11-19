package com.google.android.material.motion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Property;
import android.view.RoundedCorner;
import android.view.View;
import android.view.WindowInsets;
import com.vuitton.android.R;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialMainContainerBackHelper extends MaterialBackAnimationHelper<View> {
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f32764h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f32765i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Rect f32766j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Rect f32767k;
    public float[] l;

    public MaterialMainContainerBackHelper(View view) {
        super(view);
        Resources resources = view.getResources();
        this.g = resources.getDimension(R.dimen.m3_back_progress_main_container_min_edge_gap);
        this.f32764h = resources.getDimension(R.dimen.m3_back_progress_main_container_max_translation_y);
    }

    public final AnimatorSet a(final View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        View view2 = this.f32752b;
        animatorSet.playTogether(ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, Call.Parameters.DEFAULT_CAMERA_ZOOM), ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.motion.MaterialMainContainerBackHelper.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                View view3 = view;
                if (view3 != null) {
                    view3.setVisibility(0);
                }
            }
        });
        return animatorSet;
    }

    public final float[] b() {
        float[] fArr;
        View view;
        WindowInsets rootWindowInsets;
        RoundedCorner roundedCorner;
        RoundedCorner roundedCorner2;
        RoundedCorner roundedCorner3;
        RoundedCorner roundedCorner4;
        if (this.l == null) {
            if (Build.VERSION.SDK_INT < 31 || (rootWindowInsets = (view = this.f32752b).getRootWindowInsets()) == null) {
                fArr = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            } else {
                DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
                int i2 = displayMetrics.widthPixels;
                int i3 = displayMetrics.heightPixels;
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                int i4 = iArr[0];
                int i5 = iArr[1];
                int width = view.getWidth();
                int height = view.getHeight();
                int radius = (i4 == 0 && i5 == 0 && (roundedCorner4 = rootWindowInsets.getRoundedCorner(0)) != null) ? roundedCorner4.getRadius() : 0;
                int i6 = width + i4;
                int radius2 = (i6 < i2 || i5 != 0 || (roundedCorner3 = rootWindowInsets.getRoundedCorner(1)) == null) ? 0 : roundedCorner3.getRadius();
                int radius3 = (i6 < i2 || i5 + height < i3 || (roundedCorner2 = rootWindowInsets.getRoundedCorner(2)) == null) ? 0 : roundedCorner2.getRadius();
                int radius4 = (i4 != 0 || i5 + height < i3 || (roundedCorner = rootWindowInsets.getRoundedCorner(3)) == null) ? 0 : roundedCorner.getRadius();
                float f2 = radius;
                float f3 = radius2;
                float f4 = radius3;
                float f5 = radius4;
                fArr = new float[]{f2, f2, f3, f3, f4, f4, f5, f5};
            }
            this.l = fArr;
        }
        return this.l;
    }
}
