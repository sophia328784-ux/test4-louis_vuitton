package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.view.View;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class MultiViewUpdateListener implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Listener f32717a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View[] f32718b;

    public interface Listener {
        void a(ValueAnimator valueAnimator, View view);
    }

    public MultiViewUpdateListener(Listener listener, Collection<View> collection) {
        this.f32717a = listener;
        this.f32718b = (View[]) collection.toArray(new View[0]);
    }

    public static MultiViewUpdateListener a(View... viewArr) {
        return new MultiViewUpdateListener(new a(1), viewArr);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        for (View view : this.f32718b) {
            this.f32717a.a(valueAnimator, view);
        }
    }

    public MultiViewUpdateListener(Listener listener, View... viewArr) {
        this.f32717a = listener;
        this.f32718b = viewArr;
    }
}
