package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Dp;
import defpackage.j40;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/material3/MinimumInteractiveModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "<init>", "()V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MinimumInteractiveModifierNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutModifierNode {
    public LinkedHashMap p;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        float f2 = ((Dp) CompositionLocalConsumerModifierNodeKt.a(this, InteractiveComponentSizeKt.f7013c)).f11006b;
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 = 0.0f;
        }
        Placeable placeableT = measurable.T(j2);
        boolean z = this.o && !Float.isNaN(f2) && Dp.a(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM) > 0;
        int iB0 = !Float.isNaN(f2) ? measureScope.B0(f2) : 0;
        int iMax = placeableT.f9548b;
        if (z) {
            iMax = Math.max(iMax, iB0);
        }
        int iMax2 = placeableT.f9549c;
        if (z) {
            iMax2 = Math.max(iMax2, iB0);
        }
        if (z) {
            LinkedHashMap linkedHashMap = this.p;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap(2);
                this.p = linkedHashMap;
            }
            VerticalAlignmentLine verticalAlignmentLine = InteractiveComponentSizeKt.f7012b;
            int iRound = Math.round((iB0 - placeableT.f9548b) / 2.0f);
            if (iRound < 0) {
                iRound = 0;
            }
            linkedHashMap.put(verticalAlignmentLine, Integer.valueOf(iRound));
            HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.f7011a;
            int iRound2 = Math.round((iB0 - placeableT.f9549c) / 2.0f);
            linkedHashMap.put(horizontalAlignmentLine, Integer.valueOf(iRound2 >= 0 ? iRound2 : 0));
        }
        Map mapC = this.p;
        if (mapC == null) {
            mapC = MapsKt.c();
        }
        return measureScope.V0(iMax, iMax2, mapC, new j40(iMax, iMax2, placeableT));
    }
}
