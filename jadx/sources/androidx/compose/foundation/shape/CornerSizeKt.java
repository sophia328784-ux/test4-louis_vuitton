package androidx.compose.foundation.shape;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class CornerSizeKt {
    public static final CornerSize a(int i2) {
        return new PercentCornerSize(i2);
    }

    public static final CornerSize b(float f2) {
        return new DpCornerSize(f2, null);
    }
}
