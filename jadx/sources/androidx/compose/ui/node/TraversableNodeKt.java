package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TraversableNodeKt {
    public static final TraversableNode a(Modifier.Node node, Object obj) {
        NodeChain nodeChain;
        if (!node.f8608b.o) {
            InlineClassHelperKt.c("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = node.f8608b.f8611f;
        LayoutNode layoutNodeF = DelegatableNodeKt.f(node);
        while (layoutNodeF != null) {
            if ((layoutNodeF.H.f9774f.f8610e & 262144) != 0) {
                while (node2 != null) {
                    if ((node2.d & 262144) != 0) {
                        Modifier.Node nodeB = node2;
                        MutableVector mutableVector = null;
                        while (nodeB != null) {
                            if (nodeB instanceof TraversableNode) {
                                TraversableNode traversableNode = (TraversableNode) nodeB;
                                if (Intrinsics.c(obj, traversableNode.getR())) {
                                    return traversableNode;
                                }
                            }
                            if ((nodeB.d & 262144) != 0 && (nodeB instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node node3 = ((DelegatingNode) nodeB).q; node3 != null; node3 = node3.g) {
                                    if ((node3.d & 262144) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            nodeB = node3;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodeB != null) {
                                                mutableVector.b(nodeB);
                                                nodeB = null;
                                            }
                                            mutableVector.b(node3);
                                        }
                                    }
                                }
                                if (i2 == 1) {
                                }
                            }
                            nodeB = DelegatableNodeKt.b(mutableVector);
                        }
                    }
                    node2 = node2.f8611f;
                }
            }
            layoutNodeF = layoutNodeF.O();
            node2 = (layoutNodeF == null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final TraversableNode b(TraversableNode traversableNode) {
        NodeChain nodeChain;
        Modifier.Node node = (Modifier.Node) traversableNode;
        if (!node.f8608b.o) {
            InlineClassHelperKt.c("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = node.f8608b.f8611f;
        LayoutNode layoutNodeF = DelegatableNodeKt.f(traversableNode);
        while (layoutNodeF != null) {
            if ((layoutNodeF.H.f9774f.f8610e & 262144) != 0) {
                while (node2 != null) {
                    if ((node2.d & 262144) != 0) {
                        Modifier.Node nodeB = node2;
                        MutableVector mutableVector = null;
                        while (nodeB != null) {
                            if (nodeB instanceof TraversableNode) {
                                TraversableNode traversableNode2 = (TraversableNode) nodeB;
                                if (Intrinsics.c(traversableNode.getR(), traversableNode2.getR()) && traversableNode.getClass() == traversableNode2.getClass()) {
                                    return traversableNode2;
                                }
                            }
                            if ((nodeB.d & 262144) != 0 && (nodeB instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node node3 = ((DelegatingNode) nodeB).q; node3 != null; node3 = node3.g) {
                                    if ((node3.d & 262144) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            nodeB = node3;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodeB != null) {
                                                mutableVector.b(nodeB);
                                                nodeB = null;
                                            }
                                            mutableVector.b(node3);
                                        }
                                    }
                                }
                                if (i2 == 1) {
                                }
                            }
                            nodeB = DelegatableNodeKt.b(mutableVector);
                        }
                    }
                    node2 = node2.f8611f;
                }
            }
            layoutNodeF = layoutNodeF.O();
            node2 = (layoutNodeF == null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v6 */
    public static final void c(DelegatableNode delegatableNode, Object obj, Function1 function1) {
        NodeChain nodeChain;
        if (!delegatableNode.getF8608b().o) {
            InlineClassHelperKt.c("visitAncestors called on an unattached node");
        }
        Modifier.Node node = delegatableNode.getF8608b().f8611f;
        LayoutNode layoutNodeF = DelegatableNodeKt.f(delegatableNode);
        while (layoutNodeF != null) {
            if ((layoutNodeF.H.f9774f.f8610e & 262144) != 0) {
                while (node != null) {
                    if ((node.d & 262144) != 0) {
                        ?? B = node;
                        ?? mutableVector = 0;
                        while (B != 0) {
                            if (B instanceof TraversableNode) {
                                TraversableNode traversableNode = (TraversableNode) B;
                                if (!(Intrinsics.c(obj, traversableNode.getR()) ? ((Boolean) function1.invoke(traversableNode)).booleanValue() : true)) {
                                    return;
                                }
                            } else if ((B.d & 262144) != 0 && (B instanceof DelegatingNode)) {
                                Modifier.Node node2 = ((DelegatingNode) B).q;
                                int i2 = 0;
                                while (node2 != null) {
                                    if ((node2.d & 262144) != 0) {
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
                    node = node.f8611f;
                }
            }
            layoutNodeF = layoutNodeF.O();
            node = (layoutNodeF == null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.TraversableNode, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v0, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v7 */
    public static final void d(TraversableNode traversableNode, Function1 function1) {
        NodeChain nodeChain;
        Modifier.Node node = (Modifier.Node) traversableNode;
        if (!node.f8608b.o) {
            InlineClassHelperKt.c("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = node.f8608b.f8611f;
        LayoutNode layoutNodeF = DelegatableNodeKt.f(traversableNode);
        while (layoutNodeF != null) {
            if ((layoutNodeF.H.f9774f.f8610e & 262144) != 0) {
                while (node2 != null) {
                    if ((node2.d & 262144) != 0) {
                        ?? B = node2;
                        ?? mutableVector = 0;
                        while (B != 0) {
                            boolean zBooleanValue = true;
                            if (B instanceof TraversableNode) {
                                TraversableNode traversableNode2 = (TraversableNode) B;
                                if (Intrinsics.c(traversableNode.getR(), traversableNode2.getR()) && traversableNode.getClass() == traversableNode2.getClass()) {
                                    zBooleanValue = ((Boolean) function1.invoke(traversableNode2)).booleanValue();
                                }
                                if (!zBooleanValue) {
                                    return;
                                }
                            } else if ((B.d & 262144) != 0 && (B instanceof DelegatingNode)) {
                                Modifier.Node node3 = ((DelegatingNode) B).q;
                                int i2 = 0;
                                while (node3 != null) {
                                    if ((node3.d & 262144) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            B = B;
                                            mutableVector = mutableVector;
                                            mutableVector = mutableVector;
                                            B = node3;
                                        } else {
                                            if (mutableVector == 0) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (B != 0) {
                                                mutableVector.b(B);
                                                B = 0;
                                            }
                                            mutableVector.b(node3);
                                        }
                                    } else {
                                        B = B;
                                        mutableVector = mutableVector;
                                    }
                                    node3 = node3.g;
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
                    node2 = node2.f8611f;
                }
            }
            layoutNodeF = layoutNodeF.O();
            node2 = (layoutNodeF == null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v8 */
    public static final void e(Modifier.Node node, String str, Function1 function1) {
        if (!node.f8608b.o) {
            InlineClassHelperKt.c("visitSubtreeIf called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node node2 = node.f8608b;
        Modifier.Node node3 = node2.g;
        if (node3 == null) {
            DelegatableNodeKt.a(mutableVector, node2);
        } else {
            mutableVector.b(node3);
        }
        while (true) {
            int i2 = mutableVector.d;
            if (i2 == 0) {
                return;
            }
            Modifier.Node node4 = (Modifier.Node) mutableVector.o(i2 - 1);
            if ((node4.f8610e & 262144) != 0) {
                Modifier.Node node5 = node4;
                while (true) {
                    if (node5 != null && node5.o) {
                        if ((node5.d & 262144) != 0) {
                            ?? B = node5;
                            ?? mutableVector2 = 0;
                            while (B != 0) {
                                if (B instanceof TraversableNode) {
                                    TraversableNode traversableNode = (TraversableNode) B;
                                    TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction = str.equals(traversableNode.getR()) ? (TraversableNode$Companion$TraverseDescendantsAction) function1.invoke(traversableNode) : TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                                    if (traversableNode$Companion$TraverseDescendantsAction != TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal) {
                                        if (traversableNode$Companion$TraverseDescendantsAction == TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal) {
                                            break;
                                        }
                                    } else {
                                        return;
                                    }
                                } else if ((B.d & 262144) != 0 && (B instanceof DelegatingNode)) {
                                    Modifier.Node node6 = ((DelegatingNode) B).q;
                                    int i3 = 0;
                                    B = B;
                                    mutableVector2 = mutableVector2;
                                    while (node6 != null) {
                                        if ((node6.d & 262144) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                mutableVector2 = mutableVector2;
                                                B = node6;
                                            } else {
                                                if (mutableVector2 == 0) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (B != 0) {
                                                    mutableVector2.b(B);
                                                    B = 0;
                                                }
                                                mutableVector2.b(node6);
                                            }
                                        }
                                        node6 = node6.g;
                                        B = B;
                                        mutableVector2 = mutableVector2;
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                B = DelegatableNodeKt.b(mutableVector2);
                            }
                        }
                        node5 = node5.g;
                    }
                }
            }
            DelegatableNodeKt.a(mutableVector, node4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v9 */
    public static final void f(TraversableNode traversableNode, Function1 function1) {
        if (!traversableNode.getF8608b().o) {
            InlineClassHelperKt.c("visitSubtreeIf called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node node = traversableNode.getF8608b().g;
        if (node == null) {
            DelegatableNodeKt.a(mutableVector, traversableNode.getF8608b());
        } else {
            mutableVector.b(node);
        }
        while (true) {
            int i2 = mutableVector.d;
            if (i2 == 0) {
                return;
            }
            Modifier.Node node2 = (Modifier.Node) mutableVector.o(i2 - 1);
            if ((node2.f8610e & 262144) != 0) {
                Modifier.Node node3 = node2;
                while (true) {
                    if (node3 != null && node3.o) {
                        if ((node3.d & 262144) != 0) {
                            ?? B = node3;
                            ?? mutableVector2 = 0;
                            while (B != 0) {
                                if (B instanceof TraversableNode) {
                                    TraversableNode traversableNode2 = (TraversableNode) B;
                                    TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction = (Intrinsics.c(traversableNode.getR(), traversableNode2.getR()) && traversableNode.getClass() == traversableNode2.getClass()) ? (TraversableNode$Companion$TraverseDescendantsAction) function1.invoke(traversableNode2) : TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                                    if (traversableNode$Companion$TraverseDescendantsAction != TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal) {
                                        if (traversableNode$Companion$TraverseDescendantsAction == TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal) {
                                            break;
                                        }
                                    } else {
                                        return;
                                    }
                                } else if ((B.d & 262144) != 0 && (B instanceof DelegatingNode)) {
                                    Modifier.Node node4 = ((DelegatingNode) B).q;
                                    int i3 = 0;
                                    B = B;
                                    mutableVector2 = mutableVector2;
                                    while (node4 != null) {
                                        if ((node4.d & 262144) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                mutableVector2 = mutableVector2;
                                                B = node4;
                                            } else {
                                                if (mutableVector2 == 0) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (B != 0) {
                                                    mutableVector2.b(B);
                                                    B = 0;
                                                }
                                                mutableVector2.b(node4);
                                            }
                                        }
                                        node4 = node4.g;
                                        B = B;
                                        mutableVector2 = mutableVector2;
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                B = DelegatableNodeKt.b(mutableVector2);
                            }
                        }
                        node3 = node3.g;
                    }
                }
            }
            DelegatableNodeKt.a(mutableVector, node2);
        }
    }
}
