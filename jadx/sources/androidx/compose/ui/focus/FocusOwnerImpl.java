package androidx.compose.ui.focus;

import android.os.Trace;
import android.view.KeyEvent;
import androidx.collection.MutableLongSet;
import androidx.collection.MutableObjectList;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.key.SoftKeyboardInterceptionModifierNode;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.rotary.RotaryInputModifierNode;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.md;
import defpackage.v40;
import defpackage.v7;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/focus/FocusOwnerImpl;", "Landroidx/compose/ui/focus/FocusOwner;", "Landroidx/compose/ui/focus/PlatformFocusOwner;", "platformFocusOwner", "Landroidx/compose/ui/node/Owner;", "owner", "<init>", "(Landroidx/compose/ui/focus/PlatformFocusOwner;Landroidx/compose/ui/node/Owner;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FocusOwnerImpl implements FocusOwner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PlatformFocusOwner f8747a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Owner f8748b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FocusTargetNode f8749c;
    public final FocusInvalidationManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FocusOwnerImpl$modifier$1 f8750e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MutableLongSet f8751f;
    public final MutableObjectList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public FocusTargetNode f8752h;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8753a;

        static {
            int[] iArr = new int[CustomDestinationResult.values().length];
            try {
                iArr[CustomDestinationResult.Redirected.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomDestinationResult.Cancelled.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CustomDestinationResult.RedirectCancelled.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CustomDestinationResult.None.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f8753a = iArr;
        }
    }

    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.compose.ui.focus.FocusOwnerImpl$modifier$1] */
    public FocusOwnerImpl(PlatformFocusOwner platformFocusOwner, Owner owner) {
        this.f8747a = platformFocusOwner;
        this.f8748b = owner;
        Focusability.f8790a.getClass();
        this.f8749c = new FocusTargetNode(Focusability.f8792c, false, null, null, 14, null);
        this.d = new FocusInvalidationManager(this, owner);
        this.f8750e = new ModifierNodeElement<FocusTargetNode>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$modifier$1
            @Override // androidx.compose.ui.node.ModifierNodeElement
            public final Modifier.Node a() {
                return this.f8756b.f8749c;
            }

            public final boolean equals(Object obj) {
                return obj == this;
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public final /* bridge */ /* synthetic */ void g(Modifier.Node node) {
            }

            public final int hashCode() {
                return this.f8756b.f8749c.hashCode();
            }
        };
        this.g = new MutableObjectList(1);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final Boolean A(int i2, Rect rect, Function1 function1) {
        boolean zA;
        int i3;
        NodeChain nodeChain;
        FocusRequester focusRequester;
        boolean z;
        FocusTargetNode focusTargetNode = this.f8749c;
        FocusTargetNode focusTargetNodeA = FocusTraversalKt.a(focusTargetNode);
        Owner owner = this.f8748b;
        FocusTargetNode focusTargetNode2 = null;
        if (focusTargetNodeA != null) {
            LayoutDirection layoutDirection = owner.getLayoutDirection();
            FocusPropertiesImpl focusPropertiesImplJ2 = focusTargetNodeA.j2();
            FocusRequester focusRequester2 = focusPropertiesImplJ2.f8769i;
            FocusRequester focusRequester3 = focusPropertiesImplJ2.f8770j;
            FocusDirection.f8731b.getClass();
            if (i2 == FocusDirection.f8732c) {
                focusRequester = focusPropertiesImplJ2.f8765c;
            } else if (i2 == FocusDirection.d) {
                focusRequester = focusPropertiesImplJ2.d;
            } else if (i2 == FocusDirection.g) {
                focusRequester = focusPropertiesImplJ2.f8766e;
            } else if (i2 == FocusDirection.f8735h) {
                focusRequester = focusPropertiesImplJ2.f8767f;
            } else if (i2 == FocusDirection.f8733e) {
                int i4 = FocusTraversalKt.WhenMappings.f8788a[layoutDirection.ordinal()];
                if (i4 != 1) {
                    if (i4 != 2) {
                        v40.g();
                        return null;
                    }
                    focusRequester2 = focusRequester3;
                }
                FocusRequester.f8775b.getClass();
                focusRequester = focusRequester2 == FocusRequester.f8776c ? null : focusRequester2;
                if (focusRequester == null) {
                    focusRequester = focusPropertiesImplJ2.g;
                }
            } else if (i2 == FocusDirection.f8734f) {
                int i5 = FocusTraversalKt.WhenMappings.f8788a[layoutDirection.ordinal()];
                if (i5 == 1) {
                    focusRequester2 = focusRequester3;
                } else if (i5 != 2) {
                    v40.g();
                    return null;
                }
                FocusRequester.f8775b.getClass();
                focusRequester = focusRequester2 == FocusRequester.f8776c ? null : focusRequester2;
                if (focusRequester == null) {
                    focusRequester = focusPropertiesImplJ2.f8768h;
                }
            } else {
                int i6 = FocusDirection.f8736i;
                if (i2 != i6 && i2 != FocusDirection.f8737j) {
                    md.k("invalid FocusDirection");
                    return null;
                }
                CancelIndicatingFocusBoundaryScope cancelIndicatingFocusBoundaryScope = new CancelIndicatingFocusBoundaryScope(i2, null);
                FocusOwner focusOwner = DelegatableNodeKt.g(focusTargetNodeA).getFocusOwner();
                FocusTargetNode focusTargetNodeG = focusOwner.g();
                if (i2 == i6) {
                    focusPropertiesImplJ2.f8771k.invoke(cancelIndicatingFocusBoundaryScope);
                } else {
                    focusPropertiesImplJ2.l.invoke(cancelIndicatingFocusBoundaryScope);
                }
                if (cancelIndicatingFocusBoundaryScope.f8729b) {
                    FocusRequester.f8775b.getClass();
                    focusRequester = FocusRequester.d;
                } else if (focusTargetNodeG != focusOwner.g()) {
                    FocusRequester.f8775b.getClass();
                    focusRequester = FocusRequester.f8777e;
                } else {
                    FocusRequester.f8775b.getClass();
                    focusRequester = FocusRequester.f8776c;
                }
            }
            FocusRequester.f8775b.getClass();
            FocusRequester focusRequester4 = FocusRequester.d;
            if (!Intrinsics.c(focusRequester, focusRequester4)) {
                if (Intrinsics.c(focusRequester, FocusRequester.f8777e)) {
                    FocusTargetNode focusTargetNodeA2 = FocusTraversalKt.a(focusTargetNode);
                    if (focusTargetNodeA2 != null) {
                        return (Boolean) function1.invoke(focusTargetNodeA2);
                    }
                } else {
                    FocusRequester focusRequester5 = FocusRequester.f8776c;
                    if (!Intrinsics.c(focusRequester, focusRequester5)) {
                        if (focusRequester == focusRequester5) {
                            md.k("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
                            return null;
                        }
                        if (focusRequester == focusRequester4) {
                            md.k("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
                            return null;
                        }
                        MutableVector mutableVector = focusRequester.f8778a;
                        int i7 = mutableVector.d;
                        if (i7 == 0) {
                            System.out.println((Object) "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
                            z = false;
                        } else {
                            Object[] objArr = mutableVector.f8165b;
                            boolean z2 = false;
                            for (int i8 = 0; i8 < i7; i8++) {
                                FocusRequesterModifierNode focusRequesterModifierNode = (FocusRequesterModifierNode) objArr[i8];
                                if (!focusRequesterModifierNode.getF8608b().o) {
                                    InlineClassHelperKt.c("visitChildren called on an unattached node");
                                }
                                MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                Modifier.Node node = focusRequesterModifierNode.getF8608b().g;
                                if (node == null) {
                                    DelegatableNodeKt.a(mutableVector2, focusRequesterModifierNode.getF8608b());
                                } else {
                                    mutableVector2.b(node);
                                }
                                while (true) {
                                    int i9 = mutableVector2.d;
                                    if (i9 == 0) {
                                        break;
                                    }
                                    Modifier.Node nodeB = (Modifier.Node) mutableVector2.o(i9 - 1);
                                    if ((nodeB.f8610e & 1024) == 0) {
                                        DelegatableNodeKt.a(mutableVector2, nodeB);
                                    } else {
                                        while (nodeB != null) {
                                            if ((nodeB.d & 1024) != 0) {
                                                MutableVector mutableVector3 = null;
                                                while (nodeB != null) {
                                                    if (nodeB instanceof FocusTargetNode) {
                                                        if (((Boolean) function1.invoke((FocusTargetNode) nodeB)).booleanValue()) {
                                                            z2 = true;
                                                            break;
                                                        }
                                                    } else if ((nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                                                        int i10 = 0;
                                                        for (Modifier.Node node2 = ((DelegatingNode) nodeB).q; node2 != null; node2 = node2.g) {
                                                            if ((node2.d & 1024) != 0) {
                                                                i10++;
                                                                if (i10 == 1) {
                                                                    nodeB = node2;
                                                                } else {
                                                                    if (mutableVector3 == null) {
                                                                        mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                                                    }
                                                                    if (nodeB != null) {
                                                                        mutableVector3.b(nodeB);
                                                                        nodeB = null;
                                                                    }
                                                                    mutableVector3.b(node2);
                                                                }
                                                            }
                                                        }
                                                        if (i10 == 1) {
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
                            }
                            z = z2;
                        }
                        return Boolean.valueOf(z);
                    }
                }
            }
            return null;
        }
        focusTargetNodeA = null;
        LayoutDirection layoutDirection2 = owner.getLayoutDirection();
        FocusOwnerImpl$focusSearch$1 focusOwnerImpl$focusSearch$1 = new FocusOwnerImpl$focusSearch$1(focusTargetNodeA, this, function1);
        FocusDirection.f8731b.getClass();
        int i11 = FocusDirection.f8732c;
        if (i2 == i11 || i2 == FocusDirection.d) {
            if (i2 == i11) {
                zA = OneDimensionalFocusSearchKt.b(focusTargetNode, focusOwnerImpl$focusSearch$1);
            } else {
                if (i2 != FocusDirection.d) {
                    md.k("This function should only be used for 1-D focus search");
                    return null;
                }
                zA = OneDimensionalFocusSearchKt.a(focusTargetNode, focusOwnerImpl$focusSearch$1);
            }
            return Boolean.valueOf(zA);
        }
        int i12 = FocusDirection.f8733e;
        if (i2 == i12 || i2 == (i3 = FocusDirection.f8734f) || i2 == FocusDirection.g || i2 == FocusDirection.f8735h) {
            return TwoDimensionalFocusSearchKt.k(i2, focusTargetNode, rect, focusOwnerImpl$focusSearch$1);
        }
        if (i2 == FocusDirection.f8736i) {
            int i13 = FocusTraversalKt.WhenMappings.f8788a[layoutDirection2.ordinal()];
            if (i13 == 1) {
                i12 = i3;
            } else if (i13 != 2) {
                v40.g();
                return null;
            }
            FocusTargetNode focusTargetNodeA3 = FocusTraversalKt.a(focusTargetNode);
            if (focusTargetNodeA3 != null) {
                return TwoDimensionalFocusSearchKt.k(i12, focusTargetNodeA3, rect, focusOwnerImpl$focusSearch$1);
            }
            return null;
        }
        if (i2 != FocusDirection.f8737j) {
            v7.i(FocusDirection.a(i2), "Focus search invoked with invalid FocusDirection ");
            return null;
        }
        FocusTargetNode focusTargetNodeA4 = FocusTraversalKt.a(focusTargetNode);
        if (focusTargetNodeA4 != null) {
            if (!focusTargetNodeA4.f8608b.o) {
                InlineClassHelperKt.c("visitAncestors called on an unattached node");
            }
            Modifier.Node node3 = focusTargetNodeA4.f8608b.f8611f;
            LayoutNode layoutNodeF = DelegatableNodeKt.f(focusTargetNodeA4);
            loop5: while (layoutNodeF != null) {
                if ((layoutNodeF.H.f9774f.f8610e & 1024) != 0) {
                    while (node3 != null) {
                        if ((node3.d & 1024) != 0) {
                            Modifier.Node nodeB2 = node3;
                            MutableVector mutableVector4 = null;
                            while (nodeB2 != null) {
                                if (nodeB2 instanceof FocusTargetNode) {
                                    FocusTargetNode focusTargetNode3 = (FocusTargetNode) nodeB2;
                                    if (focusTargetNode3.j2().f8764b) {
                                        focusTargetNode2 = focusTargetNode3;
                                        break loop5;
                                    }
                                } else if ((nodeB2.d & 1024) != 0 && (nodeB2 instanceof DelegatingNode)) {
                                    int i14 = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) nodeB2).q; node4 != null; node4 = node4.g) {
                                        if ((node4.d & 1024) != 0) {
                                            i14++;
                                            if (i14 == 1) {
                                                nodeB2 = node4;
                                            } else {
                                                if (mutableVector4 == null) {
                                                    mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodeB2 != null) {
                                                    mutableVector4.b(nodeB2);
                                                    nodeB2 = null;
                                                }
                                                mutableVector4.b(node4);
                                            }
                                        }
                                    }
                                    if (i14 != 1) {
                                        nodeB2 = DelegatableNodeKt.b(mutableVector4);
                                    }
                                }
                                nodeB2 = DelegatableNodeKt.b(mutableVector4);
                            }
                        }
                        node3 = node3.f8611f;
                    }
                }
                layoutNodeF = layoutNodeF.O();
                node3 = (layoutNodeF == null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
            }
        }
        return Boolean.valueOf((focusTargetNode2 == null || focusTargetNode2 == focusTargetNode) ? false : ((Boolean) focusOwnerImpl$focusSearch$1.invoke(focusTargetNode2)).booleanValue());
    }

    public final boolean B(boolean z) {
        NodeChain nodeChain;
        if (g() != null) {
            FocusTargetNode focusTargetNodeG = g();
            v(null);
            if (focusTargetNodeG != null) {
                focusTargetNodeG.i2(FocusStateImpl.Active, FocusStateImpl.Inactive);
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
                                MutableVector mutableVector = null;
                                while (nodeB != null) {
                                    if (nodeB instanceof FocusTargetNode) {
                                        ((FocusTargetNode) nodeB).i2(FocusStateImpl.ActiveParent, FocusStateImpl.Inactive);
                                    } else if ((nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                                        int i2 = 0;
                                        for (Modifier.Node node2 = ((DelegatingNode) nodeB).q; node2 != null; node2 = node2.g) {
                                            if ((node2.d & 1024) != 0) {
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
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0205  */
    /* JADX WARN: Code duplicated, block: B:49:0x0222  */
    /* JADX WARN: Code duplicated, block: B:51:0x0231  */
    /* JADX WARN: Code duplicated, block: B:52:0x026f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [int] */
    /* JADX WARN: Type inference failed for: r21v3, types: [int] */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v5 */
    public final boolean C(KeyEvent keyEvent) {
        int iNumberOfTrailingZeros;
        boolean z;
        long j2;
        int iNumberOfTrailingZeros2;
        long[] jArr;
        long[] jArr2;
        int i2;
        long[] jArr3;
        long[] jArr4;
        int i3;
        int i4;
        long[] jArr5;
        int i5;
        long jA = KeyEvent_androidKt.a(keyEvent);
        int iB = KeyEvent_androidKt.b(keyEvent);
        KeyEventType.f9236a.getClass();
        int i6 = -862048943;
        long j3 = 0;
        char c2 = '\b';
        int i7 = 0;
        boolean z2 = true;
        if (iB != KeyEventType.f9238c) {
            if (iB != KeyEventType.f9237b) {
                return true;
            }
            MutableLongSet mutableLongSet = this.f8751f;
            if (mutableLongSet == null || !mutableLongSet.a(jA)) {
                return false;
            }
            MutableLongSet mutableLongSet2 = this.f8751f;
            if (mutableLongSet2 != null) {
                int iHashCode = Long.hashCode(jA) * (-862048943);
                int i8 = iHashCode ^ (iHashCode << 16);
                int i9 = i8 & CertificateBody.profileType;
                int i10 = mutableLongSet2.f3284c;
                int i11 = i8 >>> 7;
                loop5: while (true) {
                    int i12 = i11 & i10;
                    long[] jArr6 = mutableLongSet2.f3282a;
                    int i13 = i12 >> 3;
                    int i14 = (i12 & 7) << 3;
                    long j4 = ((jArr6[i13 + 1] << (64 - i14)) & ((-i14) >> 63)) | (jArr6[i13] >>> i14);
                    long j5 = (((long) i9) * 72340172838076673L) ^ j4;
                    for (long j6 = (~j5) & (j5 - 72340172838076673L) & (-9187201950435737472L); j6 != 0; j6 &= j6 - 1) {
                        iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j6) >> 3) + i12) & i10;
                        if (mutableLongSet2.f3283b[iNumberOfTrailingZeros] == jA) {
                            break loop5;
                        }
                    }
                    if ((j4 & ((~j4) << 6) & (-9187201950435737472L)) != 0) {
                        iNumberOfTrailingZeros = -1;
                        break;
                    }
                    i7 += 8;
                    i11 = i12 + i7;
                }
                if (iNumberOfTrailingZeros >= 0) {
                    mutableLongSet2.d--;
                    long[] jArr7 = mutableLongSet2.f3282a;
                    int i15 = mutableLongSet2.f3284c;
                    int i16 = iNumberOfTrailingZeros >> 3;
                    int i17 = (iNumberOfTrailingZeros & 7) << 3;
                    long j7 = (jArr7[i16] & (~(255 << i17))) | (254 << i17);
                    jArr7[i16] = j7;
                    jArr7[(((iNumberOfTrailingZeros - 7) & i15) + (i15 & 7)) >> 3] = j7;
                    return true;
                }
            }
            return true;
        }
        MutableLongSet mutableLongSet3 = this.f8751f;
        if (mutableLongSet3 == null) {
            mutableLongSet3 = new MutableLongSet(3);
            this.f8751f = mutableLongSet3;
        }
        MutableLongSet mutableLongSet4 = mutableLongSet3;
        int iHashCode2 = Long.hashCode(jA) * (-862048943);
        int i18 = iHashCode2 ^ (iHashCode2 << 16);
        int i19 = i18 >>> 7;
        int i20 = i18 & CertificateBody.profileType;
        int i21 = mutableLongSet4.f3284c;
        int i22 = i19 & i21;
        int i23 = 0;
        loop0: while (true) {
            long[] jArr8 = mutableLongSet4.f3282a;
            int i24 = i22 >> 3;
            int i25 = (i22 & 7) << 3;
            long j8 = (jArr8[i24] >>> i25) | ((jArr8[i24 + 1] << (64 - i25)) & ((-i25) >> 63));
            int i26 = i6;
            long j9 = i20;
            long j10 = j8 ^ (j9 * 72340172838076673L);
            long j11 = (j10 - 72340172838076673L) & (~j10) & (-9187201950435737472L);
            while (j11 != j3) {
                iNumberOfTrailingZeros2 = (i22 + (Long.numberOfTrailingZeros(j11) >> 3)) & i21;
                long j12 = j3;
                if (mutableLongSet4.f3283b[iNumberOfTrailingZeros2] == jA) {
                    z = true;
                    break loop0;
                }
                j11 &= j11 - 1;
                j3 = j12;
            }
            long j13 = j3;
            if ((j8 & ((~j8) << 6) & (-9187201950435737472L)) != j13) {
                int iB2 = mutableLongSet4.b(i19);
                if (mutableLongSet4.f3304e != 0 || ((mutableLongSet4.f3282a[iB2 >> 3] >> ((iB2 & 7) << 3)) & 255) == 254) {
                    z = true;
                    j2 = 128;
                } else {
                    int i27 = mutableLongSet4.f3284c;
                    if (i27 > 8) {
                        long j14 = mutableLongSet4.d;
                        ULong.Companion companion = ULong.INSTANCE;
                        if (Long.compareUnsigned(j14 * 32, ((long) i27) * 25) <= 0) {
                            long[] jArr9 = mutableLongSet4.f3282a;
                            int i28 = mutableLongSet4.f3284c;
                            long[] jArr10 = mutableLongSet4.f3283b;
                            int i29 = (i28 + 7) >> 3;
                            int i30 = 0;
                            while (i30 < i29) {
                                long j15 = jArr9[i30] & (-9187201950435737472L);
                                jArr9[i30] = ((~j15) + (j15 >>> 7)) & (-72340172838076674L);
                                i30++;
                                c2 = c2;
                                i28 = i28;
                            }
                            char c3 = c2;
                            int i31 = i28;
                            j2 = 128;
                            int iZ = ArraysKt.z(jArr9);
                            int i32 = iZ - 1;
                            long j16 = 72057594037927935L;
                            jArr9[i32] = (jArr9[i32] & 72057594037927935L) | (-72057594037927936L);
                            jArr9[iZ] = jArr9[0];
                            int i33 = i31;
                            int i34 = 0;
                            while (i34 != i33) {
                                int i35 = i34 >> 3;
                                int i36 = (i34 & 7) << 3;
                                long j17 = (jArr9[i35] >> i36) & 255;
                                if (j17 != 128 && j17 == 254) {
                                    int iHashCode3 = Long.hashCode(jArr10[i34]) * i26;
                                    int i37 = iHashCode3 ^ (iHashCode3 << 16);
                                    long j18 = j16;
                                    int i38 = i37 >>> 7;
                                    int iB3 = mutableLongSet4.b(i38);
                                    int i39 = i38 & i33;
                                    char c4 = c3;
                                    if (((iB3 - i39) & i33) / 8 == ((i34 - i39) & i33) / 8) {
                                        jArr9[i35] = ((~(255 << i36)) & jArr9[i35]) | (((long) (i37 & CertificateBody.profileType)) << i36);
                                        jArr9[jArr9.length - 1] = (jArr9[0] & j18) | Long.MIN_VALUE;
                                        i34++;
                                    } else {
                                        int i40 = iB3 >> 3;
                                        long j19 = jArr9[i40];
                                        int i41 = (iB3 & 7) << 3;
                                        if (((j19 >> i41) & 255) == 128) {
                                            int i42 = i34;
                                            jArr9[i40] = (j19 & (~(255 << i41))) | (((long) (i37 & CertificateBody.profileType)) << i41);
                                            jArr9[i35] = (jArr9[i35] & (~(255 << i36))) | (128 << i36);
                                            jArr10[iB3] = jArr10[i42];
                                            jArr10[i42] = j13;
                                            i5 = i42;
                                        } else {
                                            int i43 = i34;
                                            jArr9[i40] = (j19 & (~(255 << i41))) | (((long) (i37 & CertificateBody.profileType)) << i41);
                                            long j20 = jArr10[iB3];
                                            jArr10[iB3] = jArr10[i43];
                                            jArr10[i43] = j20;
                                            i5 = i43 - 1;
                                        }
                                        jArr9[jArr9.length - 1] = (jArr9[0] & j18) | Long.MIN_VALUE;
                                        i34 = i5 + 1;
                                        i33 = i33;
                                    }
                                    j16 = j18;
                                    c3 = c4;
                                    z2 = z2;
                                } else {
                                    i34++;
                                }
                            }
                            z = z2;
                            mutableLongSet4.f3304e = ScatterMapKt.a(mutableLongSet4.f3284c) - mutableLongSet4.d;
                        } else {
                            z = true;
                            j2 = 128;
                            int iC = ScatterMapKt.c(mutableLongSet4.f3284c);
                            jArr = mutableLongSet4.f3282a;
                            jArr2 = mutableLongSet4.f3283b;
                            i2 = mutableLongSet4.f3284c;
                            mutableLongSet4.c(iC);
                            jArr3 = mutableLongSet4.f3282a;
                            jArr4 = mutableLongSet4.f3283b;
                            i3 = mutableLongSet4.f3284c;
                            i4 = 0;
                            while (i4 < i2) {
                                if (((jArr[i4 >> 3] >> ((i4 & 7) << 3)) & 255) < 128) {
                                    long j21 = jArr2[i4];
                                    int iHashCode4 = Long.hashCode(j21) * i26;
                                    int i44 = iHashCode4 ^ (iHashCode4 << 16);
                                    jArr5 = jArr3;
                                    int iB4 = mutableLongSet4.b(i44 >>> 7);
                                    long j22 = i44 & CertificateBody.profileType;
                                    int i45 = iB4 >> 3;
                                    int i46 = (iB4 & 7) << 3;
                                    long j23 = (jArr5[i45] & (~(255 << i46))) | (j22 << i46);
                                    jArr5[i45] = j23;
                                    jArr5[(((iB4 - 7) & i3) + (i3 & 7)) >> 3] = j23;
                                    jArr4[iB4] = j21;
                                } else {
                                    jArr5 = jArr3;
                                }
                                i4++;
                                jArr3 = jArr5;
                                jArr = jArr;
                                jArr2 = jArr2;
                            }
                        }
                    } else {
                        z = true;
                        j2 = 128;
                        int iC2 = ScatterMapKt.c(mutableLongSet4.f3284c);
                        jArr = mutableLongSet4.f3282a;
                        jArr2 = mutableLongSet4.f3283b;
                        i2 = mutableLongSet4.f3284c;
                        mutableLongSet4.c(iC2);
                        jArr3 = mutableLongSet4.f3282a;
                        jArr4 = mutableLongSet4.f3283b;
                        i3 = mutableLongSet4.f3284c;
                        i4 = 0;
                        while (i4 < i2) {
                            if (((jArr[i4 >> 3] >> ((i4 & 7) << 3)) & 255) < 128) {
                                long j24 = jArr2[i4];
                                int iHashCode5 = Long.hashCode(j24) * i26;
                                int i47 = iHashCode5 ^ (iHashCode5 << 16);
                                jArr5 = jArr3;
                                int iB5 = mutableLongSet4.b(i47 >>> 7);
                                long j25 = i47 & CertificateBody.profileType;
                                int i48 = iB5 >> 3;
                                int i49 = (iB5 & 7) << 3;
                                long j26 = (jArr5[i48] & (~(255 << i49))) | (j25 << i49);
                                jArr5[i48] = j26;
                                jArr5[(((iB5 - 7) & i3) + (i3 & 7)) >> 3] = j26;
                                jArr4[iB5] = j24;
                            } else {
                                jArr5 = jArr3;
                            }
                            i4++;
                            jArr3 = jArr5;
                            jArr = jArr;
                            jArr2 = jArr2;
                        }
                    }
                    iB2 = mutableLongSet4.b(i19);
                }
                iNumberOfTrailingZeros2 = iB2;
                mutableLongSet4.d++;
                int i50 = mutableLongSet4.f3304e;
                long[] jArr11 = mutableLongSet4.f3282a;
                int i51 = iNumberOfTrailingZeros2 >> 3;
                long j27 = jArr11[i51];
                int i52 = (iNumberOfTrailingZeros2 & 7) << 3;
                mutableLongSet4.f3304e = i50 - (((j27 >> i52) & 255) == j2 ? z : 0);
                int i53 = mutableLongSet4.f3284c;
                long j28 = (j27 & (~(255 << i52))) | (j9 << i52);
                jArr11[i51] = j28;
                jArr11[(((iNumberOfTrailingZeros2 - 7) & i53) + (i53 & 7)) >> 3] = j28;
                break;
            }
            i23 += 8;
            i22 = (i22 + i23) & i21;
            i6 = i26;
            j3 = j13;
        }
        mutableLongSet4.f3283b[iNumberOfTrailingZeros2] = jA;
        return z;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final void a() {
        this.f8747a.a();
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final boolean b() {
        return this.f8747a.b();
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final void c(FocusEventModifierNode focusEventModifierNode) {
        FocusInvalidationManager focusInvalidationManager = this.d;
        if (focusInvalidationManager.d.d(focusEventModifierNode)) {
            focusInvalidationManager.a();
        }
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final boolean d(final int i2, boolean z) {
        FocusTargetNode focusTargetNodeG = g();
        PlatformFocusOwner platformFocusOwner = this.f8747a;
        if (focusTargetNodeG == null || !focusTargetNodeG.p || !platformFocusOwner.d(i2)) {
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.f71921b = Boolean.FALSE;
            FocusTargetNode focusTargetNodeG2 = g();
            Boolean boolA = A(i2, platformFocusOwner.getEmbeddedViewFocusRect(), new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$moveFocus$focusSearchSuccess$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Boolean boolValueOf = Boolean.valueOf(((FocusTargetNode) obj).H(i2));
                    ref$ObjectRef.f71921b = boolValueOf;
                    return boolValueOf;
                }
            });
            if (!Intrinsics.c(boolA, Boolean.TRUE) || focusTargetNodeG2 == g()) {
                if (boolA != null && ref$ObjectRef.f71921b != null) {
                    if (!boolA.booleanValue() || !((Boolean) ref$ObjectRef.f71921b).booleanValue()) {
                        if (FocusOwnerImplKt.a(i2) && z && u(i2, false, false)) {
                            Boolean boolA2 = A(i2, null, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$takeFocus$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return Boolean.valueOf(((FocusTargetNode) obj).H(i2));
                                }
                            });
                            if (boolA2 != null ? boolA2.booleanValue() : false) {
                            }
                        }
                    }
                }
                return false;
            }
        }
        return true;
    }

    @Override // androidx.compose.ui.focus.FocusManager
    public final boolean e(int i2) {
        return d(i2, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v11, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v17, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v25, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v26, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v30 */
    /* JADX WARN: Type inference failed for: r12v47 */
    /* JADX WARN: Type inference failed for: r12v48 */
    /* JADX WARN: Type inference failed for: r12v49 */
    /* JADX WARN: Type inference failed for: r12v50 */
    /* JADX WARN: Type inference failed for: r12v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v9, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v20, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v22 */
    /* JADX WARN: Type inference failed for: r13v23, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r13v28 */
    /* JADX WARN: Type inference failed for: r13v29 */
    /* JADX WARN: Type inference failed for: r13v30 */
    /* JADX WARN: Type inference failed for: r13v31 */
    /* JADX WARN: Type inference failed for: r13v32 */
    /* JADX WARN: Type inference failed for: r13v33 */
    /* JADX WARN: Type inference failed for: r13v34 */
    /* JADX WARN: Type inference failed for: r13v35 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v24, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v31, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v34, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v36 */
    /* JADX WARN: Type inference failed for: r7v37 */
    /* JADX WARN: Type inference failed for: r7v38 */
    /* JADX WARN: Type inference failed for: r7v39 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r8v19 */
    @Override // androidx.compose.ui.focus.FocusOwner
    public final boolean f(KeyEvent keyEvent) {
        SoftKeyboardInterceptionModifierNode softKeyboardInterceptionModifierNode;
        int size;
        NodeChain nodeChain;
        boolean z;
        ?? B;
        NodeChain nodeChain2;
        if (this.d.f8744e) {
            System.out.println((Object) "FocusRelatedWarning: Dispatching intercepted soft keyboard event while the focus system is invalidated.");
            return false;
        }
        FocusTargetNode focusTargetNodeA = FocusTraversalKt.a(this.f8749c);
        if (focusTargetNodeA != null) {
            if (!focusTargetNodeA.f8608b.o) {
                InlineClassHelperKt.c("visitAncestors called on an unattached node");
            }
            Modifier.Node node = focusTargetNodeA.f8608b;
            LayoutNode layoutNodeF = DelegatableNodeKt.f(focusTargetNodeA);
            loop0: while (true) {
                if (layoutNodeF == null) {
                    B = 0;
                    break;
                }
                if ((layoutNodeF.H.f9774f.f8610e & 131072) != 0) {
                    while (node != null) {
                        if ((node.d & 131072) != 0) {
                            ?? mutableVector = 0;
                            B = node;
                            while (B != 0) {
                                if (B instanceof SoftKeyboardInterceptionModifierNode) {
                                    break loop0;
                                }
                                if ((B.d & 131072) != 0 && (B instanceof DelegatingNode)) {
                                    Modifier.Node node2 = ((DelegatingNode) B).q;
                                    int i2 = 0;
                                    while (node2 != null) {
                                        if ((node2.d & 131072) != 0) {
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
                node = (layoutNodeF == null || (nodeChain2 = layoutNodeF.H) == null) ? null : nodeChain2.f9773e;
            }
            softKeyboardInterceptionModifierNode = (SoftKeyboardInterceptionModifierNode) B;
        } else {
            softKeyboardInterceptionModifierNode = null;
        }
        if (softKeyboardInterceptionModifierNode != null) {
            if (!softKeyboardInterceptionModifierNode.getF8608b().o) {
                InlineClassHelperKt.c("visitAncestors called on an unattached node");
            }
            Modifier.Node node3 = softKeyboardInterceptionModifierNode.getF8608b().f8611f;
            LayoutNode layoutNodeF2 = DelegatableNodeKt.f(softKeyboardInterceptionModifierNode);
            ArrayList arrayList = null;
            while (layoutNodeF2 != null) {
                if ((layoutNodeF2.H.f9774f.f8610e & 131072) != 0) {
                    while (node3 != null) {
                        if ((node3.d & 131072) != 0) {
                            Modifier.Node nodeB = node3;
                            MutableVector mutableVector2 = null;
                            while (nodeB != null) {
                                if (nodeB instanceof SoftKeyboardInterceptionModifierNode) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(nodeB);
                                    z = false;
                                } else {
                                    z = true;
                                }
                                if (z && (nodeB.d & 131072) != 0 && (nodeB instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) nodeB).q; node4 != null; node4 = node4.g) {
                                        if ((node4.d & 131072) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                nodeB = node4;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodeB != null) {
                                                    mutableVector2.b(nodeB);
                                                    nodeB = null;
                                                }
                                                mutableVector2.b(node4);
                                            }
                                        }
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                nodeB = DelegatableNodeKt.b(mutableVector2);
                            }
                        }
                        node3 = node3.f8611f;
                    }
                }
                layoutNodeF2 = layoutNodeF2.O();
                node3 = (layoutNodeF2 == null || (nodeChain = layoutNodeF2.H) == null) ? null : nodeChain.f9773e;
            }
            if (arrayList != null && (size = arrayList.size() - 1) >= 0) {
                while (true) {
                    int i4 = size - 1;
                    if (!((SoftKeyboardInterceptionModifierNode) arrayList.get(size)).S()) {
                        if (i4 < 0) {
                            break;
                        }
                        size = i4;
                    }
                    return true;
                }
            }
            ?? f8608b = softKeyboardInterceptionModifierNode.getF8608b();
            ?? mutableVector3 = 0;
            while (f8608b != 0) {
                if (f8608b instanceof SoftKeyboardInterceptionModifierNode) {
                    if (((SoftKeyboardInterceptionModifierNode) f8608b).S()) {
                        return true;
                    }
                } else if ((f8608b.d & 131072) != 0 && (f8608b instanceof DelegatingNode)) {
                    Modifier.Node node5 = ((DelegatingNode) f8608b).q;
                    int i5 = 0;
                    while (node5 != null) {
                        if ((node5.d & 131072) != 0) {
                            i5++;
                            if (i5 == 1) {
                                f8608b = f8608b;
                                mutableVector3 = mutableVector3;
                                mutableVector3 = mutableVector3;
                                f8608b = node5;
                            } else {
                                if (mutableVector3 == 0) {
                                    mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (f8608b != 0) {
                                    mutableVector3.b(f8608b);
                                    f8608b = 0;
                                }
                                mutableVector3.b(node5);
                            }
                        } else {
                            f8608b = f8608b;
                            mutableVector3 = mutableVector3;
                        }
                        node5 = node5.g;
                        f8608b = f8608b;
                        mutableVector3 = mutableVector3;
                    }
                    if (i5 == 1) {
                        f8608b = f8608b;
                        mutableVector3 = mutableVector3;
                    } else {
                        f8608b = f8608b;
                        mutableVector3 = mutableVector3;
                    }
                }
                f8608b = DelegatableNodeKt.b(mutableVector3);
            }
            ?? f8608b2 = softKeyboardInterceptionModifierNode.getF8608b();
            ?? mutableVector4 = 0;
            while (f8608b2 != 0) {
                if (f8608b2 instanceof SoftKeyboardInterceptionModifierNode) {
                    if (((SoftKeyboardInterceptionModifierNode) f8608b2).F1()) {
                        return true;
                    }
                } else if ((f8608b2.d & 131072) != 0 && (f8608b2 instanceof DelegatingNode)) {
                    Modifier.Node node6 = ((DelegatingNode) f8608b2).q;
                    int i6 = 0;
                    while (node6 != null) {
                        if ((node6.d & 131072) != 0) {
                            i6++;
                            if (i6 == 1) {
                                f8608b2 = f8608b2;
                                mutableVector4 = mutableVector4;
                                mutableVector4 = mutableVector4;
                                f8608b2 = node6;
                            } else {
                                if (mutableVector4 == 0) {
                                    mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (f8608b2 != 0) {
                                    mutableVector4.b(f8608b2);
                                    f8608b2 = 0;
                                }
                                mutableVector4.b(node6);
                            }
                        } else {
                            f8608b2 = f8608b2;
                            mutableVector4 = mutableVector4;
                        }
                        node6 = node6.g;
                        f8608b2 = f8608b2;
                        mutableVector4 = mutableVector4;
                    }
                    if (i6 == 1) {
                        f8608b2 = f8608b2;
                        mutableVector4 = mutableVector4;
                    } else {
                        f8608b2 = f8608b2;
                        mutableVector4 = mutableVector4;
                    }
                }
                f8608b2 = DelegatableNodeKt.b(mutableVector4);
            }
            if (arrayList != null) {
                int size2 = arrayList.size();
                for (int i7 = 0; i7 < size2; i7++) {
                    if (((SoftKeyboardInterceptionModifierNode) arrayList.get(i7)).F1()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final FocusTargetNode g() {
        FocusTargetNode focusTargetNode = this.f8752h;
        if (focusTargetNode == null || !focusTargetNode.o) {
            return null;
        }
        return focusTargetNode;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final void h(FocusTargetNode focusTargetNode) {
        FocusInvalidationManager focusInvalidationManager = this.d;
        if (focusInvalidationManager.f8743c.d(focusTargetNode)) {
            focusInvalidationManager.a();
        }
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final void i() {
        this.d.a();
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: j, reason: from getter */
    public final FocusOwnerImpl$modifier$1 getF8750e() {
        return this.f8750e;
    }

    /* JADX WARN: Code duplicated, block: B:116:0x0151 A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x015f A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x0164  */
    /* JADX WARN: Code duplicated, block: B:316:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:317:0x0086 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x0059  */
    /* JADX WARN: Code duplicated, block: B:323:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x005b A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:336:0x015a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:337:0x010c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:338:0x0158 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:345:0x0148 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:349:0x0143 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x0061 A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x006c A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0076 A[ADDED_TO_REGION, LOOP:12: B:39:0x0076->B:67:0x00c2, LOOP_START, PHI: r6
      0x0076: PHI (r6v26 androidx.compose.ui.Modifier$Node) = (r6v21 androidx.compose.ui.Modifier$Node), (r6v27 androidx.compose.ui.Modifier$Node) binds: [B:38:0x0074, B:67:0x00c2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:40:0x0078 A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x007e  */
    /* JADX WARN: Code duplicated, block: B:44:0x0082 A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0087 A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x00d9 A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x00df A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x00e5 A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x00f2 A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x00fc A[ADDED_TO_REGION, LOOP:16: B:85:0x00fc->B:113:0x0148, LOOP_START, PHI: r12
      0x00fc: PHI (r12v13 androidx.compose.ui.Modifier$Node) = (r12v8 androidx.compose.ui.Modifier$Node), (r12v14 androidx.compose.ui.Modifier$Node) binds: [B:84:0x00fa, B:113:0x0148] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:86:0x00fe A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0104  */
    /* JADX WARN: Code duplicated, block: B:90:0x0108 A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x010d A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0113 A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:8:0x0019, B:12:0x0023, B:15:0x002f, B:17:0x0035, B:18:0x003a, B:20:0x0042, B:22:0x0047, B:24:0x004d, B:28:0x0053, B:126:0x0167, B:128:0x016d, B:129:0x0170, B:131:0x017b, B:134:0x0187, B:138:0x0191, B:141:0x0197, B:142:0x019c, B:145:0x01a4, B:147:0x01aa, B:149:0x01ae, B:151:0x01b6, B:153:0x01bc, B:157:0x01c4, B:159:0x01cd, B:160:0x01d1, B:161:0x01d4, B:164:0x01da, B:165:0x01df, B:166:0x01e2, B:168:0x01e8, B:170:0x01ec, B:173:0x01f3, B:175:0x01fb, B:182:0x0212, B:184:0x0217, B:186:0x021b, B:209:0x025d, B:190:0x0227, B:192:0x022d, B:194:0x0231, B:196:0x0239, B:198:0x023f, B:202:0x0247, B:204:0x0250, B:205:0x0254, B:206:0x0257, B:210:0x0262, B:214:0x0272, B:216:0x0277, B:218:0x027b, B:241:0x02bd, B:222:0x0287, B:224:0x028d, B:226:0x0291, B:228:0x0299, B:230:0x029f, B:234:0x02a7, B:236:0x02b0, B:237:0x02b4, B:238:0x02b7, B:243:0x02c4, B:245:0x02cb, B:32:0x005b, B:34:0x0061, B:35:0x0064, B:37:0x006c, B:40:0x0078, B:44:0x0082, B:75:0x00d5, B:77:0x00d9, B:47:0x0087, B:49:0x008d, B:51:0x0091, B:53:0x0099, B:55:0x009f, B:59:0x00a7, B:61:0x00b0, B:62:0x00b4, B:63:0x00b7, B:66:0x00bd, B:67:0x00c2, B:68:0x00c5, B:70:0x00cb, B:72:0x00cf, B:78:0x00df, B:80:0x00e5, B:81:0x00e8, B:83:0x00f2, B:86:0x00fe, B:90:0x0108, B:121:0x015b, B:123:0x015f, B:93:0x010d, B:95:0x0113, B:97:0x0117, B:99:0x011f, B:101:0x0125, B:105:0x012d, B:107:0x0136, B:108:0x013a, B:109:0x013d, B:112:0x0143, B:113:0x0148, B:114:0x014b, B:116:0x0151, B:118:0x0155), top: B:255:0x0007 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v20, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r12v23, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v24, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v28, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v29, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v33, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v35, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v36 */
    /* JADX WARN: Type inference failed for: r12v37 */
    /* JADX WARN: Type inference failed for: r12v38 */
    /* JADX WARN: Type inference failed for: r12v39 */
    /* JADX WARN: Type inference failed for: r12v42, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v43 */
    /* JADX WARN: Type inference failed for: r12v44, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v45 */
    /* JADX WARN: Type inference failed for: r12v46 */
    /* JADX WARN: Type inference failed for: r12v47 */
    /* JADX WARN: Type inference failed for: r12v48 */
    /* JADX WARN: Type inference failed for: r12v62 */
    /* JADX WARN: Type inference failed for: r12v63 */
    /* JADX WARN: Type inference failed for: r12v64 */
    /* JADX WARN: Type inference failed for: r12v65 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r6v36 */
    @Override // androidx.compose.ui.focus.FocusOwner
    public final boolean k(KeyEvent keyEvent, Function0 function0) {
        Modifier.Node node;
        LayoutNode layoutNodeF;
        Object obj;
        KeyInputModifierNode keyInputModifierNode;
        Modifier.Node f8608b;
        NodeChain nodeChain;
        Modifier.Node nodeB;
        MutableVector mutableVector;
        Modifier.Node node2;
        LayoutNode layoutNodeF2;
        Object obj2;
        KeyInputModifierNode keyInputModifierNode2;
        NodeChain nodeChain2;
        MutableVector mutableVector2;
        Modifier.Node nodeB2;
        int size;
        NodeChain nodeChain3;
        boolean z;
        FocusTargetNode focusTargetNode = this.f8749c;
        Trace.beginSection("FocusOwnerImpl:dispatchKeyEvent");
        try {
            if (this.d.f8744e) {
                System.out.println((Object) "FocusRelatedWarning: Dispatching key event while focus system is invalidated.");
                Trace.endSection();
                return false;
            }
            if (!C(keyEvent)) {
                Trace.endSection();
                return false;
            }
            FocusTargetNode focusTargetNodeA = FocusTraversalKt.a(focusTargetNode);
            if (focusTargetNodeA != null) {
                if (!focusTargetNodeA.f8608b.o) {
                    InlineClassHelperKt.c("visitLocalDescendants called on an unattached node");
                }
                Modifier.Node node3 = focusTargetNodeA.f8608b;
                if ((node3.f8610e & 9216) != 0) {
                    f8608b = null;
                    for (Modifier.Node node4 = node3.g; node4 != null; node4 = node4.g) {
                        int i2 = node4.d;
                        if ((i2 & 9216) != 0) {
                            if ((i2 & 1024) != 0) {
                                break;
                            }
                            f8608b = node4;
                        }
                    }
                } else {
                    f8608b = null;
                }
                if (f8608b == null) {
                    if (focusTargetNodeA == null) {
                        if (!focusTargetNode.f8608b.o) {
                            InlineClassHelperKt.c("visitAncestors called on an unattached node");
                        }
                        node = focusTargetNode.f8608b.f8611f;
                        layoutNodeF = DelegatableNodeKt.f(focusTargetNode);
                        loop15: while (true) {
                            if (layoutNodeF != null) {
                                obj = null;
                                break;
                            }
                            if ((layoutNodeF.H.f9774f.f8610e & 8192) != 0) {
                                while (node != null) {
                                    if ((node.d & 8192) != 0) {
                                        nodeB = node;
                                        mutableVector = null;
                                        while (nodeB != null) {
                                            if (nodeB instanceof KeyInputModifierNode) {
                                                obj = nodeB;
                                                break loop15;
                                            }
                                            if ((nodeB.d & 8192) == 0) {
                                            }
                                            nodeB = DelegatableNodeKt.b(mutableVector);
                                        }
                                    }
                                    node = node.f8611f;
                                }
                            }
                            layoutNodeF = layoutNodeF.O();
                            if (layoutNodeF != null) {
                            }
                        }
                        keyInputModifierNode = (KeyInputModifierNode) obj;
                        if (keyInputModifierNode != null) {
                            f8608b = keyInputModifierNode.getF8608b();
                        } else {
                            f8608b = null;
                        }
                    } else {
                        if (!focusTargetNodeA.f8608b.o) {
                            InlineClassHelperKt.c("visitAncestors called on an unattached node");
                        }
                        node2 = focusTargetNodeA.f8608b;
                        layoutNodeF2 = DelegatableNodeKt.f(focusTargetNodeA);
                        loop11: while (true) {
                            if (layoutNodeF2 != null) {
                                obj2 = null;
                                break;
                            }
                            if ((layoutNodeF2.H.f9774f.f8610e & 8192) != 0) {
                                while (node2 != null) {
                                    if ((node2.d & 8192) != 0) {
                                        mutableVector2 = null;
                                        nodeB2 = node2;
                                        while (nodeB2 != null) {
                                            if (nodeB2 instanceof KeyInputModifierNode) {
                                                obj2 = nodeB2;
                                                break loop11;
                                            }
                                            if ((nodeB2.d & 8192) == 0) {
                                            }
                                            nodeB2 = DelegatableNodeKt.b(mutableVector2);
                                        }
                                    }
                                    node2 = node2.f8611f;
                                }
                            }
                            layoutNodeF2 = layoutNodeF2.O();
                            if (layoutNodeF2 != null) {
                            }
                        }
                        keyInputModifierNode2 = (KeyInputModifierNode) obj2;
                        if (keyInputModifierNode2 != null) {
                            f8608b = keyInputModifierNode2.getF8608b();
                        } else {
                            if (!focusTargetNode.f8608b.o) {
                                InlineClassHelperKt.c("visitAncestors called on an unattached node");
                            }
                            node = focusTargetNode.f8608b.f8611f;
                            layoutNodeF = DelegatableNodeKt.f(focusTargetNode);
                            loop15: while (true) {
                                if (layoutNodeF != null) {
                                    obj = null;
                                    break;
                                }
                                if ((layoutNodeF.H.f9774f.f8610e & 8192) != 0) {
                                    while (node != null) {
                                        if ((node.d & 8192) != 0) {
                                            nodeB = node;
                                            mutableVector = null;
                                            while (nodeB != null) {
                                                if (nodeB instanceof KeyInputModifierNode) {
                                                    obj = nodeB;
                                                    break loop15;
                                                }
                                                if ((nodeB.d & 8192) == 0) {
                                                }
                                                nodeB = DelegatableNodeKt.b(mutableVector);
                                            }
                                        }
                                        node = node.f8611f;
                                    }
                                }
                                layoutNodeF = layoutNodeF.O();
                                if (layoutNodeF != null) {
                                }
                            }
                            keyInputModifierNode = (KeyInputModifierNode) obj;
                            if (keyInputModifierNode != null) {
                                f8608b = keyInputModifierNode.getF8608b();
                            } else {
                                f8608b = null;
                            }
                        }
                    }
                }
            } else if (focusTargetNodeA == null) {
                if (!focusTargetNode.f8608b.o) {
                    InlineClassHelperKt.c("visitAncestors called on an unattached node");
                }
                node = focusTargetNode.f8608b.f8611f;
                layoutNodeF = DelegatableNodeKt.f(focusTargetNode);
                loop15: while (true) {
                    if (layoutNodeF != null) {
                        obj = null;
                        break;
                    }
                    if ((layoutNodeF.H.f9774f.f8610e & 8192) != 0) {
                        while (node != null) {
                            if ((node.d & 8192) != 0) {
                                nodeB = node;
                                mutableVector = null;
                                while (nodeB != null) {
                                    if (nodeB instanceof KeyInputModifierNode) {
                                        obj = nodeB;
                                        break loop15;
                                    }
                                    if ((nodeB.d & 8192) == 0 && (nodeB instanceof DelegatingNode)) {
                                        Modifier.Node node5 = ((DelegatingNode) nodeB).q;
                                        int i3 = 0;
                                        while (node5 != null) {
                                            if ((node5.d & 8192) != 0) {
                                                i3++;
                                                if (i3 == 1) {
                                                    nodeB = nodeB;
                                                    mutableVector = mutableVector;
                                                    mutableVector = mutableVector;
                                                    nodeB = node5;
                                                } else {
                                                    if (mutableVector == null) {
                                                        mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                    }
                                                    if (nodeB != null) {
                                                        mutableVector.b(nodeB);
                                                        nodeB = null;
                                                    }
                                                    mutableVector.b(node5);
                                                }
                                            } else {
                                                nodeB = nodeB;
                                                mutableVector = mutableVector;
                                            }
                                            node5 = node5.g;
                                            nodeB = nodeB;
                                            mutableVector = mutableVector;
                                        }
                                        if (i3 == 1) {
                                            nodeB = nodeB;
                                            mutableVector = mutableVector;
                                        } else {
                                            nodeB = nodeB;
                                            mutableVector = mutableVector;
                                        }
                                    }
                                    nodeB = DelegatableNodeKt.b(mutableVector);
                                }
                            }
                            node = node.f8611f;
                        }
                    }
                    layoutNodeF = layoutNodeF.O();
                    node = (layoutNodeF != null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
                }
                keyInputModifierNode = (KeyInputModifierNode) obj;
                if (keyInputModifierNode != null) {
                    f8608b = keyInputModifierNode.getF8608b();
                } else {
                    f8608b = null;
                }
            } else {
                if (!focusTargetNodeA.f8608b.o) {
                    InlineClassHelperKt.c("visitAncestors called on an unattached node");
                }
                node2 = focusTargetNodeA.f8608b;
                layoutNodeF2 = DelegatableNodeKt.f(focusTargetNodeA);
                loop11: while (true) {
                    if (layoutNodeF2 != null) {
                        obj2 = null;
                        break;
                    }
                    if ((layoutNodeF2.H.f9774f.f8610e & 8192) != 0) {
                        while (node2 != null) {
                            if ((node2.d & 8192) != 0) {
                                mutableVector2 = null;
                                nodeB2 = node2;
                                while (nodeB2 != null) {
                                    if (nodeB2 instanceof KeyInputModifierNode) {
                                        obj2 = nodeB2;
                                        break loop11;
                                    }
                                    if ((nodeB2.d & 8192) == 0 && (nodeB2 instanceof DelegatingNode)) {
                                        Modifier.Node node6 = ((DelegatingNode) nodeB2).q;
                                        int i4 = 0;
                                        while (node6 != null) {
                                            if ((node6.d & 8192) != 0) {
                                                i4++;
                                                if (i4 == 1) {
                                                    nodeB2 = nodeB2;
                                                    mutableVector2 = mutableVector2;
                                                    mutableVector2 = mutableVector2;
                                                    nodeB2 = node6;
                                                } else {
                                                    if (mutableVector2 == null) {
                                                        mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                    }
                                                    if (nodeB2 != null) {
                                                        mutableVector2.b(nodeB2);
                                                        nodeB2 = null;
                                                    }
                                                    mutableVector2.b(node6);
                                                }
                                            } else {
                                                nodeB2 = nodeB2;
                                                mutableVector2 = mutableVector2;
                                            }
                                            node6 = node6.g;
                                            nodeB2 = nodeB2;
                                            mutableVector2 = mutableVector2;
                                        }
                                        if (i4 == 1) {
                                            nodeB2 = nodeB2;
                                            mutableVector2 = mutableVector2;
                                        } else {
                                            nodeB2 = nodeB2;
                                            mutableVector2 = mutableVector2;
                                        }
                                    }
                                    nodeB2 = DelegatableNodeKt.b(mutableVector2);
                                }
                            }
                            node2 = node2.f8611f;
                        }
                    }
                    layoutNodeF2 = layoutNodeF2.O();
                    node2 = (layoutNodeF2 != null || (nodeChain2 = layoutNodeF2.H) == null) ? null : nodeChain2.f9773e;
                }
                keyInputModifierNode2 = (KeyInputModifierNode) obj2;
                if (keyInputModifierNode2 != null) {
                    f8608b = keyInputModifierNode2.getF8608b();
                } else {
                    if (!focusTargetNode.f8608b.o) {
                        InlineClassHelperKt.c("visitAncestors called on an unattached node");
                    }
                    node = focusTargetNode.f8608b.f8611f;
                    layoutNodeF = DelegatableNodeKt.f(focusTargetNode);
                    loop15: while (true) {
                        if (layoutNodeF != null) {
                            obj = null;
                            break;
                        }
                        if ((layoutNodeF.H.f9774f.f8610e & 8192) != 0) {
                            while (node != null) {
                                if ((node.d & 8192) != 0) {
                                    nodeB = node;
                                    mutableVector = null;
                                    while (nodeB != null) {
                                        if (nodeB instanceof KeyInputModifierNode) {
                                            obj = nodeB;
                                            break loop15;
                                        }
                                        if ((nodeB.d & 8192) == 0) {
                                        }
                                        nodeB = DelegatableNodeKt.b(mutableVector);
                                    }
                                }
                                node = node.f8611f;
                            }
                        }
                        layoutNodeF = layoutNodeF.O();
                        if (layoutNodeF != null) {
                        }
                    }
                    keyInputModifierNode = (KeyInputModifierNode) obj;
                    if (keyInputModifierNode != null) {
                        f8608b = keyInputModifierNode.getF8608b();
                    } else {
                        f8608b = null;
                    }
                }
            }
            if (f8608b != null) {
                if (!f8608b.f8608b.o) {
                    InlineClassHelperKt.c("visitAncestors called on an unattached node");
                }
                Modifier.Node node7 = f8608b.f8608b.f8611f;
                LayoutNode layoutNodeF3 = DelegatableNodeKt.f(f8608b);
                ArrayList arrayList = null;
                while (layoutNodeF3 != null) {
                    if ((layoutNodeF3.H.f9774f.f8610e & 8192) != 0) {
                        while (node7 != null) {
                            if ((node7.d & 8192) != 0) {
                                Modifier.Node nodeB3 = node7;
                                MutableVector mutableVector3 = null;
                                while (nodeB3 != null) {
                                    if (nodeB3 instanceof KeyInputModifierNode) {
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                        }
                                        arrayList.add(nodeB3);
                                        z = false;
                                    } else {
                                        z = true;
                                    }
                                    if (z && (nodeB3.d & 8192) != 0 && (nodeB3 instanceof DelegatingNode)) {
                                        int i5 = 0;
                                        for (Modifier.Node node8 = ((DelegatingNode) nodeB3).q; node8 != null; node8 = node8.g) {
                                            if ((node8.d & 8192) != 0) {
                                                i5++;
                                                if (i5 == 1) {
                                                    nodeB3 = node8;
                                                } else {
                                                    if (mutableVector3 == null) {
                                                        mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                                    }
                                                    if (nodeB3 != null) {
                                                        mutableVector3.b(nodeB3);
                                                        nodeB3 = null;
                                                    }
                                                    mutableVector3.b(node8);
                                                }
                                            }
                                        }
                                        if (i5 == 1) {
                                        }
                                    }
                                    nodeB3 = DelegatableNodeKt.b(mutableVector3);
                                }
                            }
                            node7 = node7.f8611f;
                        }
                    }
                    layoutNodeF3 = layoutNodeF3.O();
                    node7 = (layoutNodeF3 == null || (nodeChain3 = layoutNodeF3.H) == null) ? null : nodeChain3.f9773e;
                }
                if (arrayList != null && (size = arrayList.size() - 1) >= 0) {
                    while (true) {
                        int i6 = size - 1;
                        if (((KeyInputModifierNode) arrayList.get(size)).L0(keyEvent)) {
                            Trace.endSection();
                            return true;
                        }
                        if (i6 < 0) {
                            break;
                        }
                        size = i6;
                    }
                }
                ?? B = f8608b.f8608b;
                ?? mutableVector4 = 0;
                while (B != 0) {
                    if (B instanceof KeyInputModifierNode) {
                        if (((KeyInputModifierNode) B).L0(keyEvent)) {
                            Trace.endSection();
                            return true;
                        }
                    } else if ((B.d & 8192) != 0 && (B instanceof DelegatingNode)) {
                        Modifier.Node node9 = ((DelegatingNode) B).q;
                        int i7 = 0;
                        while (node9 != null) {
                            if ((node9.d & 8192) != 0) {
                                i7++;
                                if (i7 == 1) {
                                    mutableVector4 = mutableVector4;
                                    B = B;
                                    mutableVector4 = mutableVector4;
                                    B = node9;
                                } else {
                                    if (mutableVector4 == 0) {
                                        mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                    }
                                    if (B != 0) {
                                        mutableVector4.b(B);
                                        B = 0;
                                    }
                                    mutableVector4.b(node9);
                                }
                            } else {
                                mutableVector4 = mutableVector4;
                                B = B;
                            }
                            node9 = node9.g;
                            mutableVector4 = mutableVector4;
                            B = B;
                        }
                        if (i7 == 1) {
                            mutableVector4 = mutableVector4;
                            B = B;
                        } else {
                            mutableVector4 = mutableVector4;
                            B = B;
                        }
                    }
                    B = DelegatableNodeKt.b(mutableVector4);
                }
                if (((Boolean) function0.mo47invoke()).booleanValue()) {
                    Trace.endSection();
                    return true;
                }
                ?? B2 = f8608b.f8608b;
                ?? mutableVector5 = 0;
                while (B2 != 0) {
                    if (B2 instanceof KeyInputModifierNode) {
                        if (((KeyInputModifierNode) B2).b1(keyEvent)) {
                            Trace.endSection();
                            return true;
                        }
                    } else if ((B2.d & 8192) != 0 && (B2 instanceof DelegatingNode)) {
                        Modifier.Node node10 = ((DelegatingNode) B2).q;
                        int i8 = 0;
                        while (node10 != null) {
                            if ((node10.d & 8192) != 0) {
                                i8++;
                                if (i8 == 1) {
                                    B2 = B2;
                                    mutableVector5 = mutableVector5;
                                    mutableVector5 = mutableVector5;
                                    B2 = node10;
                                } else {
                                    if (mutableVector5 == 0) {
                                        mutableVector5 = new MutableVector(new Modifier.Node[16], 0);
                                    }
                                    if (B2 != 0) {
                                        mutableVector5.b(B2);
                                        B2 = 0;
                                    }
                                    mutableVector5.b(node10);
                                }
                            } else {
                                B2 = B2;
                                mutableVector5 = mutableVector5;
                            }
                            node10 = node10.g;
                            B2 = B2;
                            mutableVector5 = mutableVector5;
                        }
                        if (i8 == 1) {
                            B2 = B2;
                            mutableVector5 = mutableVector5;
                        } else {
                            B2 = B2;
                            mutableVector5 = mutableVector5;
                        }
                    }
                    B2 = DelegatableNodeKt.b(mutableVector5);
                }
                if (arrayList != null) {
                    int size2 = arrayList.size();
                    for (int i9 = 0; i9 < size2; i9++) {
                        if (((KeyInputModifierNode) arrayList.get(i9)).b1(keyEvent)) {
                            Trace.endSection();
                            return true;
                        }
                    }
                }
            }
            Trace.endSection();
            return false;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v13, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r11v14, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r11v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v26, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r11v27, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v28 */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r11v31 */
    /* JADX WARN: Type inference failed for: r11v47 */
    /* JADX WARN: Type inference failed for: r11v48 */
    /* JADX WARN: Type inference failed for: r11v49 */
    /* JADX WARN: Type inference failed for: r11v50 */
    /* JADX WARN: Type inference failed for: r11v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r11v9, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v20, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v30 */
    /* JADX WARN: Type inference failed for: r12v31 */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r12v33 */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v30, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v33, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r7v16 */
    @Override // androidx.compose.ui.focus.FocusOwner
    public final boolean l(RotaryScrollEvent rotaryScrollEvent, Function0 function0) {
        RotaryInputModifierNode rotaryInputModifierNode;
        int size;
        NodeChain nodeChain;
        boolean z;
        ?? B;
        NodeChain nodeChain2;
        if (this.d.f8744e) {
            System.out.println((Object) "FocusRelatedWarning: Dispatching rotary event while the focus system is invalidated.");
            return false;
        }
        FocusTargetNode focusTargetNodeA = FocusTraversalKt.a(this.f8749c);
        if (focusTargetNodeA != null) {
            if (!focusTargetNodeA.f8608b.o) {
                InlineClassHelperKt.c("visitAncestors called on an unattached node");
            }
            Modifier.Node node = focusTargetNodeA.f8608b;
            LayoutNode layoutNodeF = DelegatableNodeKt.f(focusTargetNodeA);
            loop0: while (true) {
                if (layoutNodeF == null) {
                    B = 0;
                    break;
                }
                if ((layoutNodeF.H.f9774f.f8610e & 16384) != 0) {
                    while (node != null) {
                        if ((node.d & 16384) != 0) {
                            ?? mutableVector = 0;
                            B = node;
                            while (B != 0) {
                                if (B instanceof RotaryInputModifierNode) {
                                    break loop0;
                                }
                                if ((B.d & 16384) != 0 && (B instanceof DelegatingNode)) {
                                    Modifier.Node node2 = ((DelegatingNode) B).q;
                                    int i2 = 0;
                                    while (node2 != null) {
                                        if ((node2.d & 16384) != 0) {
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
                node = (layoutNodeF == null || (nodeChain2 = layoutNodeF.H) == null) ? null : nodeChain2.f9773e;
            }
            rotaryInputModifierNode = (RotaryInputModifierNode) B;
        } else {
            rotaryInputModifierNode = null;
        }
        if (rotaryInputModifierNode != null) {
            if (!rotaryInputModifierNode.getF8608b().o) {
                InlineClassHelperKt.c("visitAncestors called on an unattached node");
            }
            Modifier.Node node3 = rotaryInputModifierNode.getF8608b().f8611f;
            LayoutNode layoutNodeF2 = DelegatableNodeKt.f(rotaryInputModifierNode);
            ArrayList arrayList = null;
            while (layoutNodeF2 != null) {
                if ((layoutNodeF2.H.f9774f.f8610e & 16384) != 0) {
                    while (node3 != null) {
                        if ((node3.d & 16384) != 0) {
                            Modifier.Node nodeB = node3;
                            MutableVector mutableVector2 = null;
                            while (nodeB != null) {
                                if (nodeB instanceof RotaryInputModifierNode) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(nodeB);
                                    z = false;
                                } else {
                                    z = true;
                                }
                                if (z && (nodeB.d & 16384) != 0 && (nodeB instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) nodeB).q; node4 != null; node4 = node4.g) {
                                        if ((node4.d & 16384) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                nodeB = node4;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodeB != null) {
                                                    mutableVector2.b(nodeB);
                                                    nodeB = null;
                                                }
                                                mutableVector2.b(node4);
                                            }
                                        }
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                nodeB = DelegatableNodeKt.b(mutableVector2);
                            }
                        }
                        node3 = node3.f8611f;
                    }
                }
                layoutNodeF2 = layoutNodeF2.O();
                node3 = (layoutNodeF2 == null || (nodeChain = layoutNodeF2.H) == null) ? null : nodeChain.f9773e;
            }
            if (arrayList != null && (size = arrayList.size() - 1) >= 0) {
                while (true) {
                    int i4 = size - 1;
                    ((RotaryInputModifierNode) arrayList.get(size)).getClass();
                    if (i4 < 0) {
                        break;
                    }
                    size = i4;
                }
            }
            ?? f8608b = rotaryInputModifierNode.getF8608b();
            ?? mutableVector3 = 0;
            while (f8608b != 0) {
                if (f8608b instanceof RotaryInputModifierNode) {
                } else if ((f8608b.d & 16384) != 0 && (f8608b instanceof DelegatingNode)) {
                    Modifier.Node node5 = ((DelegatingNode) f8608b).q;
                    int i5 = 0;
                    while (node5 != null) {
                        if ((node5.d & 16384) != 0) {
                            i5++;
                            if (i5 == 1) {
                                f8608b = f8608b;
                                mutableVector3 = mutableVector3;
                                mutableVector3 = mutableVector3;
                                f8608b = node5;
                            } else {
                                if (mutableVector3 == 0) {
                                    mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (f8608b != 0) {
                                    mutableVector3.b(f8608b);
                                    f8608b = 0;
                                }
                                mutableVector3.b(node5);
                            }
                        } else {
                            f8608b = f8608b;
                            mutableVector3 = mutableVector3;
                        }
                        node5 = node5.g;
                        f8608b = f8608b;
                        mutableVector3 = mutableVector3;
                    }
                    if (i5 == 1) {
                        f8608b = f8608b;
                        mutableVector3 = mutableVector3;
                    } else {
                        f8608b = f8608b;
                        mutableVector3 = mutableVector3;
                    }
                }
                f8608b = DelegatableNodeKt.b(mutableVector3);
            }
            if (((Boolean) function0.mo47invoke()).booleanValue()) {
                return true;
            }
            ?? f8608b2 = rotaryInputModifierNode.getF8608b();
            ?? mutableVector4 = 0;
            while (f8608b2 != 0) {
                if (f8608b2 instanceof RotaryInputModifierNode) {
                } else if ((f8608b2.d & 16384) != 0 && (f8608b2 instanceof DelegatingNode)) {
                    Modifier.Node node6 = ((DelegatingNode) f8608b2).q;
                    int i6 = 0;
                    while (node6 != null) {
                        if ((node6.d & 16384) != 0) {
                            i6++;
                            if (i6 == 1) {
                                f8608b2 = f8608b2;
                                mutableVector4 = mutableVector4;
                                mutableVector4 = mutableVector4;
                                f8608b2 = node6;
                            } else {
                                if (mutableVector4 == 0) {
                                    mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (f8608b2 != 0) {
                                    mutableVector4.b(f8608b2);
                                    f8608b2 = 0;
                                }
                                mutableVector4.b(node6);
                            }
                        } else {
                            f8608b2 = f8608b2;
                            mutableVector4 = mutableVector4;
                        }
                        node6 = node6.g;
                        f8608b2 = f8608b2;
                        mutableVector4 = mutableVector4;
                    }
                    if (i6 == 1) {
                        f8608b2 = f8608b2;
                        mutableVector4 = mutableVector4;
                    } else {
                        f8608b2 = f8608b2;
                        mutableVector4 = mutableVector4;
                    }
                }
                f8608b2 = DelegatableNodeKt.b(mutableVector4);
            }
            if (arrayList != null) {
                int size2 = arrayList.size();
                for (int i7 = 0; i7 < size2; i7++) {
                    ((RotaryInputModifierNode) arrayList.get(i7)).getClass();
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r9v12 */
    @Override // androidx.compose.ui.focus.FocusOwner
    public final void m() {
        IndirectPointerInputModifierNode indirectPointerInputModifierNode;
        NodeChain nodeChain;
        boolean z;
        ?? B;
        NodeChain nodeChain2;
        FocusTargetNode focusTargetNodeG = g();
        if (focusTargetNodeG != null) {
            if (!focusTargetNodeG.f8608b.o) {
                InlineClassHelperKt.c("visitAncestors called on an unattached node");
            }
            Modifier.Node node = focusTargetNodeG.f8608b;
            LayoutNode layoutNodeF = DelegatableNodeKt.f(focusTargetNodeG);
            loop0: while (true) {
                if (layoutNodeF == null) {
                    B = 0;
                    break;
                }
                if ((layoutNodeF.H.f9774f.f8610e & PKIFailureInfo.badSenderNonce) != 0) {
                    while (node != null) {
                        if ((node.d & PKIFailureInfo.badSenderNonce) != 0) {
                            ?? mutableVector = 0;
                            B = node;
                            while (B != 0) {
                                if (B instanceof IndirectPointerInputModifierNode) {
                                    break loop0;
                                }
                                if ((B.d & PKIFailureInfo.badSenderNonce) != 0 && (B instanceof DelegatingNode)) {
                                    Modifier.Node node2 = ((DelegatingNode) B).q;
                                    int i2 = 0;
                                    while (node2 != null) {
                                        if ((node2.d & PKIFailureInfo.badSenderNonce) != 0) {
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
                node = (layoutNodeF == null || (nodeChain2 = layoutNodeF.H) == null) ? null : nodeChain2.f9773e;
            }
            indirectPointerInputModifierNode = (IndirectPointerInputModifierNode) B;
        } else {
            indirectPointerInputModifierNode = null;
        }
        if (indirectPointerInputModifierNode != null) {
            if (!indirectPointerInputModifierNode.getF8608b().o) {
                InlineClassHelperKt.c("visitAncestors called on an unattached node");
            }
            Modifier.Node node3 = indirectPointerInputModifierNode.getF8608b().f8611f;
            LayoutNode layoutNodeF2 = DelegatableNodeKt.f(indirectPointerInputModifierNode);
            ArrayList arrayList = null;
            while (layoutNodeF2 != null) {
                if ((layoutNodeF2.H.f9774f.f8610e & PKIFailureInfo.badSenderNonce) != 0) {
                    while (node3 != null) {
                        if ((node3.d & PKIFailureInfo.badSenderNonce) != 0) {
                            Modifier.Node nodeB = node3;
                            MutableVector mutableVector2 = null;
                            while (nodeB != null) {
                                if (nodeB instanceof IndirectPointerInputModifierNode) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(nodeB);
                                    z = false;
                                } else {
                                    z = true;
                                }
                                if (z && (nodeB.d & PKIFailureInfo.badSenderNonce) != 0 && (nodeB instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) nodeB).q; node4 != null; node4 = node4.g) {
                                        if ((node4.d & PKIFailureInfo.badSenderNonce) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                nodeB = node4;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodeB != null) {
                                                    mutableVector2.b(nodeB);
                                                    nodeB = null;
                                                }
                                                mutableVector2.b(node4);
                                            }
                                        }
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                nodeB = DelegatableNodeKt.b(mutableVector2);
                            }
                        }
                        node3 = node3.f8611f;
                    }
                }
                layoutNodeF2 = layoutNodeF2.O();
                node3 = (layoutNodeF2 == null || (nodeChain = layoutNodeF2.H) == null) ? null : nodeChain.f9773e;
            }
            indirectPointerInputModifierNode.w1();
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i4 = 0; i4 < size; i4++) {
                    ((IndirectPointerInputModifierNode) arrayList.get(i4)).w1();
                }
            }
        }
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final boolean n() {
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final boolean o() {
        FocusTargetNode focusTargetNode = this.f8749c;
        if (focusTargetNode.o) {
            if (!focusTargetNode.f8608b.o) {
                InlineClassHelperKt.c("visitSubtreeIf called on an unattached node");
            }
            MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
            Modifier.Node node = focusTargetNode.f8608b;
            Modifier.Node node2 = node.g;
            if (node2 == null) {
                DelegatableNodeKt.a(mutableVector, node);
            } else {
                mutableVector.b(node2);
            }
            while (true) {
                int i2 = mutableVector.d;
                if (i2 == 0) {
                    break;
                }
                Modifier.Node node3 = (Modifier.Node) mutableVector.o(i2 - 1);
                if ((node3.f8610e & 1024) != 0) {
                    for (Modifier.Node node4 = node3; node4 != null && node4.o; node4 = node4.g) {
                        if ((node4.d & 1024) != 0) {
                            Modifier.Node nodeB = node4;
                            MutableVector mutableVector2 = null;
                            while (nodeB != null) {
                                if (nodeB instanceof FocusTargetNode) {
                                    FocusTargetNode focusTargetNode2 = (FocusTargetNode) nodeB;
                                    if (focusTargetNode2.o) {
                                        FocusPropertiesImpl focusPropertiesImplJ2 = focusTargetNode2.j2();
                                        if (focusTargetNode2.o && !focusTargetNode2.p && focusPropertiesImplJ2.f8764b) {
                                            return true;
                                        }
                                    }
                                } else if ((nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node node5 = ((DelegatingNode) nodeB).q; node5 != null; node5 = node5.g) {
                                        if ((node5.d & 1024) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                nodeB = node5;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodeB != null) {
                                                    mutableVector2.b(nodeB);
                                                    nodeB = null;
                                                }
                                                mutableVector2.b(node5);
                                            }
                                        }
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                nodeB = DelegatableNodeKt.b(mutableVector2);
                            }
                        }
                    }
                }
                DelegatableNodeKt.a(mutableVector, node3);
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final FocusStateImpl q() {
        return this.f8749c.W();
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final boolean r() {
        FocusTargetNode focusTargetNode = this.f8749c;
        if (focusTargetNode.o) {
            if (!focusTargetNode.f8608b.o) {
                InlineClassHelperKt.c("visitSubtreeIf called on an unattached node");
            }
            MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
            Modifier.Node node = focusTargetNode.f8608b;
            Modifier.Node node2 = node.g;
            if (node2 == null) {
                DelegatableNodeKt.a(mutableVector, node);
            } else {
                mutableVector.b(node2);
            }
            while (true) {
                int i2 = mutableVector.d;
                if (i2 == 0) {
                    break;
                }
                Modifier.Node node3 = (Modifier.Node) mutableVector.o(i2 - 1);
                if ((node3.f8610e & 1024) != 0) {
                    for (Modifier.Node node4 = node3; node4 != null && node4.o; node4 = node4.g) {
                        if ((node4.d & 1024) != 0) {
                            Modifier.Node nodeB = node4;
                            MutableVector mutableVector2 = null;
                            while (nodeB != null) {
                                if (nodeB instanceof FocusTargetNode) {
                                    FocusTargetNode focusTargetNode2 = (FocusTargetNode) nodeB;
                                    if (focusTargetNode2.o && focusTargetNode2.j2().f8764b) {
                                        return true;
                                    }
                                } else if ((nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node node5 = ((DelegatingNode) nodeB).q; node5 != null; node5 = node5.g) {
                                        if ((node5.d & 1024) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                nodeB = node5;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodeB != null) {
                                                    mutableVector2.b(nodeB);
                                                    nodeB = null;
                                                }
                                                mutableVector2.b(node5);
                                            }
                                        }
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                nodeB = DelegatableNodeKt.b(mutableVector2);
                            }
                        }
                    }
                }
                DelegatableNodeKt.a(mutableVector, node3);
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final boolean s(final int i2) {
        if (!u(i2, false, false)) {
            return false;
        }
        Boolean boolA = A(i2, null, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$resetFocus$successfulReset$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(((FocusTargetNode) obj).H(i2));
            }
        });
        boolean zBooleanValue = boolA != null ? boolA.booleanValue() : false;
        if (!zBooleanValue) {
            a();
        }
        return zBooleanValue;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final Rect t() {
        FocusTargetNode focusTargetNodeA = FocusTraversalKt.a(this.f8749c);
        if (focusTargetNodeA != null) {
            return FocusTraversalKt.b(focusTargetNodeA);
        }
        return null;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final boolean u(int i2, boolean z, boolean z2) {
        boolean z3 = true;
        if (z) {
            B(z);
        } else {
            int i3 = WhenMappings.f8753a[FocusTransactionsKt.b(this.f8749c, i2).ordinal()];
            if (i3 == 1 || i3 == 2 || i3 == 3) {
                z3 = false;
            } else {
                if (i3 != 4) {
                    v40.g();
                    return false;
                }
                B(z);
            }
        }
        if (z3 && z2) {
            a();
        }
        return z3;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final void v(FocusTargetNode focusTargetNode) {
        FocusTargetNode focusTargetNode2 = this.f8752h;
        this.f8752h = focusTargetNode;
        MutableObjectList mutableObjectList = this.g;
        Object[] objArr = mutableObjectList.f3345a;
        int i2 = mutableObjectList.f3346b;
        for (int i3 = 0; i3 < i2; i3++) {
            ((FocusListener) objArr[i3]).A(focusTargetNode2, focusTargetNode);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r9v12 */
    @Override // androidx.compose.ui.focus.FocusOwner
    public final boolean w(AndroidIndirectPointerEvent androidIndirectPointerEvent) {
        IndirectPointerInputModifierNode indirectPointerInputModifierNode;
        int size;
        int size2;
        NodeChain nodeChain;
        boolean z;
        ?? B;
        NodeChain nodeChain2;
        if (this.d.f8744e) {
            System.out.println((Object) "FocusRelatedWarning: Dispatching indirect pointer event while the focus system is invalidated.");
            return false;
        }
        FocusTargetNode focusTargetNodeG = g();
        if (focusTargetNodeG != null) {
            if (!focusTargetNodeG.f8608b.o) {
                InlineClassHelperKt.c("visitAncestors called on an unattached node");
            }
            Modifier.Node node = focusTargetNodeG.f8608b;
            LayoutNode layoutNodeF = DelegatableNodeKt.f(focusTargetNodeG);
            loop0: while (true) {
                if (layoutNodeF == null) {
                    B = 0;
                    break;
                }
                if ((layoutNodeF.H.f9774f.f8610e & PKIFailureInfo.badSenderNonce) != 0) {
                    while (node != null) {
                        if ((node.d & PKIFailureInfo.badSenderNonce) != 0) {
                            ?? mutableVector = 0;
                            B = node;
                            while (B != 0) {
                                if (B instanceof IndirectPointerInputModifierNode) {
                                    break loop0;
                                }
                                if ((B.d & PKIFailureInfo.badSenderNonce) != 0 && (B instanceof DelegatingNode)) {
                                    Modifier.Node node2 = ((DelegatingNode) B).q;
                                    int i2 = 0;
                                    while (node2 != null) {
                                        if ((node2.d & PKIFailureInfo.badSenderNonce) != 0) {
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
                node = (layoutNodeF == null || (nodeChain2 = layoutNodeF.H) == null) ? null : nodeChain2.f9773e;
            }
            indirectPointerInputModifierNode = (IndirectPointerInputModifierNode) B;
        } else {
            indirectPointerInputModifierNode = null;
        }
        if (indirectPointerInputModifierNode != null) {
            if (!indirectPointerInputModifierNode.getF8608b().o) {
                InlineClassHelperKt.c("visitAncestors called on an unattached node");
            }
            Modifier.Node node3 = indirectPointerInputModifierNode.getF8608b().f8611f;
            LayoutNode layoutNodeF2 = DelegatableNodeKt.f(indirectPointerInputModifierNode);
            ArrayList arrayList = null;
            while (layoutNodeF2 != null) {
                if ((layoutNodeF2.H.f9774f.f8610e & PKIFailureInfo.badSenderNonce) != 0) {
                    while (node3 != null) {
                        if ((node3.d & PKIFailureInfo.badSenderNonce) != 0) {
                            Modifier.Node nodeB = node3;
                            MutableVector mutableVector2 = null;
                            while (nodeB != null) {
                                if (nodeB instanceof IndirectPointerInputModifierNode) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(nodeB);
                                    z = false;
                                } else {
                                    z = true;
                                }
                                if (z && (nodeB.d & PKIFailureInfo.badSenderNonce) != 0 && (nodeB instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) nodeB).q; node4 != null; node4 = node4.g) {
                                        if ((node4.d & PKIFailureInfo.badSenderNonce) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                nodeB = node4;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodeB != null) {
                                                    mutableVector2.b(nodeB);
                                                    nodeB = null;
                                                }
                                                mutableVector2.b(node4);
                                            }
                                        }
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                nodeB = DelegatableNodeKt.b(mutableVector2);
                            }
                        }
                        node3 = node3.f8611f;
                    }
                }
                layoutNodeF2 = layoutNodeF2.O();
                node3 = (layoutNodeF2 == null || (nodeChain = layoutNodeF2.H) == null) ? null : nodeChain.f9773e;
            }
            if (arrayList != null && (size2 = arrayList.size() - 1) >= 0) {
                while (true) {
                    int i4 = size2 - 1;
                    ((IndirectPointerInputModifierNode) arrayList.get(size2)).I(androidIndirectPointerEvent, PointerEventPass.Initial);
                    if (i4 < 0) {
                        break;
                    }
                    size2 = i4;
                }
            }
            indirectPointerInputModifierNode.I(androidIndirectPointerEvent, PointerEventPass.Initial);
            indirectPointerInputModifierNode.I(androidIndirectPointerEvent, PointerEventPass.Main);
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i5 = 0; i5 < size3; i5++) {
                    ((IndirectPointerInputModifierNode) arrayList.get(i5)).I(androidIndirectPointerEvent, PointerEventPass.Main);
                }
            }
            if (arrayList != null && (size = arrayList.size() - 1) >= 0) {
                while (true) {
                    int i6 = size - 1;
                    ((IndirectPointerInputModifierNode) arrayList.get(size)).I(androidIndirectPointerEvent, PointerEventPass.Final);
                    if (i6 < 0) {
                        break;
                    }
                    size = i6;
                }
            }
            indirectPointerInputModifierNode.I(androidIndirectPointerEvent, PointerEventPass.Final);
        }
        List list = androidIndirectPointerEvent.f9210a;
        int size4 = list.size();
        for (int i7 = 0; i7 < size4; i7++) {
            if (((IndirectPointerInputChange) list.get(i7)).f9225i) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public final void x() {
        FocusTransactionsKt.a(this.f8749c, true);
        if (g() != null) {
            FocusTargetNode focusTargetNodeG = g();
            v(null);
            if (focusTargetNodeG != null) {
                focusTargetNodeG.i2(FocusStateImpl.Active, FocusStateImpl.Inactive);
            }
        }
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: y, reason: from getter */
    public final MutableObjectList getG() {
        return this.g;
    }

    @Override // androidx.compose.ui.focus.FocusManager
    public final void z(boolean z) {
        FocusDirection.f8731b.getClass();
        u(FocusDirection.f8737j, z, true);
    }
}
