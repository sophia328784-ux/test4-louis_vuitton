package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/layout/Arrangement$Absolute$Left$1", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Arrangement$Absolute$Left$1 implements Arrangement.Horizontal {
    @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
    public final void c(Density density, int i2, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
        Arrangement.b(iArr, iArr2, false);
    }

    public final String toString() {
        return "AbsoluteArrangement#Left";
    }
}
