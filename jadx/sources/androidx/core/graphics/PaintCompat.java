package androidx.core.graphics;

import com.airbnb.lottie.animation.LPaint;

/* JADX INFO: loaded from: classes.dex */
public abstract class PaintCompat {
    public static void a(LPaint lPaint, BlendModeCompat blendModeCompat) {
        lPaint.setBlendMode(blendModeCompat != null ? BlendModeUtils$Api29Impl.a(blendModeCompat) : null);
    }
}
