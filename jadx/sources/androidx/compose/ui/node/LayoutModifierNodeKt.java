package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LayoutModifierNodeKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(LayoutModifierNode layoutModifierNode, Function1 function1) {
        NodeCoordinator nodeCoordinator;
        if (((Modifier.Node) layoutModifierNode).f8608b.o && (nodeCoordinator = DelegatableNodeKt.d(layoutModifierNode, 2).t) != null) {
            nodeCoordinator.e2(function1, true);
        }
    }
}
