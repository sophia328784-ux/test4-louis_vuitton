package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BeyondBoundsLayoutKt {
    public static final Object a(FocusTargetNode focusTargetNode, int i2, Function1 function1) {
        Modifier.Node nodeB;
        BeyondBoundsLayout beyondBoundsLayoutL2;
        int i3;
        NodeChain nodeChain;
        if (!focusTargetNode.f8608b.o) {
            InlineClassHelperKt.c("visitAncestors called on an unattached node");
        }
        Modifier.Node node = focusTargetNode.f8608b.f8611f;
        LayoutNode layoutNodeF = DelegatableNodeKt.f(focusTargetNode);
        loop0: while (true) {
            if (layoutNodeF == null) {
                nodeB = null;
                break;
            }
            if ((layoutNodeF.H.f9774f.f8610e & 1024) != 0) {
                while (node != null) {
                    if ((node.d & 1024) != 0) {
                        nodeB = node;
                        MutableVector mutableVector = null;
                        while (nodeB != null) {
                            if (nodeB instanceof FocusTargetNode) {
                                break loop0;
                            }
                            if ((nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                                int i4 = 0;
                                for (Modifier.Node node2 = ((DelegatingNode) nodeB).q; node2 != null; node2 = node2.g) {
                                    if ((node2.d & 1024) != 0) {
                                        i4++;
                                        if (i4 == 1) {
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
                                if (i4 == 1) {
                                }
                            }
                            nodeB = DelegatableNodeKt.b(mutableVector);
                        }
                    }
                    node = node.f8611f;
                }
            }
            layoutNodeF = layoutNodeF.O();
            node = (layoutNodeF == null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
        }
        FocusTargetNode focusTargetNode2 = (FocusTargetNode) nodeB;
        if ((focusTargetNode2 == null || !Intrinsics.c(focusTargetNode2.l2(), focusTargetNode.l2())) && (beyondBoundsLayoutL2 = focusTargetNode.l2()) != null) {
            FocusDirection.f8731b.getClass();
            if (i2 == FocusDirection.g) {
                BeyondBoundsLayout.LayoutDirection.f9437a.getClass();
                i3 = BeyondBoundsLayout.LayoutDirection.f9441f;
            } else if (i2 == FocusDirection.f8735h) {
                BeyondBoundsLayout.LayoutDirection.f9437a.getClass();
                i3 = BeyondBoundsLayout.LayoutDirection.g;
            } else if (i2 == FocusDirection.f8733e) {
                BeyondBoundsLayout.LayoutDirection.f9437a.getClass();
                i3 = BeyondBoundsLayout.LayoutDirection.d;
            } else if (i2 == FocusDirection.f8734f) {
                BeyondBoundsLayout.LayoutDirection.f9437a.getClass();
                i3 = BeyondBoundsLayout.LayoutDirection.f9440e;
            } else if (i2 == FocusDirection.f8732c) {
                BeyondBoundsLayout.LayoutDirection.f9437a.getClass();
                i3 = BeyondBoundsLayout.LayoutDirection.f9439c;
            } else if (i2 == FocusDirection.d) {
                BeyondBoundsLayout.LayoutDirection.f9437a.getClass();
                i3 = BeyondBoundsLayout.LayoutDirection.f9438b;
            } else {
                md.k("Unsupported direction for beyond bounds layout");
            }
            return beyondBoundsLayoutL2.h0(i3, function1);
        }
        return null;
    }
}
