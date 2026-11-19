package com.google.android.material.progressindicator;

import android.animation.Animator;
import androidx.core.math.MathUtils;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
abstract class IndeterminateAnimatorDelegate<T extends Animator> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public IndeterminateDrawable f32841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f32842b = new ArrayList();

    public IndeterminateAnimatorDelegate(int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            this.f32842b.add(new DrawingDelegate.ActiveIndicator());
        }
    }

    public static float b(int i2, int i3, int i4) {
        return MathUtils.a((i2 - i3) / i4, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
    }

    public abstract void a();

    public abstract void c();

    public abstract void d(Animatable2Compat.AnimationCallback animationCallback);

    public abstract void e();

    public abstract void f();

    public abstract void g();
}
