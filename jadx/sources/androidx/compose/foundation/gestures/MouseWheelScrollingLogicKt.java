package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class MouseWheelScrollingLogicKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f4632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f4633b;

    static {
        Dp.Companion companion = Dp.f11004c;
        f4632a = 6.0f;
        f4633b = 1.0f;
    }

    public static final boolean a(float f2) {
        return Float.isNaN(f2) || Math.abs(f2) < 0.5f;
    }
}
