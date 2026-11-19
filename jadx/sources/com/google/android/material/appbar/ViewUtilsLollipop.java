package com.google.android.material.appbar;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
abstract class ViewUtilsLollipop {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f32282a = {R.attr.stateListAnimator};

    public static void a(AppBarLayout appBarLayout, float f2) {
        int integer = appBarLayout.getResources().getInteger(com.vuitton.android.R.integer.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j2 = integer;
        stateListAnimator.addState(new int[]{R.attr.state_enabled, com.vuitton.android.R.attr.state_liftable, -com.vuitton.android.R.attr.state_lifted}, ObjectAnimator.ofFloat(appBarLayout, "elevation", Call.Parameters.DEFAULT_CAMERA_ZOOM).setDuration(j2));
        stateListAnimator.addState(new int[]{R.attr.state_enabled}, ObjectAnimator.ofFloat(appBarLayout, "elevation", f2).setDuration(j2));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(appBarLayout, "elevation", Call.Parameters.DEFAULT_CAMERA_ZOOM).setDuration(0L));
        appBarLayout.setStateListAnimator(stateListAnimator);
    }
}
