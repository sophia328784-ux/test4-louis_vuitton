package androidx.compose.animation.core;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class MonoSplineKt {
    public static final float a(float f2, float f3, float f4, float f5, float f6, float f7) {
        float f8 = f3 * f3;
        return (((((f6 + f7) * 3.0f) * f8) + (f6 - (((2.0f * f6) + f7) * (2.0f * f3)))) * f2) - ((f4 - f5) * ((f3 - f8) * 6.0f));
    }
}
