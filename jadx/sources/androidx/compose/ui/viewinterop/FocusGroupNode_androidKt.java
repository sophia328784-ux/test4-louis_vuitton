package androidx.compose.ui.viewinterop;

import android.view.View;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import defpackage.md;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class FocusGroupNode_androidKt {
    public static final View a(Modifier.Node node) {
        AndroidViewHolder androidViewHolder = DelegatableNodeKt.f(node.f8608b).q;
        View interopView = androidViewHolder != null ? androidViewHolder.getView() : null;
        if (interopView != null) {
            return interopView;
        }
        md.k("Could not fetch interop view");
        return null;
    }
}
