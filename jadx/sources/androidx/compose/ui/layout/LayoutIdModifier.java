package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ParentDataModifierNode;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/layout/LayoutIdModifier;", "Landroidx/compose/ui/node/ParentDataModifierNode;", "Landroidx/compose/ui/layout/LayoutIdParentData;", "Landroidx/compose/ui/Modifier$Node;", "", "layoutId", "<init>", "(Ljava/lang/Object;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LayoutIdModifier extends Modifier.Node implements ParentDataModifierNode, LayoutIdParentData {
    public Object p;

    public LayoutIdModifier(Object obj) {
        this.p = obj;
    }

    @Override // androidx.compose.ui.node.ParentDataModifierNode
    public final Object B(Density density, Object obj) {
        return this;
    }

    @Override // androidx.compose.ui.layout.LayoutIdParentData
    /* JADX INFO: renamed from: S0, reason: from getter */
    public final Object getP() {
        return this.p;
    }
}
