package androidx.compose.ui.viewinterop;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusEnterExitScope;
import androidx.compose.ui.focus.FocusInteropUtils_androidKt;
import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.FocusTransactionsKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.Owner;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;", "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class FocusGroupPropertiesNode extends Modifier.Node implements FocusPropertiesModifierNode, ViewTreeObserver.OnGlobalFocusChangeListener {
    public View p;
    public ViewTreeObserver q;
    public final Function1 r = new Function1<FocusEnterExitScope, Unit>() { // from class: androidx.compose.ui.viewinterop.FocusGroupPropertiesNode$onEnter$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Rect rect;
            FocusEnterExitScope focusEnterExitScope = (FocusEnterExitScope) obj;
            FocusGroupPropertiesNode focusGroupPropertiesNode = this.f11097c;
            View viewA = FocusGroupNode_androidKt.a(focusGroupPropertiesNode);
            if (!viewA.isFocused() && !viewA.hasFocus()) {
                FocusOwner focusOwner = DelegatableNodeKt.g(focusGroupPropertiesNode).getFocusOwner();
                View viewA2 = DelegatableNode_androidKt.a(focusGroupPropertiesNode);
                Integer numC = FocusInteropUtils_androidKt.c(focusEnterExitScope.getF8728a());
                int[] iArr = new int[2];
                viewA2.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                viewA.getLocationOnScreen(iArr2);
                androidx.compose.ui.geometry.Rect rectT = focusOwner.t();
                if (rectT == null) {
                    rect = null;
                } else {
                    int i2 = (int) rectT.f8811a;
                    int i3 = iArr[0];
                    int i4 = iArr2[0];
                    int i5 = (int) rectT.f8812b;
                    int i6 = iArr[1];
                    int i7 = iArr2[1];
                    rect = new Rect((i2 + i3) - i4, (i5 + i6) - i7, (((int) rectT.f8813c) + i3) - i4, (((int) rectT.d) + i6) - i7);
                }
                if (!FocusInteropUtils_androidKt.b(viewA, numC, rect)) {
                    focusEnterExitScope.a();
                }
            }
            return Unit.f71739a;
        }
    };
    public final Function1 s = new Function1<FocusEnterExitScope, Unit>() { // from class: androidx.compose.ui.viewinterop.FocusGroupPropertiesNode$onExit$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            FocusGroupNode_androidKt.a(this.f11098c);
            return Unit.f71739a;
        }
    };

    @Override // androidx.compose.ui.focus.FocusPropertiesModifierNode
    public final void X0(FocusProperties focusProperties) {
        focusProperties.b(false);
        focusProperties.c(this.r);
        focusProperties.e(this.s);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        ViewTreeObserver viewTreeObserver = DelegatableNode_androidKt.a(this).getViewTreeObserver();
        this.q = viewTreeObserver;
        viewTreeObserver.addOnGlobalFocusChangeListener(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        ViewTreeObserver viewTreeObserver = this.q;
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnGlobalFocusChangeListener(this);
        }
        this.q = null;
        DelegatableNode_androidKt.a(this).getViewTreeObserver().removeOnGlobalFocusChangeListener(this);
        this.p = null;
    }

    public final FocusTargetNode h2() {
        boolean z;
        if (!this.f8608b.o) {
            InlineClassHelperKt.c("visitLocalDescendants called on an unattached node");
        }
        Modifier.Node node = this.f8608b;
        if ((node.f8610e & 1024) != 0) {
            boolean z2 = false;
            for (Modifier.Node node2 = node.g; node2 != null; node2 = node2.g) {
                if ((node2.d & 1024) != 0) {
                    Modifier.Node nodeB = node2;
                    MutableVector mutableVector = null;
                    while (nodeB != null) {
                        if (nodeB instanceof FocusTargetNode) {
                            FocusTargetNode focusTargetNode = (FocusTargetNode) nodeB;
                            if (z2) {
                                return focusTargetNode;
                            }
                            z = false;
                            z2 = true;
                        } else {
                            z = true;
                        }
                        if (z && (nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                            int i2 = 0;
                            for (Modifier.Node node3 = ((DelegatingNode) nodeB).q; node3 != null; node3 = node3.g) {
                                if ((node3.d & 1024) != 0) {
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
            }
        }
        md.k("Could not find focus target of embedded view wrapper");
        return null;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public final void onGlobalFocusChanged(View view, View view2) {
        boolean z;
        if (DelegatableNodeKt.f(this).p == null) {
            return;
        }
        View viewA = FocusGroupNode_androidKt.a(this);
        FocusOwner focusOwner = DelegatableNodeKt.g(this).getFocusOwner();
        Owner ownerG = DelegatableNodeKt.g(this);
        boolean z2 = true;
        if (view != null && !view.equals(ownerG)) {
            ViewParent parent = view.getParent();
            while (true) {
                if (parent == null) {
                    z = false;
                    break;
                } else {
                    if (parent == viewA.getParent()) {
                        z = true;
                        break;
                    }
                    parent = parent.getParent();
                }
            }
        } else {
            z = false;
            break;
        }
        if (view2 != null && !view2.equals(ownerG)) {
            ViewParent parent2 = view2.getParent();
            while (true) {
                if (parent2 == null) {
                    z2 = false;
                    break;
                } else if (parent2 == viewA.getParent()) {
                    break;
                } else {
                    parent2 = parent2.getParent();
                }
            }
        } else {
            z2 = false;
            break;
        }
        if (z && z2) {
            this.p = view2;
            return;
        }
        if (z2) {
            this.p = view2;
            FocusTargetNode focusTargetNodeH2 = h2();
            if (focusTargetNodeH2.W().b()) {
                return;
            }
            FocusTransactionsKt.e(focusTargetNodeH2);
            return;
        }
        if (!z) {
            this.p = null;
            return;
        }
        this.p = null;
        if (h2().W().a()) {
            FocusDirection.f8731b.getClass();
            focusOwner.u(FocusDirection.f8737j, false, false);
        }
    }
}
