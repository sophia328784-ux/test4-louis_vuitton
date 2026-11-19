package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1", "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NodeCoordinator$Companion$PointerInputSource$1 implements NodeCoordinator.HitTestSource {
    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final int a() {
        return 16;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final void b(LayoutNode layoutNode, long j2, HitTestResult hitTestResult, int i2, boolean z) {
        layoutNode.S(j2, hitTestResult, i2, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r8v0, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean c(Modifier.Node node) {
        ?? mutableVector = 0;
        while (node != 0) {
            if (node instanceof PointerInputModifierNode) {
                ((PointerInputModifierNode) node).m0();
            } else if ((node.d & 16) != 0 && (node instanceof DelegatingNode)) {
                Modifier.Node node2 = ((DelegatingNode) node).q;
                int i2 = 0;
                mutableVector = mutableVector;
                node = node;
                while (node2 != null) {
                    if ((node2.d & 16) != 0) {
                        i2++;
                        if (i2 == 1) {
                            mutableVector = mutableVector;
                            node = node2;
                        } else {
                            if (mutableVector == 0) {
                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                            }
                            if (node != 0) {
                                mutableVector.b(node);
                                node = 0;
                            }
                            mutableVector.b(node2);
                        }
                    }
                    node2 = node2.g;
                    mutableVector = mutableVector;
                    node = node;
                }
                if (i2 == 1) {
                }
            }
            node = DelegatableNodeKt.b(mutableVector);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean d(HitTestResult hitTestResult, LayoutNode layoutNode) {
        NodeCoordinator nodeCoordinator = layoutNode.H.d;
        nodeCoordinator.getClass();
        Modifier.Node nodeW1 = nodeCoordinator.w1(NodeKindKt.g(16));
        if (nodeW1 != null && nodeW1.o) {
            if (!nodeW1.f8608b.o) {
                InlineClassHelperKt.c("visitLocalDescendants called on an unattached node");
            }
            Modifier.Node node = nodeW1.f8608b;
            if ((node.f8610e & 16) != 0) {
                while (node != null) {
                    if ((node.d & 16) != 0) {
                        ?? B = node;
                        ?? mutableVector = 0;
                        while (B != 0) {
                            if (B instanceof PointerInputModifierNode) {
                                if (((PointerInputModifierNode) B).H1()) {
                                    hitTestResult.d = hitTestResult.f9667b.f3346b - 1;
                                    return true;
                                }
                            } else if ((B.d & 16) != 0 && (B instanceof DelegatingNode)) {
                                Modifier.Node node2 = ((DelegatingNode) B).q;
                                int i2 = 0;
                                while (node2 != null) {
                                    if ((node2.d & 16) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            B = B;
                                            mutableVector = mutableVector;
                                            mutableVector = mutableVector;
                                            B = node2;
                                        } else {
                                            if (mutableVector == 0) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (B != 0) {
                                                mutableVector.b(B);
                                                B = 0;
                                            }
                                            mutableVector.b(node2);
                                        }
                                    } else {
                                        B = B;
                                        mutableVector = mutableVector;
                                    }
                                    node2 = node2.g;
                                    B = B;
                                    mutableVector = mutableVector;
                                }
                                if (i2 == 1) {
                                    B = B;
                                    mutableVector = mutableVector;
                                } else {
                                    B = B;
                                    mutableVector = mutableVector;
                                }
                            }
                            B = DelegatableNodeKt.b(mutableVector);
                        }
                    }
                    node = node.g;
                }
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean e(LayoutNode layoutNode) {
        return true;
    }
}
