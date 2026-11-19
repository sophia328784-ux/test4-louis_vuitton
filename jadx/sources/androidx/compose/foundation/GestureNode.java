package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.TraversableNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\bB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/GestureNode;", "Landroidx/compose/ui/node/TraversableNode;", "Landroidx/compose/ui/node/DelegatableNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/foundation/GestureConnection;", "gestureConnection", "<init>", "(Landroidx/compose/foundation/GestureConnection;)V", "TraverseKey", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class GestureNode extends Modifier.Node implements TraversableNode, DelegatableNode {
    public static final TraverseKey q = new TraverseKey(null);
    public final GestureConnection p;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/GestureNode$TraverseKey;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class TraverseKey {
        public TraverseKey(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public GestureNode(GestureConnection gestureConnection) {
        this.p = gestureConnection;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    /* JADX INFO: renamed from: M */
    public final Object getR() {
        return q;
    }
}
