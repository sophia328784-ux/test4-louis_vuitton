package androidx.compose.ui.relocation;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BringIntoViewModifierNodeKt {
    public static final Object a(DelegatableNode delegatableNode, final Function0 function0, ContinuationImpl continuationImpl) {
        Object obj;
        final NodeCoordinator nodeCoordinatorE;
        Object objU1;
        NodeChain nodeChain;
        if (!delegatableNode.getF8608b().o) {
            return Unit.f71739a;
        }
        if (!delegatableNode.getF8608b().o) {
            InlineClassHelperKt.c("visitAncestors called on an unattached node");
        }
        Modifier.Node node = delegatableNode.getF8608b().f8611f;
        LayoutNode layoutNodeF = DelegatableNodeKt.f(delegatableNode);
        loop0: while (true) {
            obj = null;
            if (layoutNodeF == null) {
                break;
            }
            if ((layoutNodeF.H.f9774f.f8610e & 524288) != 0) {
                while (node != null) {
                    if ((node.d & 524288) != 0) {
                        Modifier.Node nodeB = node;
                        MutableVector mutableVector = null;
                        while (nodeB != null) {
                            if (nodeB instanceof BringIntoViewModifierNode) {
                                obj = nodeB;
                                break loop0;
                            }
                            if ((nodeB.d & 524288) != 0 && (nodeB instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node node2 = ((DelegatingNode) nodeB).q; node2 != null; node2 = node2.g) {
                                    if ((node2.d & 524288) != 0) {
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
                    }
                    node = node.f8611f;
                }
            }
            layoutNodeF = layoutNodeF.O();
            node = (layoutNodeF == null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
        }
        BringIntoViewModifierNode bringIntoViewModifierNode = (BringIntoViewModifierNode) obj;
        return (bringIntoViewModifierNode != null && (objU1 = bringIntoViewModifierNode.U1((nodeCoordinatorE = DelegatableNodeKt.e(delegatableNode)), new Function0<Rect>() { // from class: androidx.compose.ui.relocation.BringIntoViewModifierNodeKt$bringIntoView$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Rect rect;
                Function0 function1 = function0;
                if (function1 != null && (rect = (Rect) function1.mo47invoke()) != null) {
                    return rect;
                }
                NodeCoordinator nodeCoordinator = nodeCoordinatorE;
                if (!nodeCoordinator.p1().o) {
                    nodeCoordinator = null;
                }
                if (nodeCoordinator != null) {
                    return SizeKt.b(IntSizeKt.d(nodeCoordinator.d));
                }
                return null;
            }
        }, continuationImpl)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? objU1 : Unit.f71739a;
    }
}
