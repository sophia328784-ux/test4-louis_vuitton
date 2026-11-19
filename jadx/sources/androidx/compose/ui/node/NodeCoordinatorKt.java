package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class NodeCoordinatorKt {
    public static final Modifier.Node a(DelegatableNode delegatableNode, int i2) {
        Modifier.Node node = delegatableNode.getF8608b().g;
        if (node == null || (node.f8610e & i2) == 0) {
            return null;
        }
        while (node != null) {
            int i3 = node.d;
            if ((i3 & 2) != 0) {
                return null;
            }
            if ((i3 & i2) != 0) {
                return node;
            }
            node = node.g;
        }
        return null;
    }
}
