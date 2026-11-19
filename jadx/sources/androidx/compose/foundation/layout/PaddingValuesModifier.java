package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import defpackage.j40;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/layout/PaddingValuesModifier;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/foundation/layout/PaddingValues;", "paddingValues", "<init>", "(Landroidx/compose/foundation/layout/PaddingValues;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class PaddingValuesModifier extends Modifier.Node implements LayoutModifierNode {
    public PaddingValues p;

    public PaddingValuesModifier(PaddingValues paddingValues) {
        this.p = paddingValues;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        float fB = this.p.b(measureScope.getF9469c());
        float f5031b = this.p.getF5031b();
        float fC = this.p.c(measureScope.getF9469c());
        float d = this.p.getD();
        if (!((Dp.a(fB, Call.Parameters.DEFAULT_CAMERA_ZOOM) >= 0) & (Dp.a(f5031b, Call.Parameters.DEFAULT_CAMERA_ZOOM) >= 0) & (Dp.a(fC, Call.Parameters.DEFAULT_CAMERA_ZOOM) >= 0) & (Dp.a(d, Call.Parameters.DEFAULT_CAMERA_ZOOM) >= 0))) {
            InlineClassHelperKt.a("Padding must be non-negative");
        }
        int iB0 = measureScope.B0(fB);
        int iB1 = measureScope.B0(fC) + iB0;
        int iB2 = measureScope.B0(f5031b);
        int iB3 = measureScope.B0(d) + iB2;
        Placeable placeableT = measurable.T(ConstraintsKt.i(-iB1, -iB3, j2));
        return measureScope.V0(ConstraintsKt.g(placeableT.f9548b + iB1, j2), ConstraintsKt.f(placeableT.f9549c + iB3, j2), MapsKt.c(), new j40(placeableT, iB0, iB2, 2));
    }
}
