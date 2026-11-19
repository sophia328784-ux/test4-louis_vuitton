package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\tB\u001d\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/FocusedBoundsObserverNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/TraversableNode;", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "", "onPositioned", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "TraverseKey", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FocusedBoundsObserverNode extends Modifier.Node implements TraversableNode {
    public static final TraverseKey r = new TraverseKey(null);
    public final Function1 p;
    public final TraverseKey q = r;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/FocusedBoundsObserverNode$TraverseKey;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class TraverseKey {
        public TraverseKey(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public FocusedBoundsObserverNode(Function1<? super LayoutCoordinates, Unit> function1) {
        this.p = function1;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    /* JADX INFO: renamed from: M */
    public final Object getR() {
        return this.q;
    }

    public final void h2(LayoutCoordinates layoutCoordinates) {
        this.p.invoke(layoutCoordinates);
        FocusedBoundsObserverNode focusedBoundsObserverNode = (FocusedBoundsObserverNode) TraversableNodeKt.b(this);
        if (focusedBoundsObserverNode != null) {
            focusedBoundsObserverNode.h2(layoutCoordinates);
        }
    }
}
