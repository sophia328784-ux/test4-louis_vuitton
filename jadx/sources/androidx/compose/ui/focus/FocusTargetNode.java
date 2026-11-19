package androidx.compose.ui.focus;

import android.os.Trace;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.layout.BeyondBoundsLayoutProviderModifierNode;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.modifier.ModifierLocalMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001\u0017Bo\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012:\b\u0002\u0010\u0012\u001a4\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000b\u0012\u0016\b\u0002\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Landroidx/compose/ui/focus/FocusTargetNode;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/ui/node/LayoutAwareModifierNode;", "Landroidx/compose/ui/focus/FocusTargetModifierNode;", "Landroidx/compose/ui/node/ObserverModifierNode;", "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/focus/Focusability;", "focusability", "", "isInteropViewHost", "Lkotlin/Function2;", "Landroidx/compose/ui/focus/FocusState;", "Lkotlin/ParameterName;", "name", "previous", "current", "", "onFocusChange", "Lkotlin/Function1;", "onDispatchEventsCompleted", "<init>", "(IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "FocusTargetElement", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FocusTargetNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutAwareModifierNode, FocusTargetModifierNode, ObserverModifierNode, ModifierLocalModifierNode {
    public final boolean p;
    public final Function2 q;
    public final Function1 r;
    public boolean s;
    public boolean t;
    public final int u;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/focus/FocusTargetNode$FocusTargetElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/focus/FocusTargetNode;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class FocusTargetElement extends ModifierNodeElement<FocusTargetNode> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FocusTargetElement f8781b = new FocusTargetElement();

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final Modifier.Node a() {
            return new FocusTargetNode(0, false, null, null, 15, null);
        }

        public final boolean equals(Object obj) {
            return obj == this;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final /* bridge */ /* synthetic */ void g(Modifier.Node node) {
        }

        public final int hashCode() {
            return 1739042953;
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8782a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f8783b;

        static {
            int[] iArr = new int[CustomDestinationResult.values().length];
            try {
                iArr[CustomDestinationResult.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomDestinationResult.Redirected.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CustomDestinationResult.Cancelled.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CustomDestinationResult.RedirectCancelled.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f8782a = iArr;
            int[] iArr2 = new int[FocusStateImpl.values().length];
            try {
                iArr2[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FocusStateImpl.Captured.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[FocusStateImpl.ActiveParent.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            f8783b = iArr2;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FocusTargetNode(int i2, boolean z, Function2 function2, Function1 function1, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i3 & 1) != 0) {
            Focusability.f8790a.getClass();
            i2 = Focusability.f8791b;
        }
        this(i2, (i3 & 2) != 0 ? false : z, (i3 & 4) != 0 ? null : function2, (i3 & 8) != 0 ? null : function1, null);
    }

    @Override // androidx.compose.ui.focus.FocusTargetModifierNode
    public final boolean H(final int i2) {
        Trace.beginSection("FocusTransactions:requestFocus");
        try {
            return j2().f8764b ? h2(i2) : TwoDimensionalFocusSearchKt.e(this, i2, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusTargetNode$requestFocus$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(((FocusTargetNode) obj).h2(i2));
                }
            });
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        int i2 = WhenMappings.f8783b[W().ordinal()];
        if (i2 == 1 || i2 == 2) {
            FocusOwner focusOwner = DelegatableNodeKt.g(this).getFocusOwner();
            FocusDirection.f8731b.getClass();
            focusOwner.u(FocusDirection.f8737j, true, false);
            if (this.p) {
                focusOwner.b();
            }
            focusOwner.i();
            return;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return;
            }
            v40.g();
            return;
        }
        FocusOwner focusOwner2 = DelegatableNodeKt.g(this).getFocusOwner();
        FocusTargetNode focusTargetNodeA = FocusTraversalKt.a(this);
        if (focusTargetNodeA == null || !focusTargetNodeA.p) {
            return;
        }
        focusOwner2.b();
        focusOwner2.i();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void b2() {
        if (W().a()) {
            FocusOwner focusOwner = DelegatableNodeKt.g(this).getFocusOwner();
            FocusDirection.f8731b.getClass();
            focusOwner.u(FocusDirection.f8737j, true, true);
        }
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final void h(LayoutCoordinates layoutCoordinates) {
    }

    public final boolean h2(int i2) {
        int i3 = WhenMappings.f8782a[FocusTransactionsKt.d(this, i2).ordinal()];
        if (i3 == 1) {
            return FocusTransactionsKt.e(this);
        }
        if (i3 == 2) {
            return true;
        }
        if (i3 == 3 || i3 == 4) {
            return false;
        }
        v40.g();
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v5 */
    public final void i2(FocusStateImpl focusStateImpl, FocusStateImpl focusStateImpl2) {
        NodeChain nodeChain;
        Function2 function2;
        FocusOwner focusOwner = DelegatableNodeKt.g(this).getFocusOwner();
        FocusTargetNode focusTargetNodeG = focusOwner.g();
        if (!Intrinsics.c(focusStateImpl, focusStateImpl2) && (function2 = this.q) != null) {
            function2.invoke(focusStateImpl, focusStateImpl2);
        }
        Modifier.Node node = this.f8608b;
        if (!node.o) {
            InlineClassHelperKt.c("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = this.f8608b;
        LayoutNode layoutNodeF = DelegatableNodeKt.f(this);
        loop0: while (layoutNodeF != null) {
            if ((layoutNodeF.H.f9774f.f8610e & 5120) != 0) {
                while (node2 != null) {
                    int i2 = node2.d;
                    if ((i2 & 5120) != 0) {
                        if (node2 != node && (i2 & 1024) != 0) {
                            break loop0;
                        }
                        if ((i2 & 4096) != 0) {
                            ?? B = node2;
                            ?? mutableVector = 0;
                            while (B != 0) {
                                if (B instanceof FocusEventModifierNode) {
                                    FocusEventModifierNode focusEventModifierNode = (FocusEventModifierNode) B;
                                    if (focusTargetNodeG == focusOwner.g()) {
                                        focusEventModifierNode.E(focusStateImpl2);
                                    }
                                } else if ((B.d & 4096) != 0 && (B instanceof DelegatingNode)) {
                                    Modifier.Node node3 = ((DelegatingNode) B).q;
                                    int i3 = 0;
                                    B = B;
                                    mutableVector = mutableVector;
                                    while (node3 != null) {
                                        if ((node3.d & 4096) != 0) {
                                            i3++;
                                            if (i3 == 1) {
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
                                        }
                                        node3 = node3.g;
                                        B = B;
                                        mutableVector = mutableVector;
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                B = DelegatableNodeKt.b(mutableVector);
                            }
                        }
                    }
                    node2 = node2.f8611f;
                }
            }
            layoutNodeF = layoutNodeF.O();
            node2 = (layoutNodeF == null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
        }
        Function1 function1 = this.r;
        if (function1 != null) {
            function1.invoke(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v4 */
    public final FocusPropertiesImpl j2() {
        boolean z;
        NodeChain nodeChain;
        FocusPropertiesImpl focusPropertiesImpl = new FocusPropertiesImpl();
        int i2 = Focusability.f8791b;
        int i3 = this.u;
        if (i3 == i2) {
            z = true;
        } else if (i3 == 0) {
            int iA = ((InputModeManager) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.m)).a();
            InputMode.f9205b.getClass();
            z = !(iA == InputMode.f9206c);
        } else {
            if (i3 != Focusability.f8792c) {
                md.k("Unknown Focusability");
                return null;
            }
            z = false;
        }
        focusPropertiesImpl.f8764b = z;
        Modifier.Node node = this.f8608b;
        if (!node.o) {
            InlineClassHelperKt.c("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = this.f8608b;
        LayoutNode layoutNodeF = DelegatableNodeKt.f(this);
        loop0: while (layoutNodeF != null) {
            if ((layoutNodeF.H.f9774f.f8610e & 3072) != 0) {
                while (node2 != null) {
                    int i4 = node2.d;
                    if ((i4 & 3072) != 0) {
                        if (node2 != node && (i4 & 1024) != 0) {
                            break loop0;
                        }
                        if ((i4 & 2048) != 0) {
                            ?? mutableVector = 0;
                            ?? B = node2;
                            while (B != 0) {
                                if (B instanceof FocusPropertiesModifierNode) {
                                    ((FocusPropertiesModifierNode) B).X0(focusPropertiesImpl);
                                } else if ((B.d & 2048) != 0 && (B instanceof DelegatingNode)) {
                                    Modifier.Node node3 = ((DelegatingNode) B).q;
                                    int i5 = 0;
                                    while (node3 != null) {
                                        if ((node3.d & 2048) != 0) {
                                            i5++;
                                            if (i5 == 1) {
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
                                    if (i5 == 1) {
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
                    }
                    node2 = node2.f8611f;
                }
            }
            layoutNodeF = layoutNodeF.O();
            node2 = (layoutNodeF == null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
        }
        return focusPropertiesImpl;
    }

    public final Rect k2(LayoutCoordinates layoutCoordinates) {
        Rect rectL;
        Rect rect = j2().m;
        FocusProperties.f8760a.getClass();
        if (rect != FocusProperties.Companion.f8762b) {
            return layoutCoordinates == null ? rect : rect.i(LayoutCoordinates.f0(layoutCoordinates, DelegatableNodeKt.e(this), 6));
        }
        if (layoutCoordinates != null && (rectL = layoutCoordinates.L(DelegatableNodeKt.e(this), false)) != null) {
            return rectL;
        }
        Offset.f8806b.getClass();
        return RectKt.a(0L, IntSizeKt.d(DelegatableNodeKt.e(this).d));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    public final BeyondBoundsLayout l2() {
        NodeChain nodeChain;
        ?? r0;
        ?? r4;
        if (!this.f8608b.o) {
            InlineClassHelperKt.c("visitAncestors called on an unattached node");
        }
        Modifier.Node node = this.f8608b.f8611f;
        LayoutNode layoutNodeF = DelegatableNodeKt.f(this);
        loop0: while (layoutNodeF != null) {
            if ((layoutNodeF.H.f9774f.f8610e & 8388640) != 0) {
                while (r0 != 0) {
                    int i2 = r0.d;
                    if ((i2 & 8388640) != 0) {
                        if ((8388608 & i2) != 0) {
                            if (!(r0 instanceof BeyondBoundsLayoutProviderModifierNode)) {
                                if (r0 instanceof DelegatingNode) {
                                    Modifier.Node node2 = ((DelegatingNode) r0).q;
                                    r0 = 0;
                                    while (node2 != null) {
                                        if (node2 instanceof BeyondBoundsLayoutProviderModifierNode) {
                                            r0 = node2;
                                        }
                                        node2 = node2.g;
                                        r0 = r0;
                                    }
                                } else {
                                    r0 = 0;
                                }
                            }
                            BeyondBoundsLayoutProviderModifierNode beyondBoundsLayoutProviderModifierNode = (BeyondBoundsLayoutProviderModifierNode) r0;
                            if (beyondBoundsLayoutProviderModifierNode == null) {
                                break loop0;
                            }
                            return beyondBoundsLayoutProviderModifierNode.A1();
                        }
                        if ((i2 & 32) == 0) {
                            continue;
                        } else {
                            if (r0 instanceof ModifierLocalModifierNode) {
                                r4 = r0;
                            } else if (r0 instanceof DelegatingNode) {
                                Modifier.Node node3 = ((DelegatingNode) r0).q;
                                r4 = 0;
                                while (node3 != null) {
                                    if (node3 instanceof ModifierLocalModifierNode) {
                                        r4 = node3;
                                    }
                                    node3 = node3.g;
                                    r4 = r4;
                                }
                            } else {
                                r4 = 0;
                            }
                            ModifierLocalModifierNode modifierLocalModifierNode = (ModifierLocalModifierNode) r4;
                            if (modifierLocalModifierNode != null) {
                                ModifierLocalMap modifierLocalMapS0 = modifierLocalModifierNode.s0();
                                ProvidableModifierLocal providableModifierLocal = androidx.compose.ui.layout.BeyondBoundsLayoutKt.f9442a;
                                if (modifierLocalMapS0.a(providableModifierLocal)) {
                                    return (BeyondBoundsLayout) modifierLocalModifierNode.s0().b(providableModifierLocal);
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                    r0 = r0.f8611f;
                }
            }
            r0 = node;
            layoutNodeF = layoutNodeF.O();
            node = (layoutNodeF == null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
        }
        return null;
    }

    @Override // androidx.compose.ui.focus.FocusTargetModifierNode
    /* JADX INFO: renamed from: m2, reason: merged with bridge method [inline-methods] */
    public final FocusStateImpl W() {
        FocusOwner focusOwner;
        FocusTargetNode focusTargetNodeG;
        NodeChain nodeChain;
        if (this.o && (focusTargetNodeG = (focusOwner = DelegatableNodeKt.g(this).getFocusOwner()).g()) != null) {
            if (this == focusTargetNodeG) {
                return focusOwner.n() ? FocusStateImpl.Captured : FocusStateImpl.Active;
            }
            if (focusTargetNodeG.o) {
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
                                        if (this == ((FocusTargetNode) nodeB)) {
                                            return FocusStateImpl.ActiveParent;
                                        }
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
            return FocusStateImpl.Inactive;
        }
        return FocusStateImpl.Inactive;
    }

    public final void n2() {
        int i2 = WhenMappings.f8783b[W().ordinal()];
        if (i2 != 1 && i2 != 2) {
            if (i2 == 3 || i2 == 4) {
                return;
            }
            v40.g();
            return;
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ObserverModifierNodeKt.a(this, new Function0<Unit>() { // from class: androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ref$ObjectRef.f71921b = this.j2();
                return Unit.f71739a;
            }
        });
        Object obj = ref$ObjectRef.f71921b;
        if (obj == null) {
            Intrinsics.h("focusProperties");
            throw null;
        }
        if (((FocusProperties) obj).getF8764b()) {
            return;
        }
        DelegatableNodeKt.g(this).getFocusOwner().z(true);
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void y0() {
        n2();
    }

    public FocusTargetNode(int i2, boolean z, Function2 function2, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this.p = z;
        this.q = function2;
        this.r = function1;
        this.u = i2;
    }
}
