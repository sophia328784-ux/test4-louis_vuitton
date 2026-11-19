package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B7\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/layout/PaddingNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/unit/Dp;", "start", "top", "end", "bottom", "", "rtlAware", "<init>", "(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class PaddingNode extends Modifier.Node implements LayoutModifierNode {
    public float p;
    public float q;
    public float r;
    public float s;
    public boolean t;

    /* JADX WARN: Illegal instructions before constructor call */
    public PaddingNode(float f2, float f3, float f4, float f5, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        float f6;
        float f7;
        float f8;
        float f9;
        if ((i2 & 1) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f6 = 0.0f;
        } else {
            f6 = f2;
        }
        if ((i2 & 2) != 0) {
            Dp.Companion companion2 = Dp.f11004c;
            f7 = 0.0f;
        } else {
            f7 = f3;
        }
        if ((i2 & 4) != 0) {
            Dp.Companion companion3 = Dp.f11004c;
            f8 = 0.0f;
        } else {
            f8 = f4;
        }
        if ((i2 & 8) != 0) {
            Dp.Companion companion4 = Dp.f11004c;
            f9 = 0.0f;
        } else {
            f9 = f5;
        }
        this(f6, f7, f8, f9, z, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        int iB0 = measureScope.B0(this.r) + measureScope.B0(this.p);
        int iB1 = measureScope.B0(this.s) + measureScope.B0(this.q);
        Placeable placeableT = measurable.T(ConstraintsKt.i(-iB0, -iB1, j2));
        return measureScope.V0(ConstraintsKt.g(placeableT.f9548b + iB0, j2), ConstraintsKt.f(placeableT.f9549c + iB1, j2), MapsKt.c(), new d(this, placeableT, 2));
    }

    public PaddingNode(float f2, float f3, float f4, float f5, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this.p = f2;
        this.q = f3;
        this.r = f4;
        this.s = f5;
        this.t = z;
    }
}
