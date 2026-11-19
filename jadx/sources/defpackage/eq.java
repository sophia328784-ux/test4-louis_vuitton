package defpackage;

import android.graphics.Insets;
import android.view.WindowInsetsAnimation;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class eq {
    public static /* synthetic */ WindowInsetsAnimation.Bounds a(Insets insets, Insets insets2) {
        return new WindowInsetsAnimation.Bounds(insets, insets2);
    }

    public static /* synthetic */ WindowInsetsAnimation b(int i2, Interpolator interpolator, long j2) {
        return new WindowInsetsAnimation(i2, interpolator, j2);
    }

    public static /* synthetic */ AccessibilityEvent c() {
        return new AccessibilityEvent(16384);
    }

    public static /* synthetic */ void d() {
    }
}
