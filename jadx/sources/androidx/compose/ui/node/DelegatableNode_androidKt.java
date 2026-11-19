package androidx.compose.ui.node;

import android.view.View;
import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DelegatableNode_androidKt {
    public static final View a(DelegatableNode delegatableNode) {
        if (!delegatableNode.getF8608b().o) {
            InlineClassHelperKt.c("Cannot get View because the Modifier node is not currently attached.");
        }
        return (View) LayoutNodeKt.a(DelegatableNodeKt.f(delegatableNode));
    }
}
