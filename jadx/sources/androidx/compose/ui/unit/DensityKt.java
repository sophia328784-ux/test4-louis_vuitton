package androidx.compose.ui.unit;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-unit"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DensityKt {
    public static final Density a(float f2, float f3) {
        return new DensityImpl(f2, f3);
    }

    public static Density b() {
        return new DensityImpl(1.0f, 1.0f);
    }
}
