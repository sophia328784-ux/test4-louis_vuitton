package com.google.android.material.motion;

import android.content.Context;
import android.view.View;
import android.view.animation.PathInterpolator;
import androidx.activity.BackEventCompat;
import com.vuitton.android.R;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MaterialBackAnimationHelper<V extends View> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PathInterpolator f32751a = new PathInterpolator(0.1f, 0.1f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f32752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f32753c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f32754e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public BackEventCompat f32755f;

    public MaterialBackAnimationHelper(V v) {
        this.f32752b = v;
        Context context = v.getContext();
        this.f32753c = MotionUtils.c(context, R.attr.motionDurationMedium2, 300);
        this.d = MotionUtils.c(context, R.attr.motionDurationShort3, 150);
        this.f32754e = MotionUtils.c(context, R.attr.motionDurationShort2, 100);
    }
}
