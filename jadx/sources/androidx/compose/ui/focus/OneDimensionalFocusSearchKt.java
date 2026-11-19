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
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class OneDimensionalFocusSearchKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8794a;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f8794a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0099 A[RETURN] */
    public static final boolean a(FocusTargetNode focusTargetNode, Function1 function1) {
        FocusStateImpl focusStateImplW = focusTargetNode.W();
        int[] iArr = WhenMappings.f8794a;
        int i2 = iArr[focusStateImplW.ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                return d(focusTargetNode, function1);
            }
            if (i2 != 4) {
                v40.g();
                return false;
            }
            if (!d(focusTargetNode, function1)) {
                if (!(focusTargetNode.j2().f8764b ? ((Boolean) ((FocusOwnerImpl$focusSearch$1) function1).invoke(focusTargetNode)).booleanValue() : false)) {
                    return false;
                }
            }
            return true;
        }
        FocusTargetNode focusTargetNodeC = FocusTraversalKt.c(focusTargetNode);
        if (focusTargetNodeC == null) {
            md.k("ActiveParent must have a focusedChild");
            return false;
        }
        int i3 = iArr[focusTargetNodeC.W().ordinal()];
        if (i3 == 1) {
            if (!a(focusTargetNodeC, function1)) {
                FocusDirection.f8731b.getClass();
                if (!c(focusTargetNode, focusTargetNodeC, FocusDirection.d, function1) && (!focusTargetNodeC.j2().f8764b || !((Boolean) ((FocusOwnerImpl$focusSearch$1) function1).invoke(focusTargetNodeC)).booleanValue())) {
                    return false;
                }
            }
            return true;
        }
        if (i3 == 2 || i3 == 3) {
            FocusDirection.f8731b.getClass();
            return c(focusTargetNode, focusTargetNodeC, FocusDirection.d, function1);
        }
        if (i3 != 4) {
            v40.g();
            return false;
        }
        md.k("ActiveParent must have a focusedChild");
        return false;
    }

    public static final boolean b(FocusTargetNode focusTargetNode, Function1 function1) {
        int i2 = WhenMappings.f8794a[focusTargetNode.W().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                return e(focusTargetNode, function1);
            }
            if (i2 == 4) {
                return focusTargetNode.j2().f8764b ? ((Boolean) ((FocusOwnerImpl$focusSearch$1) function1).invoke(focusTargetNode)).booleanValue() : e(focusTargetNode, function1);
            }
            v40.g();
            return false;
        }
        FocusTargetNode focusTargetNodeC = FocusTraversalKt.c(focusTargetNode);
        if (focusTargetNodeC == null) {
            md.k("ActiveParent must have a focusedChild");
            return false;
        }
        if (!b(focusTargetNodeC, function1)) {
            FocusDirection.f8731b.getClass();
            if (!c(focusTargetNode, focusTargetNodeC, FocusDirection.f8732c, function1)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean c(final FocusTargetNode focusTargetNode, final FocusTargetNode focusTargetNode2, final int i2, final Function1 function1) {
        if (f(focusTargetNode, focusTargetNode2, i2, function1)) {
            return true;
        }
        final FocusTargetNode focusTargetNodeG = DelegatableNodeKt.g(focusTargetNode).getFocusOwner().g();
        Boolean bool = (Boolean) BeyondBoundsLayoutKt.a(focusTargetNode, i2, new Function1<BeyondBoundsLayout.BeyondBoundsScope, Boolean>() { // from class: androidx.compose.ui.focus.OneDimensionalFocusSearchKt$generateAndSearchChildren$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                BeyondBoundsLayout.BeyondBoundsScope beyondBoundsScope = (BeyondBoundsLayout.BeyondBoundsScope) obj;
                FocusTargetNode focusTargetNode3 = focusTargetNode;
                if (focusTargetNodeG != DelegatableNodeKt.g(focusTargetNode3).getFocusOwner().g()) {
                    return Boolean.TRUE;
                }
                boolean zF = OneDimensionalFocusSearchKt.f(focusTargetNode3, focusTargetNode2, i2, function1);
                Boolean boolValueOf = Boolean.valueOf(zF);
                if (zF || !beyondBoundsScope.a()) {
                    return boolValueOf;
                }
                return null;
            }
        });
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public static final boolean d(FocusTargetNode focusTargetNode, Function1 function1) {
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16], 0);
        if (!focusTargetNode.f8608b.o) {
            InlineClassHelperKt.c("visitChildren called on an unattached node");
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node node = focusTargetNode.f8608b;
        Modifier.Node node2 = node.g;
        if (node2 == null) {
            DelegatableNodeKt.a(mutableVector2, node);
        } else {
            mutableVector2.b(node2);
        }
        while (true) {
            int i2 = mutableVector2.d;
            if (i2 == 0) {
                break;
            }
            Modifier.Node nodeB = (Modifier.Node) mutableVector2.o(i2 - 1);
            if ((nodeB.f8610e & 1024) == 0) {
                DelegatableNodeKt.a(mutableVector2, nodeB);
            } else {
                while (nodeB != null) {
                    if ((nodeB.d & 1024) != 0) {
                        MutableVector mutableVector3 = null;
                        while (nodeB != null) {
                            if (nodeB instanceof FocusTargetNode) {
                                mutableVector.b((FocusTargetNode) nodeB);
                            } else if ((nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                                int i3 = 0;
                                for (Modifier.Node node3 = ((DelegatingNode) nodeB).q; node3 != null; node3 = node3.g) {
                                    if ((node3.d & 1024) != 0) {
                                        i3++;
                                        if (i3 == 1) {
                                            nodeB = node3;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodeB != null) {
                                                mutableVector3.b(nodeB);
                                                nodeB = null;
                                            }
                                            mutableVector3.b(node3);
                                        }
                                    }
                                }
                                if (i3 == 1) {
                                }
                            }
                            nodeB = DelegatableNodeKt.b(mutableVector3);
                        }
                        break;
                    }
                    nodeB = nodeB.g;
                }
            }
        }
        mutableVector.r(FocusableChildrenComparator.f8793b);
        int i4 = mutableVector.d - 1;
        Object[] objArr = mutableVector.f8165b;
        if (i4 < objArr.length) {
            while (i4 >= 0) {
                FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArr[i4];
                if (FocusTraversalKt.d(focusTargetNode2) && a(focusTargetNode2, function1)) {
                    return true;
                }
                i4--;
            }
        }
        return false;
    }

    public static final boolean e(FocusTargetNode focusTargetNode, Function1 function1) {
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16], 0);
        if (!focusTargetNode.f8608b.o) {
            InlineClassHelperKt.c("visitChildren called on an unattached node");
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node node = focusTargetNode.f8608b;
        Modifier.Node node2 = node.g;
        if (node2 == null) {
            DelegatableNodeKt.a(mutableVector2, node);
        } else {
            mutableVector2.b(node2);
        }
        while (true) {
            int i2 = mutableVector2.d;
            if (i2 == 0) {
                break;
            }
            Modifier.Node nodeB = (Modifier.Node) mutableVector2.o(i2 - 1);
            if ((nodeB.f8610e & 1024) == 0) {
                DelegatableNodeKt.a(mutableVector2, nodeB);
            } else {
                while (nodeB != null) {
                    if ((nodeB.d & 1024) != 0) {
                        MutableVector mutableVector3 = null;
                        while (nodeB != null) {
                            if (nodeB instanceof FocusTargetNode) {
                                mutableVector.b((FocusTargetNode) nodeB);
                            } else if ((nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                                int i3 = 0;
                                for (Modifier.Node node3 = ((DelegatingNode) nodeB).q; node3 != null; node3 = node3.g) {
                                    if ((node3.d & 1024) != 0) {
                                        i3++;
                                        if (i3 == 1) {
                                            nodeB = node3;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodeB != null) {
                                                mutableVector3.b(nodeB);
                                                nodeB = null;
                                            }
                                            mutableVector3.b(node3);
                                        }
                                    }
                                }
                                if (i3 == 1) {
                                }
                            }
                            nodeB = DelegatableNodeKt.b(mutableVector3);
                        }
                        break;
                    }
                    nodeB = nodeB.g;
                }
            }
        }
        mutableVector.r(FocusableChildrenComparator.f8793b);
        Object[] objArr = mutableVector.f8165b;
        int i4 = mutableVector.d;
        for (int i5 = 0; i5 < i4; i5++) {
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArr[i5];
            if (FocusTraversalKt.d(focusTargetNode2) && b(focusTargetNode2, function1)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:126:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:156:0x0154 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x0191 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x012b  */
    /* JADX WARN: Code duplicated, block: B:87:0x013a  */
    /* JADX WARN: Code duplicated, block: B:89:0x0144 A[ADDED_TO_REGION, LOOP:6: B:89:0x0144->B:117:0x0191, LOOP_START, PHI: r12
      0x0144: PHI (r12v14 androidx.compose.ui.Modifier$Node) = (r12v9 androidx.compose.ui.Modifier$Node), (r12v15 androidx.compose.ui.Modifier$Node) binds: [B:88:0x0142, B:117:0x0191] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:90:0x0146  */
    /* JADX WARN: Code duplicated, block: B:92:0x014c  */
    /* JADX WARN: Code duplicated, block: B:94:0x0150  */
    /* JADX WARN: Code duplicated, block: B:97:0x0156  */
    public static final boolean f(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, int i2, Function1 function1) {
        Modifier.Node node;
        Modifier.Node node2;
        LayoutNode layoutNodeF;
        NodeChain nodeChain;
        Modifier.Node nodeB;
        MutableVector mutableVector;
        if (focusTargetNode.W() != FocusStateImpl.ActiveParent) {
            md.k("This function should only be used within a parent that has focus.");
            return false;
        }
        MutableVector mutableVector2 = new MutableVector(new FocusTargetNode[16], 0);
        if (!focusTargetNode.f8608b.o) {
            InlineClassHelperKt.c("visitChildren called on an unattached node");
        }
        MutableVector mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node node3 = focusTargetNode.f8608b;
        Modifier.Node node4 = node3.g;
        if (node4 == null) {
            DelegatableNodeKt.a(mutableVector3, node3);
        } else {
            mutableVector3.b(node4);
        }
        while (true) {
            int i3 = mutableVector3.d;
            node = null;
            if (i3 == 0) {
                break;
            }
            Modifier.Node nodeB2 = (Modifier.Node) mutableVector3.o(i3 - 1);
            if ((nodeB2.f8610e & 1024) == 0) {
                DelegatableNodeKt.a(mutableVector3, nodeB2);
            } else {
                while (nodeB2 != null) {
                    if ((nodeB2.d & 1024) != 0) {
                        MutableVector mutableVector4 = null;
                        while (nodeB2 != null) {
                            if (nodeB2 instanceof FocusTargetNode) {
                                mutableVector2.b((FocusTargetNode) nodeB2);
                            } else if ((nodeB2.d & 1024) != 0 && (nodeB2 instanceof DelegatingNode)) {
                                int i4 = 0;
                                for (Modifier.Node node5 = ((DelegatingNode) nodeB2).q; node5 != null; node5 = node5.g) {
                                    if ((node5.d & 1024) != 0) {
                                        i4++;
                                        if (i4 == 1) {
                                            nodeB2 = node5;
                                        } else {
                                            if (mutableVector4 == null) {
                                                mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodeB2 != null) {
                                                mutableVector4.b(nodeB2);
                                                nodeB2 = null;
                                            }
                                            mutableVector4.b(node5);
                                        }
                                    }
                                }
                                if (i4 == 1) {
                                }
                            }
                            nodeB2 = DelegatableNodeKt.b(mutableVector4);
                        }
                        break;
                    }
                    nodeB2 = nodeB2.g;
                }
            }
        }
        mutableVector2.r(FocusableChildrenComparator.f8793b);
        FocusDirection.f8731b.getClass();
        if (i2 != FocusDirection.f8732c) {
            if (i2 != FocusDirection.d) {
                md.k("This function should only be used for 1-D focus search");
                return false;
            }
            IntRange intRangeJ = RangesKt.j(0, mutableVector2.d);
            int i5 = intRangeJ.f71951b;
            int i6 = intRangeJ.f71952c;
            if (i5 <= i6) {
                boolean z = false;
                while (true) {
                    if (z) {
                        FocusTargetNode focusTargetNode3 = (FocusTargetNode) mutableVector2.f8165b[i6];
                        if (FocusTraversalKt.d(focusTargetNode3) && a(focusTargetNode3, function1)) {
                            return true;
                        }
                    }
                    if (Intrinsics.c(mutableVector2.f8165b[i6], focusTargetNode2)) {
                        z = true;
                    }
                    if (i6 == i5) {
                        break;
                    }
                    i6--;
                }
            }
            FocusDirection.f8731b.getClass();
            if (i2 != FocusDirection.f8732c) {
                if (!focusTargetNode.f8608b.o) {
                    InlineClassHelperKt.c("visitAncestors called on an unattached node");
                }
                node2 = focusTargetNode.f8608b.f8611f;
                layoutNodeF = DelegatableNodeKt.f(focusTargetNode);
                loop5: while (layoutNodeF != null) {
                    if ((layoutNodeF.H.f9774f.f8610e & 1024) != 0) {
                        while (node2 != null) {
                            if ((node2.d & 1024) != 0) {
                                nodeB = node2;
                                mutableVector = null;
                                while (nodeB != null) {
                                    if (nodeB instanceof FocusTargetNode) {
                                        node = nodeB;
                                        break loop5;
                                    }
                                    if ((nodeB.d & 1024) == 0) {
                                    }
                                    nodeB = DelegatableNodeKt.b(mutableVector);
                                }
                            }
                            node2 = node2.f8611f;
                        }
                    }
                    layoutNodeF = layoutNodeF.O();
                    if (layoutNodeF != null) {
                    }
                }
                if (node != null) {
                    return ((Boolean) ((FocusOwnerImpl$focusSearch$1) function1).invoke(focusTargetNode)).booleanValue();
                }
            }
            return false;
        }
        IntRange intRangeJ2 = RangesKt.j(0, mutableVector2.d);
        int i7 = intRangeJ2.f71951b;
        int i8 = intRangeJ2.f71952c;
        if (i7 <= i8) {
            boolean z2 = false;
            while (true) {
                if (z2) {
                    FocusTargetNode focusTargetNode4 = (FocusTargetNode) mutableVector2.f8165b[i7];
                    if (FocusTraversalKt.d(focusTargetNode4) && b(focusTargetNode4, function1)) {
                        return true;
                    }
                }
                if (Intrinsics.c(mutableVector2.f8165b[i7], focusTargetNode2)) {
                    z2 = true;
                }
                if (i7 == i8) {
                    break;
                }
                i7++;
            }
        }
        FocusDirection.f8731b.getClass();
        if (i2 != FocusDirection.f8732c && focusTargetNode.j2().f8764b) {
            if (!focusTargetNode.f8608b.o) {
                InlineClassHelperKt.c("visitAncestors called on an unattached node");
            }
            node2 = focusTargetNode.f8608b.f8611f;
            layoutNodeF = DelegatableNodeKt.f(focusTargetNode);
            loop5: while (layoutNodeF != null) {
                if ((layoutNodeF.H.f9774f.f8610e & 1024) != 0) {
                    while (node2 != null) {
                        if ((node2.d & 1024) != 0) {
                            nodeB = node2;
                            mutableVector = null;
                            while (nodeB != null) {
                                if (nodeB instanceof FocusTargetNode) {
                                    node = nodeB;
                                    break loop5;
                                }
                                if ((nodeB.d & 1024) == 0 && (nodeB instanceof DelegatingNode)) {
                                    int i9 = 0;
                                    for (Modifier.Node node6 = ((DelegatingNode) nodeB).q; node6 != null; node6 = node6.g) {
                                        if ((node6.d & 1024) != 0) {
                                            i9++;
                                            if (i9 == 1) {
                                                nodeB = node6;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodeB != null) {
                                                    mutableVector.b(nodeB);
                                                    nodeB = null;
                                                }
                                                mutableVector.b(node6);
                                            }
                                        }
                                    }
                                    if (i9 == 1) {
                                    }
                                }
                                nodeB = DelegatableNodeKt.b(mutableVector);
                            }
                        }
                        node2 = node2.f8611f;
                    }
                }
                layoutNodeF = layoutNodeF.O();
                node2 = (layoutNodeF != null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
            }
            if (node != null) {
                return ((Boolean) ((FocusOwnerImpl$focusSearch$1) function1).invoke(focusTargetNode)).booleanValue();
            }
        }
        return false;
    }
}
