package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.google.android.material.math.MathUtils;

/* JADX INFO: loaded from: classes2.dex */
public interface CircularRevealWidget extends CircularRevealHelper.Delegate {

    public static class CircularRevealEvaluator implements TypeEvaluator<RevealInfo> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final CircularRevealEvaluator f32509b = new CircularRevealEvaluator();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final RevealInfo f32510a = new RevealInfo();

        @Override // android.animation.TypeEvaluator
        public final RevealInfo evaluate(float f2, RevealInfo revealInfo, RevealInfo revealInfo2) {
            RevealInfo revealInfo3 = revealInfo;
            RevealInfo revealInfo4 = revealInfo2;
            float fC = MathUtils.c(revealInfo3.f32513a, revealInfo4.f32513a, f2);
            float fC2 = MathUtils.c(revealInfo3.f32514b, revealInfo4.f32514b, f2);
            float fC3 = MathUtils.c(revealInfo3.f32515c, revealInfo4.f32515c, f2);
            RevealInfo revealInfo5 = this.f32510a;
            revealInfo5.f32513a = fC;
            revealInfo5.f32514b = fC2;
            revealInfo5.f32515c = fC3;
            return revealInfo5;
        }
    }

    public static class CircularRevealProperty extends Property<CircularRevealWidget, RevealInfo> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CircularRevealProperty f32511a = new CircularRevealProperty(RevealInfo.class, "circularReveal");

        @Override // android.util.Property
        public final RevealInfo get(CircularRevealWidget circularRevealWidget) {
            return circularRevealWidget.getRevealInfo();
        }

        @Override // android.util.Property
        public final void set(CircularRevealWidget circularRevealWidget, RevealInfo revealInfo) {
            circularRevealWidget.setRevealInfo(revealInfo);
        }
    }

    public static class CircularRevealScrimColorProperty extends Property<CircularRevealWidget, Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CircularRevealScrimColorProperty f32512a = new CircularRevealScrimColorProperty(Integer.class, "circularRevealScrimColor");

        @Override // android.util.Property
        public final Integer get(CircularRevealWidget circularRevealWidget) {
            return Integer.valueOf(circularRevealWidget.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        public final void set(CircularRevealWidget circularRevealWidget, Integer num) {
            circularRevealWidget.setCircularRevealScrimColor(num.intValue());
        }
    }

    void a();

    void b();

    int getCircularRevealScrimColor();

    RevealInfo getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i2);

    void setRevealInfo(RevealInfo revealInfo);

    public static class RevealInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f32513a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f32514b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f32515c;

        public RevealInfo(float f2, float f3, float f4) {
            this.f32513a = f2;
            this.f32514b = f3;
            this.f32515c = f4;
        }

        public RevealInfo(RevealInfo revealInfo) {
            this(revealInfo.f32513a, revealInfo.f32514b, revealInfo.f32515c);
        }
    }
}
