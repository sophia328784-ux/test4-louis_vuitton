package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Constraints;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AspectRatioKt {
    public static final Modifier a(Modifier modifier, float f2, boolean z) {
        return modifier.o(new AspectRatioElement(f2, z, InspectableValueKt.f10100a));
    }

    public static final boolean b(int i2, int i3, long j2) {
        int iJ = Constraints.j(j2);
        if (i2 > Constraints.h(j2) || iJ > i2) {
            return false;
        }
        return i3 <= Constraints.g(j2) && Constraints.i(j2) <= i3;
    }
}
