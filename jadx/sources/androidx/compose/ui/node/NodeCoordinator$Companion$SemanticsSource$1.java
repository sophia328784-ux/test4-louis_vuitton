package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/ui/node/NodeCoordinator$Companion$SemanticsSource$1", "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NodeCoordinator$Companion$SemanticsSource$1 implements NodeCoordinator.HitTestSource {
    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final int a() {
        return 8;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final void b(LayoutNode layoutNode, long j2, HitTestResult hitTestResult, int i2, boolean z) {
        layoutNode.T(j2, hitTestResult, z);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean c(Modifier.Node node) {
        return false;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean d(HitTestResult hitTestResult, LayoutNode layoutNode) {
        return false;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean e(LayoutNode layoutNode) {
        SemanticsConfiguration semanticsConfigurationI = layoutNode.i();
        boolean z = false;
        if (semanticsConfigurationI != null && semanticsConfigurationI.f10315f) {
            z = true;
        }
        return !z;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean f(Modifier.Node node) {
        return SemanticsOwnerKt.f(SemanticsNodeKt.a(DelegatableNodeKt.f(node), false));
    }
}
