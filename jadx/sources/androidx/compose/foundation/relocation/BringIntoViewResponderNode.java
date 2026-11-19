package androidx.compose.foundation.relocation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import defpackage.q;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/relocation/BringIntoViewModifierNode;", "Landroidx/compose/ui/node/LayoutAwareModifierNode;", "Landroidx/compose/foundation/relocation/BringIntoViewResponder;", "responder", "<init>", "(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BringIntoViewResponderNode extends Modifier.Node implements BringIntoViewModifierNode, LayoutAwareModifierNode {
    public final BringIntoViewResponder p;
    public boolean q;

    public BringIntoViewResponderNode(BringIntoViewResponder bringIntoViewResponder) {
        this.p = bringIntoViewResponder;
    }

    public static final Rect h2(BringIntoViewResponderNode bringIntoViewResponderNode, NodeCoordinator nodeCoordinator, Function0 function0) {
        Rect rect;
        if (bringIntoViewResponderNode.o && bringIntoViewResponderNode.q) {
            NodeCoordinator nodeCoordinatorE = DelegatableNodeKt.e(bringIntoViewResponderNode);
            if (!nodeCoordinator.p1().o) {
                nodeCoordinator = null;
            }
            if (nodeCoordinator != null && (rect = (Rect) function0.mo47invoke()) != null) {
                return rect.i(nodeCoordinatorE.L(nodeCoordinator, false).d());
            }
        }
        return null;
    }

    @Override // androidx.compose.ui.relocation.BringIntoViewModifierNode
    public final Object U1(NodeCoordinator nodeCoordinator, Function0 function0, ContinuationImpl continuationImpl) {
        Object objD = CoroutineScopeKt.d(new BringIntoViewResponderNode$bringIntoView$2(this, nodeCoordinator, function0, new q(this, nodeCoordinator, function0, 18), null), continuationImpl);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final void h(LayoutCoordinates layoutCoordinates) {
        this.q = true;
    }
}
