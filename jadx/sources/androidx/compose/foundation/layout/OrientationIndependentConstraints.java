package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0081@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/layout/OrientationIndependentConstraints;", "", "value", "Landroidx/compose/ui/unit/Constraints;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public abstract class OrientationIndependentConstraints {
    public static long a(long j2, LayoutOrientation layoutOrientation) {
        LayoutOrientation layoutOrientation2 = LayoutOrientation.Horizontal;
        return ConstraintsKt.a(layoutOrientation == layoutOrientation2 ? Constraints.j(j2) : Constraints.i(j2), layoutOrientation == layoutOrientation2 ? Constraints.h(j2) : Constraints.g(j2), layoutOrientation == layoutOrientation2 ? Constraints.i(j2) : Constraints.j(j2), layoutOrientation == layoutOrientation2 ? Constraints.g(j2) : Constraints.h(j2));
    }

    public static long b(int i2, long j2) {
        return ConstraintsKt.a(0, Constraints.h(j2), (i2 & 4) != 0 ? Constraints.i(j2) : 0, Constraints.g(j2));
    }

    public static final long c(long j2, LayoutOrientation layoutOrientation) {
        return layoutOrientation == LayoutOrientation.Horizontal ? ConstraintsKt.a(Constraints.j(j2), Constraints.h(j2), Constraints.i(j2), Constraints.g(j2)) : ConstraintsKt.a(Constraints.i(j2), Constraints.g(j2), Constraints.j(j2), Constraints.h(j2));
    }
}
