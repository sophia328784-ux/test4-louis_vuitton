package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ParentDataModifierNode;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/layout/LayoutWeightNode;", "Landroidx/compose/ui/node/ParentDataModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "", "weight", "", "fill", "<init>", "(FZ)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LayoutWeightNode extends Modifier.Node implements ParentDataModifierNode {
    public float p;
    public boolean q;

    public LayoutWeightNode(float f2, boolean z) {
        this.p = f2;
        this.q = z;
    }

    @Override // androidx.compose.ui.node.ParentDataModifierNode
    public final Object B(Density density, Object obj) {
        RowColumnParentData rowColumnParentData = obj instanceof RowColumnParentData ? (RowColumnParentData) obj : null;
        if (rowColumnParentData == null) {
            rowColumnParentData = new RowColumnParentData(Call.Parameters.DEFAULT_CAMERA_ZOOM, false, null, null, 15, null);
        }
        rowColumnParentData.f5034a = this.p;
        rowColumnParentData.f5035b = this.q;
        return rowColumnParentData;
    }
}
