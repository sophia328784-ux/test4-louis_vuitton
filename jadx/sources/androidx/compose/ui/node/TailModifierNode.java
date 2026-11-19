package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/node/TailModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TailModifierNode extends Modifier.Node {
    public boolean p;

    public TailModifierNode() {
        this.f8610e = 0;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        this.p = true;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        this.p = false;
    }

    public final String toString() {
        return "<tail>";
    }
}
