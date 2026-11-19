package androidx.compose.ui.semantics;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SemanticsNodeKt {
    /* JADX WARN: Code duplicated, block: B:35:0x0062 A[LOOP:0: B:4:0x000b->B:35:0x0062, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:43:0x0065 A[EDGE_INSN: B:43:0x0065->B:36:0x0065 BREAK  A[LOOP:0: B:4:0x000b->B:35:0x0062], SYNTHETIC] */
    public static final SemanticsNode a(LayoutNode layoutNode, boolean z) {
        Modifier.Node node = layoutNode.H.f9774f;
        Object obj = null;
        if ((node.f8610e & 8) != 0) {
            loop0: while (node != null) {
                if ((node.d & 8) == 0) {
                    if ((node.f8610e & 8) != 0) {
                        break;
                        break;
                    }
                    node = node.g;
                } else {
                    Modifier.Node nodeB = node;
                    MutableVector mutableVector = null;
                    while (nodeB != null) {
                        if (nodeB instanceof SemanticsModifierNode) {
                            obj = nodeB;
                            break loop0;
                        }
                        if ((nodeB.d & 8) != 0 && (nodeB instanceof DelegatingNode)) {
                            int i2 = 0;
                            for (Modifier.Node node2 = ((DelegatingNode) nodeB).q; node2 != null; node2 = node2.g) {
                                if ((node2.d & 8) != 0) {
                                    i2++;
                                    if (i2 == 1) {
                                        nodeB = node2;
                                    } else {
                                        if (mutableVector == null) {
                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (nodeB != null) {
                                            mutableVector.b(nodeB);
                                            nodeB = null;
                                        }
                                        mutableVector.b(node2);
                                    }
                                }
                            }
                            if (i2 == 1) {
                            }
                        }
                        nodeB = DelegatableNodeKt.b(mutableVector);
                    }
                    if ((node.f8610e & 8) != 0) {
                        break;
                    }
                    node = node.g;
                }
            }
        }
        obj.getClass();
        Modifier.Node f8608b = ((SemanticsModifierNode) obj).getF8608b();
        SemanticsConfiguration semanticsConfigurationI = layoutNode.i();
        if (semanticsConfigurationI == null) {
            semanticsConfigurationI = new SemanticsConfiguration();
        }
        return new SemanticsNode(f8608b, z, layoutNode, semanticsConfigurationI);
    }
}
