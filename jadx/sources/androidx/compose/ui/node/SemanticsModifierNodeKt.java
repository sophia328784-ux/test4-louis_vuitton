package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SemanticsModifierNodeKt {
    public static final Rect a(Modifier.Node node, boolean z, boolean z2) {
        if (!node.f8608b.o) {
            Rect.f8809e.getClass();
            return Rect.f8810f;
        }
        if (z) {
            return DelegatableNodeKt.d(node, 8).b2();
        }
        NodeCoordinator nodeCoordinatorD = DelegatableNodeKt.d(node, 8);
        return LayoutCoordinatesKt.c(nodeCoordinatorD).L(nodeCoordinatorD, z2);
    }

    public static final void b(SemanticsModifierNode semanticsModifierNode) {
        DelegatableNodeKt.f(semanticsModifierNode).Y();
    }
}
