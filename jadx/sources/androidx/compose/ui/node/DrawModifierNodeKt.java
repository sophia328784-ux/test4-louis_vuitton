package androidx.compose.ui.node;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DrawModifierNodeKt {
    public static final void a(DrawModifierNode drawModifierNode) {
        if (drawModifierNode.getF8608b().o) {
            DelegatableNodeKt.d(drawModifierNode, 1).H1();
        }
    }
}
