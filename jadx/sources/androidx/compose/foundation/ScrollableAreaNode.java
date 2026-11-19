package androidx.compose.foundation;

import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003BW\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0011\u001a\u00020\b\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Landroidx/compose/foundation/ScrollableAreaNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/ui/node/ObserverModifierNode;", "Landroidx/compose/foundation/gestures/ScrollableState;", "state", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "", "enabled", "reverseScrolling", "Landroidx/compose/foundation/gestures/FlingBehavior;", "flingBehavior", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/gestures/BringIntoViewSpec;", "bringIntoViewSpec", "useLocalOverscrollFactory", "Landroidx/compose/foundation/OverscrollEffect;", "userProvidedOverscrollEffect", "<init>", "(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;ZLandroidx/compose/foundation/OverscrollEffect;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ScrollableAreaNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, ObserverModifierNode {
    public ScrollableNode A;
    public DelegatableNode B;
    public OverscrollFactory C;
    public OverscrollEffect D;
    public boolean E;
    public ScrollableState r;
    public Orientation s;
    public boolean t;
    public boolean u;
    public FlingBehavior v;
    public MutableInteractionSource w;
    public BringIntoViewSpec x;
    public boolean y;
    public OverscrollEffect z;

    public ScrollableAreaNode(ScrollableState scrollableState, Orientation orientation, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, BringIntoViewSpec bringIntoViewSpec, boolean z3, OverscrollEffect overscrollEffect) {
        this.r = scrollableState;
        this.s = orientation;
        this.t = z;
        this.u = z2;
        this.v = flingBehavior;
        this.w = mutableInteractionSource;
        this.x = bringIntoViewSpec;
        this.y = z3;
        this.z = overscrollEffect;
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        this.E = l2();
        k2();
        if (this.A == null) {
            ScrollableNode scrollableNode = new ScrollableNode(this.r, this.y ? this.D : this.z, this.v, this.s, this.t, this.E, this.w, this.x);
            h2(scrollableNode);
            this.A = scrollableNode;
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        DelegatableNode delegatableNode = this.B;
        if (delegatableNode != null) {
            i2(delegatableNode);
        }
    }

    public final void k2() {
        DelegatableNode delegatableNode = this.B;
        if (delegatableNode != null) {
            if (delegatableNode.getF8608b().o) {
                return;
            }
            h2(delegatableNode);
            return;
        }
        if (this.y) {
            ObserverModifierNodeKt.a(this, new c(this, 2));
        }
        OverscrollEffect overscrollEffect = this.y ? this.D : this.z;
        if (overscrollEffect != null) {
            DelegatableNode delegatableNodeL = overscrollEffect.l();
            if (((Modifier.Node) delegatableNodeL).f8608b.o) {
                return;
            }
            h2(delegatableNodeL);
            this.B = delegatableNodeL;
        }
    }

    public final boolean l2() {
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        if (this.o) {
            layoutDirection = DelegatableNodeKt.f(this).B;
        }
        Orientation orientation = this.s;
        boolean z = this.u;
        return (layoutDirection != LayoutDirection.Rtl || orientation == Orientation.Vertical) ? !z : z;
    }

    public final void m2(ScrollableState scrollableState, Orientation orientation, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, BringIntoViewSpec bringIntoViewSpec, boolean z3, OverscrollEffect overscrollEffect) {
        boolean z4;
        this.r = scrollableState;
        this.s = orientation;
        boolean z5 = true;
        if (this.y != z) {
            this.y = z;
            z4 = true;
        } else {
            z4 = false;
        }
        if (Intrinsics.c(this.z, overscrollEffect)) {
            z5 = false;
        } else {
            this.z = overscrollEffect;
        }
        if (z4 || (z5 && !z)) {
            DelegatableNode delegatableNode = this.B;
            if (delegatableNode != null) {
                i2(delegatableNode);
            }
            this.B = null;
            k2();
        }
        this.t = z2;
        this.u = z3;
        this.v = flingBehavior;
        this.w = mutableInteractionSource;
        this.x = bringIntoViewSpec;
        boolean zL2 = l2();
        this.E = zL2;
        ScrollableNode scrollableNode = this.A;
        if (scrollableNode != null) {
            scrollableNode.C2(scrollableState, orientation, this.y ? this.D : this.z, z2, zL2, flingBehavior, mutableInteractionSource, bringIntoViewSpec);
        }
    }

    @Override // androidx.compose.ui.node.DelegatableNode
    public final void p0() {
        boolean zL2 = l2();
        if (this.E != zL2) {
            this.E = zL2;
            ScrollableState scrollableState = this.r;
            Orientation orientation = this.s;
            boolean z = this.y;
            m2(scrollableState, orientation, z, this.t, this.v, this.w, this.x, this.u, z ? this.D : this.z);
        }
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void y0() {
        OverscrollFactory overscrollFactory = (OverscrollFactory) CompositionLocalConsumerModifierNodeKt.a(this, OverscrollKt.f4285a);
        if (Intrinsics.c(overscrollFactory, this.C)) {
            return;
        }
        this.C = overscrollFactory;
        this.D = null;
        DelegatableNode delegatableNode = this.B;
        if (delegatableNode != null) {
            i2(delegatableNode);
        }
        this.B = null;
        k2();
        ScrollableNode scrollableNode = this.A;
        if (scrollableNode != null) {
            scrollableNode.C2(this.r, this.s, this.y ? this.D : this.z, this.t, this.E, this.v, this.w, this.x);
        }
    }
}
