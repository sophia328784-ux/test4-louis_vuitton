package androidx.compose.ui.node;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LayoutNodeLayoutDelegateKt {
    public static final boolean a(LayoutNode layoutNode) {
        if (layoutNode.f9694j == null) {
            return false;
        }
        LayoutNode layoutNodeO = layoutNode.O();
        return (layoutNodeO != null ? layoutNodeO.f9694j : null) == null || layoutNode.I.f9707b;
    }
}
