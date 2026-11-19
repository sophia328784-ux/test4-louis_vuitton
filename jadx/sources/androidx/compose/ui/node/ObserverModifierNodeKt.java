package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ObserverModifierNodeKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(Modifier.Node node, Function0 function0) {
        ObserverNodeOwnerScope observerNodeOwnerScope = node.f8612h;
        if (observerNodeOwnerScope == null) {
            observerNodeOwnerScope = new ObserverNodeOwnerScope((ObserverModifierNode) node);
            node.f8612h = observerNodeOwnerScope;
        }
        OwnerSnapshotObserver snapshotObserver = DelegatableNodeKt.g(node).getSnapshotObserver();
        ObserverNodeOwnerScope.f9806c.getClass();
        snapshotObserver.f9812a.e(observerNodeOwnerScope, ObserverNodeOwnerScope.d, function0);
    }
}
