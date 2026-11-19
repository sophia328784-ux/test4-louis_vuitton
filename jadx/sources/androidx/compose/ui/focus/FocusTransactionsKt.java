package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class FocusTransactionsKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8786a;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusStateImpl.Captured.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f8786a = iArr;
        }
    }

    public static final boolean a(FocusTargetNode focusTargetNode, boolean z) {
        int i2 = WhenMappings.f8786a[focusTargetNode.W().ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                return z;
            }
            if (i2 == 3) {
                FocusTargetNode focusTargetNodeC = FocusTraversalKt.c(focusTargetNode);
                if (!(focusTargetNodeC != null ? a(focusTargetNodeC, z) : true)) {
                    return false;
                }
                focusTargetNode.i2(FocusStateImpl.ActiveParent, FocusStateImpl.Inactive);
                return true;
            }
            if (i2 != 4) {
                v40.g();
                return false;
            }
        }
        return true;
    }

    public static final CustomDestinationResult b(FocusTargetNode focusTargetNode, int i2) {
        int i3 = WhenMappings.f8786a[focusTargetNode.W().ordinal()];
        if (i3 != 1) {
            if (i3 == 2) {
                return CustomDestinationResult.Cancelled;
            }
            if (i3 == 3) {
                FocusTargetNode focusTargetNodeC = FocusTraversalKt.c(focusTargetNode);
                if (focusTargetNodeC == null) {
                    md.n("ActiveParent with no focused child");
                    return null;
                }
                CustomDestinationResult customDestinationResultB = b(focusTargetNodeC, i2);
                CustomDestinationResult customDestinationResult = CustomDestinationResult.None;
                if (customDestinationResultB == customDestinationResult) {
                    customDestinationResultB = null;
                }
                if (customDestinationResultB != null) {
                    return customDestinationResultB;
                }
                if (focusTargetNode.s) {
                    return customDestinationResult;
                }
                focusTargetNode.s = true;
                try {
                    FocusPropertiesImpl focusPropertiesImplJ2 = focusTargetNode.j2();
                    CancelIndicatingFocusBoundaryScope cancelIndicatingFocusBoundaryScope = new CancelIndicatingFocusBoundaryScope(i2, null);
                    FocusOwner focusOwner = DelegatableNodeKt.g(focusTargetNode).getFocusOwner();
                    FocusTargetNode focusTargetNodeG = focusOwner.g();
                    focusPropertiesImplJ2.l.invoke(cancelIndicatingFocusBoundaryScope);
                    FocusTargetNode focusTargetNodeG2 = focusOwner.g();
                    if (cancelIndicatingFocusBoundaryScope.f8729b) {
                        FocusRequester.f8775b.getClass();
                        return CustomDestinationResult.Cancelled;
                    }
                    if (focusTargetNodeG == focusTargetNodeG2 || focusTargetNodeG2 == null) {
                        return customDestinationResult;
                    }
                    FocusRequester.f8775b.getClass();
                    return FocusRequester.f8777e == FocusRequester.d ? CustomDestinationResult.Cancelled : CustomDestinationResult.Redirected;
                } finally {
                    focusTargetNode.s = false;
                }
            }
            if (i3 != 4) {
                v40.g();
                return null;
            }
        }
        return CustomDestinationResult.None;
    }

    public static final CustomDestinationResult c(FocusTargetNode focusTargetNode, int i2) {
        if (!focusTargetNode.t) {
            focusTargetNode.t = true;
            try {
                FocusPropertiesImpl focusPropertiesImplJ2 = focusTargetNode.j2();
                CancelIndicatingFocusBoundaryScope cancelIndicatingFocusBoundaryScope = new CancelIndicatingFocusBoundaryScope(i2, null);
                FocusOwner focusOwner = DelegatableNodeKt.g(focusTargetNode).getFocusOwner();
                FocusTargetNode focusTargetNodeG = focusOwner.g();
                focusPropertiesImplJ2.f8771k.invoke(cancelIndicatingFocusBoundaryScope);
                FocusTargetNode focusTargetNodeG2 = focusOwner.g();
                if (cancelIndicatingFocusBoundaryScope.f8729b) {
                    FocusRequester.f8775b.getClass();
                    return CustomDestinationResult.Cancelled;
                }
                if (focusTargetNodeG != focusTargetNodeG2 && focusTargetNodeG2 != null) {
                    FocusRequester.f8775b.getClass();
                    return FocusRequester.f8777e == FocusRequester.d ? CustomDestinationResult.Cancelled : CustomDestinationResult.Redirected;
                }
            } finally {
                focusTargetNode.t = false;
            }
        }
        return CustomDestinationResult.None;
    }

    public static final CustomDestinationResult d(FocusTargetNode focusTargetNode, int i2) {
        Modifier.Node nodeB;
        NodeChain nodeChain;
        int i3 = WhenMappings.f8786a[focusTargetNode.W().ordinal()];
        if (i3 == 1 || i3 == 2) {
            return CustomDestinationResult.None;
        }
        if (i3 == 3) {
            FocusTargetNode focusTargetNodeC = FocusTraversalKt.c(focusTargetNode);
            if (focusTargetNodeC != null) {
                return b(focusTargetNodeC, i2);
            }
            md.n("ActiveParent with no focused child");
            return null;
        }
        if (i3 != 4) {
            v40.g();
            return null;
        }
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
        if (focusTargetNode2 == null) {
            return CustomDestinationResult.None;
        }
        int i5 = WhenMappings.f8786a[focusTargetNode2.W().ordinal()];
        if (i5 == 1) {
            return c(focusTargetNode2, i2);
        }
        if (i5 == 2) {
            return CustomDestinationResult.Cancelled;
        }
        if (i5 == 3) {
            return d(focusTargetNode2, i2);
        }
        if (i5 != 4) {
            v40.g();
            return null;
        }
        CustomDestinationResult customDestinationResultD = d(focusTargetNode2, i2);
        CustomDestinationResult customDestinationResult = customDestinationResultD != CustomDestinationResult.None ? customDestinationResultD : null;
        return customDestinationResult == null ? c(focusTargetNode2, i2) : customDestinationResult;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0168 A[PHI: r14
      0x0168: PHI (r14v2 androidx.compose.runtime.collection.MutableVector) = 
      (r14v1 androidx.compose.runtime.collection.MutableVector)
      (r14v1 androidx.compose.runtime.collection.MutableVector)
      (r14v1 androidx.compose.runtime.collection.MutableVector)
      (r14v4 androidx.compose.runtime.collection.MutableVector)
     binds: [B:87:0x0129, B:89:0x012f, B:91:0x0133, B:105:0x0162] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:144:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:146:0x0206 A[ADDED_TO_REGION, LOOP:9: B:146:0x0206->B:153:0x021a, LOOP_START, PHI: r4
      0x0206: PHI (r4v8 int) = (r4v7 int), (r4v9 int) binds: [B:145:0x0204, B:153:0x021a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:147:0x0208  */
    /* JADX WARN: Code duplicated, block: B:150:0x0213 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:151:0x0215  */
    /* JADX WARN: Code duplicated, block: B:152:0x0218  */
    /* JADX WARN: Code duplicated, block: B:154:0x0222  */
    /* JADX WARN: Code duplicated, block: B:157:0x022a  */
    /* JADX WARN: Code duplicated, block: B:161:0x0238 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:199:0x0196 A[SYNTHETIC] */
    public static final boolean e(final FocusTargetNode focusTargetNode) {
        MutableVector mutableVector;
        int i2;
        Object[] objArr;
        FocusTargetNode focusTargetNode2;
        FocusStateImpl focusStateImpl;
        NodeChain nodeChain;
        int i3;
        NodeChain nodeChain2;
        FocusOwner focusOwner = DelegatableNodeKt.g(focusTargetNode).getFocusOwner();
        FocusTargetNode focusTargetNodeG = focusOwner.g();
        FocusStateImpl focusStateImplW = focusTargetNode.W();
        int i4 = 1;
        if (focusTargetNodeG == focusTargetNode) {
            focusTargetNode.i2(focusStateImplW, focusStateImplW);
            return true;
        }
        if ((focusTargetNodeG == null || focusTargetNodeG.p) && !focusTargetNode.p && !DelegatableNodeKt.g(focusTargetNode).getFocusOwner().b()) {
            return false;
        }
        if (focusTargetNodeG != null) {
            mutableVector = new MutableVector(new FocusTargetNode[16], 0);
            if (!focusTargetNodeG.f8608b.o) {
                InlineClassHelperKt.c("visitAncestors called on an unattached node");
            }
            Modifier.Node node = focusTargetNodeG.f8608b.f8611f;
            LayoutNode layoutNodeF = DelegatableNodeKt.f(focusTargetNodeG);
            while (layoutNodeF != null) {
                if ((layoutNodeF.H.f9774f.f8610e & 1024) != 0) {
                    while (node != null) {
                        if ((node.d & 1024) != 0) {
                            Modifier.Node nodeB = node;
                            MutableVector mutableVector2 = null;
                            while (nodeB != null) {
                                if (nodeB instanceof FocusTargetNode) {
                                    mutableVector.b((FocusTargetNode) nodeB);
                                } else if ((nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                                    int i5 = 0;
                                    for (Modifier.Node node2 = ((DelegatingNode) nodeB).q; node2 != null; node2 = node2.g) {
                                        if ((node2.d & 1024) != 0) {
                                            i5++;
                                            if (i5 == 1) {
                                                nodeB = node2;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodeB != null) {
                                                    mutableVector2.b(nodeB);
                                                    nodeB = null;
                                                }
                                                mutableVector2.b(node2);
                                            }
                                        }
                                    }
                                    if (i5 == 1) {
                                    }
                                }
                                nodeB = DelegatableNodeKt.b(mutableVector2);
                            }
                        }
                        node = node.f8611f;
                    }
                }
                layoutNodeF = layoutNodeF.O();
                node = (layoutNodeF == null || (nodeChain2 = layoutNodeF.H) == null) ? null : nodeChain2.f9773e;
            }
        } else {
            mutableVector = null;
        }
        MutableVector mutableVector3 = new MutableVector(new FocusTargetNode[16], 0);
        MutableVector mutableVector4 = new MutableVector(new FocusTargetNode[16], 0);
        if (!focusTargetNode.f8608b.o) {
            InlineClassHelperKt.c("visitAncestors called on an unattached node");
        }
        Modifier.Node node3 = focusTargetNode.f8608b.f8611f;
        LayoutNode layoutNodeF2 = DelegatableNodeKt.f(focusTargetNode);
        boolean z = true;
        while (layoutNodeF2 != null) {
            if ((layoutNodeF2.H.f9774f.f8610e & 1024) != 0) {
                while (node3 != null) {
                    if ((node3.d & 1024) != 0) {
                        Modifier.Node nodeB2 = node3;
                        MutableVector mutableVector5 = null;
                        while (nodeB2 != null) {
                            if (nodeB2 instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode3 = (FocusTargetNode) nodeB2;
                                if (Intrinsics.c(mutableVector != null ? Boolean.valueOf(mutableVector.n(focusTargetNode3)) : null, Boolean.TRUE)) {
                                    mutableVector3.b(focusTargetNode3);
                                } else {
                                    mutableVector4.b(focusTargetNode3);
                                }
                                if (focusTargetNode3 == focusTargetNodeG) {
                                    z = false;
                                }
                                i3 = 0;
                            } else {
                                i3 = i4;
                            }
                            if (i3 == 0 || (nodeB2.d & 1024) == 0 || !(nodeB2 instanceof DelegatingNode)) {
                                nodeB2 = DelegatableNodeKt.b(mutableVector5);
                                i4 = 1;
                            } else {
                                Modifier.Node node4 = ((DelegatingNode) nodeB2).q;
                                int i6 = 0;
                                while (node4 != null) {
                                    if ((node4.d & 1024) != 0) {
                                        i6++;
                                        if (i6 == i4) {
                                            nodeB2 = node4;
                                        } else {
                                            if (mutableVector5 == null) {
                                                mutableVector5 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodeB2 != null) {
                                                mutableVector5.b(nodeB2);
                                                nodeB2 = null;
                                            }
                                            mutableVector5.b(node4);
                                        }
                                    }
                                    node4 = node4.g;
                                    i4 = 1;
                                }
                                if (i6 != i4) {
                                    nodeB2 = DelegatableNodeKt.b(mutableVector5);
                                    i4 = 1;
                                }
                            }
                        }
                    }
                    node3 = node3.f8611f;
                    i4 = 1;
                }
            }
            layoutNodeF2 = layoutNodeF2.O();
            node3 = (layoutNodeF2 == null || (nodeChain = layoutNodeF2.H) == null) ? null : nodeChain.f9773e;
            i4 = 1;
        }
        if (!z || focusTargetNodeG == null || a(focusTargetNodeG, false)) {
            ObserverModifierNodeKt.a(focusTargetNode, new Function0<Unit>() { // from class: androidx.compose.ui.focus.FocusTransactionsKt$grantFocus$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    focusTargetNode.j2();
                    return Unit.f71739a;
                }
            });
            int i7 = WhenMappings.f8786a[focusTargetNode.W().ordinal()];
            if (i7 != 1 && i7 != 2) {
                if (i7 != 3 && i7 != 4) {
                    v40.g();
                    return false;
                }
                DelegatableNodeKt.g(focusTargetNode).getFocusOwner().v(focusTargetNode);
            }
            if (z && focusTargetNodeG != null) {
                focusTargetNodeG.i2(FocusStateImpl.Active, FocusStateImpl.Inactive);
            }
            if (mutableVector != null) {
                int i8 = mutableVector.d - 1;
                Object[] objArr2 = mutableVector.f8165b;
                if (i8 < objArr2.length) {
                    while (i8 >= 0) {
                        FocusTargetNode focusTargetNode4 = (FocusTargetNode) objArr2[i8];
                        if (focusOwner.g() == focusTargetNode) {
                            focusTargetNode4.i2(FocusStateImpl.ActiveParent, FocusStateImpl.Inactive);
                            i8--;
                        }
                    }
                    i2 = mutableVector4.d - 1;
                    objArr = mutableVector4.f8165b;
                    if (i2 < objArr.length) {
                        while (i2 >= 0) {
                            focusTargetNode2 = (FocusTargetNode) objArr[i2];
                            if (focusOwner.g() == focusTargetNode) {
                                if (focusTargetNode2 == focusTargetNodeG) {
                                    focusStateImpl = FocusStateImpl.Active;
                                } else {
                                    focusStateImpl = FocusStateImpl.Inactive;
                                }
                                focusTargetNode2.i2(focusStateImpl, FocusStateImpl.ActiveParent);
                                i2--;
                            }
                        }
                        if (focusOwner.g() == focusTargetNode) {
                            focusTargetNode.i2(focusStateImplW, FocusStateImpl.Active);
                            if (focusOwner.g() != focusTargetNode) {
                                return true;
                            }
                        }
                    } else if (focusOwner.g() == focusTargetNode) {
                        focusTargetNode.i2(focusStateImplW, FocusStateImpl.Active);
                        if (focusOwner.g() != focusTargetNode) {
                            return true;
                        }
                    }
                } else {
                    i2 = mutableVector4.d - 1;
                    objArr = mutableVector4.f8165b;
                    if (i2 < objArr.length) {
                        while (i2 >= 0) {
                            focusTargetNode2 = (FocusTargetNode) objArr[i2];
                            if (focusOwner.g() == focusTargetNode) {
                                if (focusTargetNode2 == focusTargetNodeG) {
                                    focusStateImpl = FocusStateImpl.Active;
                                } else {
                                    focusStateImpl = FocusStateImpl.Inactive;
                                }
                                focusTargetNode2.i2(focusStateImpl, FocusStateImpl.ActiveParent);
                                i2--;
                            }
                        }
                        if (focusOwner.g() == focusTargetNode) {
                            focusTargetNode.i2(focusStateImplW, FocusStateImpl.Active);
                            if (focusOwner.g() != focusTargetNode) {
                                return true;
                            }
                        }
                    } else if (focusOwner.g() == focusTargetNode) {
                        focusTargetNode.i2(focusStateImplW, FocusStateImpl.Active);
                        if (focusOwner.g() != focusTargetNode) {
                            return true;
                        }
                    }
                }
            } else {
                i2 = mutableVector4.d - 1;
                objArr = mutableVector4.f8165b;
                if (i2 < objArr.length) {
                    while (i2 >= 0) {
                        focusTargetNode2 = (FocusTargetNode) objArr[i2];
                        if (focusOwner.g() == focusTargetNode) {
                            if (focusTargetNode2 == focusTargetNodeG) {
                                focusStateImpl = FocusStateImpl.Active;
                            } else {
                                focusStateImpl = FocusStateImpl.Inactive;
                            }
                            focusTargetNode2.i2(focusStateImpl, FocusStateImpl.ActiveParent);
                            i2--;
                        }
                    }
                    if (focusOwner.g() == focusTargetNode) {
                        focusTargetNode.i2(focusStateImplW, FocusStateImpl.Active);
                        if (focusOwner.g() != focusTargetNode) {
                            return true;
                        }
                    }
                } else if (focusOwner.g() == focusTargetNode) {
                    focusTargetNode.i2(focusStateImplW, FocusStateImpl.Active);
                    if (focusOwner.g() != focusTargetNode) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
