package androidx.compose.foundation.shape;

import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class RoundedCornerShapeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RoundedCornerShape f5846a;

    static {
        CornerSize cornerSizeA = CornerSizeKt.a(50);
        f5846a = new RoundedCornerShape(cornerSizeA, cornerSizeA, cornerSizeA, cornerSizeA);
    }

    public static final RoundedCornerShape a(float f2) {
        CornerSize cornerSizeB = CornerSizeKt.b(f2);
        return new RoundedCornerShape(cornerSizeB, cornerSizeB, cornerSizeB, cornerSizeB);
    }

    public static final RoundedCornerShape b(float f2, float f3, float f4, float f5) {
        return new RoundedCornerShape(CornerSizeKt.b(f2), CornerSizeKt.b(f3), CornerSizeKt.b(f4), CornerSizeKt.b(f5));
    }

    public static RoundedCornerShape c(float f2, float f3, float f4, float f5, int i2) {
        if ((i2 & 1) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f2 = 0.0f;
        }
        if ((i2 & 2) != 0) {
            Dp.Companion companion2 = Dp.f11004c;
            f3 = 0.0f;
        }
        if ((i2 & 4) != 0) {
            Dp.Companion companion3 = Dp.f11004c;
            f4 = 0.0f;
        }
        if ((i2 & 8) != 0) {
            Dp.Companion companion4 = Dp.f11004c;
            f5 = 0.0f;
        }
        return b(f2, f3, f4, f5);
    }
}
