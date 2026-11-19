package androidx.compose.ui.layout;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class RulerKt {
    /* JADX WARN: Code duplicated, block: B:11:0x001c  */
    public static final float a(Placeable.PlacementScope placementScope, boolean z, Ruler[] rulerArr, float f2) {
        float f3 = Float.NaN;
        for (Ruler ruler : rulerArr) {
            float fE = placementScope.e(ruler);
            if (Float.isNaN(f3)) {
                f3 = fE;
            } else if (z == (fE > f3)) {
                f3 = fE;
            }
        }
        return Float.isNaN(f3) ? f2 : f3;
    }
}
