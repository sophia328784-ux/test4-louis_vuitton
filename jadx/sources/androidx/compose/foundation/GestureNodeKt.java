package androidx.compose.foundation;

import androidx.compose.foundation.gestures.DragGestureNode;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class GestureNodeKt {
    public static final DelegatableNode a(DragGestureNode dragGestureNode) {
        return new GestureNode(dragGestureNode);
    }

    public static final GestureConnection b(DelegatingNode delegatingNode) {
        TraversableNode traversableNodeA = TraversableNodeKt.a(delegatingNode, GestureNode.q);
        GestureNode gestureNode = traversableNodeA instanceof GestureNode ? (GestureNode) traversableNodeA : null;
        if (gestureNode != null) {
            return gestureNode.p;
        }
        return null;
    }
}
