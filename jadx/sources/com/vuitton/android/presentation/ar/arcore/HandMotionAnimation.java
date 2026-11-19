package com.vuitton.android.presentation.ar.arcore;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/ar/arcore/HandMotionAnimation;", "Landroid/view/animation/Animation;", "Landroid/view/View;", "handImageView", "<init>", "(Landroid/view/View;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class HandMotionAnimation extends Animation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f50568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f50569c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/ar/arcore/HandMotionAnimation$Companion;", "", "", "ANIMATION_SPEED_MS", "J", "START_OFFSET", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public HandMotionAnimation(View view) {
        view.getClass();
        this.f50568b = view;
        Object parent = view.getParent();
        parent.getClass();
        this.f50569c = (View) parent;
        setRepeatCount(-1);
        setDuration(2500L);
        setStartOffset(1000L);
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f2, Transformation transformation) {
        View view = this.f50568b;
        float width = view.getWidth();
        float f3 = view.getResources().getDisplayMetrics().density * 25.0f;
        double d = (f2 * 6.2831855f) + 1.5707964f;
        float fCos = f3 * 2.0f * ((float) Math.cos(d));
        float fSin = f3 * ((float) Math.sin(d));
        View view2 = this.f50569c;
        float width2 = ((view2.getWidth() / 2.0f) + fCos) - (width / 2.0f);
        float height = ((view2.getHeight() / 2.0f) + fSin) - (view.getHeight() / 2.0f);
        view.setX(width2);
        view.setY(height);
        view.invalidate();
    }
}
