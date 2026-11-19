package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ParentDataModifierNode;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/layout/HorizontalAlignNode;", "Landroidx/compose/ui/node/ParentDataModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/Alignment$Horizontal;", "horizontal", "<init>", "(Landroidx/compose/ui/Alignment$Horizontal;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HorizontalAlignNode extends Modifier.Node implements ParentDataModifierNode {
    public Alignment.Horizontal p;

    public HorizontalAlignNode(Alignment.Horizontal horizontal) {
        this.p = horizontal;
    }

    @Override // androidx.compose.ui.node.ParentDataModifierNode
    public final Object B(Density density, Object obj) {
        RowColumnParentData rowColumnParentData = obj instanceof RowColumnParentData ? (RowColumnParentData) obj : null;
        if (rowColumnParentData == null) {
            rowColumnParentData = new RowColumnParentData(Call.Parameters.DEFAULT_CAMERA_ZOOM, false, null, null, 15, null);
        }
        CrossAxisAlignment.Companion companion = CrossAxisAlignment.f4951a;
        Alignment.Horizontal horizontal = this.p;
        companion.getClass();
        rowColumnParentData.f5036c = new CrossAxisAlignment.HorizontalCrossAxisAlignment(horizontal);
        return rowColumnParentData;
    }
}
