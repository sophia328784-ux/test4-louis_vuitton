package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import defpackage.a;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DelegatableNodeKt {
    public static final void a(MutableVector mutableVector, Modifier.Node node) {
        MutableVector mutableVectorR = f(node).R();
        int i2 = mutableVectorR.d - 1;
        Object[] objArr = mutableVectorR.f8165b;
        if (i2 < objArr.length) {
            while (i2 >= 0) {
                mutableVector.b(((LayoutNode) objArr[i2]).H.f9774f);
                i2--;
            }
        }
    }

    public static final Modifier.Node b(MutableVector mutableVector) {
        int i2;
        if (mutableVector == null || (i2 = mutableVector.d) == 0) {
            return null;
        }
        return (Modifier.Node) mutableVector.o(i2 - 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final LayoutModifierNode c(Modifier.Node node) {
        if ((node.d & 2) != 0) {
            if (node instanceof LayoutModifierNode) {
                return (LayoutModifierNode) node;
            }
            if (node instanceof DelegatingNode) {
                Modifier.Node node2 = ((DelegatingNode) node).q;
                while (node2 != 0) {
                    if (node2 instanceof LayoutModifierNode) {
                        return (LayoutModifierNode) node2;
                    }
                    node2 = (!(node2 instanceof DelegatingNode) || (node2.d & 2) == 0) ? node2.g : ((DelegatingNode) node2).q;
                }
            }
        }
        return null;
    }

    public static final NodeCoordinator d(DelegatableNode delegatableNode, int i2) {
        NodeCoordinator nodeCoordinator = delegatableNode.getF8608b().f8613i;
        nodeCoordinator.getClass();
        if (nodeCoordinator.p1() != delegatableNode || !NodeKindKt.g(i2)) {
            return nodeCoordinator;
        }
        NodeCoordinator nodeCoordinator2 = nodeCoordinator.t;
        nodeCoordinator2.getClass();
        return nodeCoordinator2;
    }

    public static final NodeCoordinator e(DelegatableNode delegatableNode) {
        if (!delegatableNode.getF8608b().o) {
            InlineClassHelperKt.c("Cannot get LayoutCoordinates, Modifier.Node is not attached.");
        }
        NodeCoordinator nodeCoordinatorD = d(delegatableNode, 2);
        if (!nodeCoordinatorD.p1().o) {
            InlineClassHelperKt.c("LayoutCoordinates is not attached.");
        }
        return nodeCoordinatorD;
    }

    public static final LayoutNode f(DelegatableNode delegatableNode) {
        NodeCoordinator nodeCoordinator = delegatableNode.getF8608b().f8613i;
        if (nodeCoordinator != null) {
            return nodeCoordinator.q;
        }
        throw a.s("Cannot obtain node coordinator. Is the Modifier.Node attached?");
    }

    public static final Owner g(DelegatableNode delegatableNode) {
        Owner owner = f(delegatableNode).p;
        if (owner != null) {
            return owner;
        }
        throw a.s("This node does not have an owner.");
    }
}
