package androidx.compose.foundation;

import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.focus.FocusTargetModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.Focusability;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.PinnableContainer;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.dt;
import defpackage.gv;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001\u0011B3\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroidx/compose/foundation/FocusableNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/ui/node/ObserverModifierNode;", "Landroidx/compose/ui/node/TraversableNode;", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/ui/focus/Focusability;", "focusability", "Lkotlin/Function1;", "", "", "onFocusChange", "<init>", "(Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "TraverseKey", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FocusableNode extends DelegatingNode implements SemanticsModifierNode, GlobalPositionAwareModifierNode, CompositionLocalConsumerModifierNode, ObserverModifierNode, TraversableNode {
    public static final TraverseKey x = new TraverseKey(null);
    public MutableInteractionSource r;
    public final Function1 s;
    public FocusInteraction.Focus t;
    public PinnableContainer.PinnedHandle u;
    public LayoutCoordinates v;
    public final FocusTargetModifierNode w;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/FocusableNode$TraverseKey;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class TraverseKey {
        public TraverseKey(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public FocusableNode(MutableInteractionSource mutableInteractionSource, int i2, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this.r = mutableInteractionSource;
        this.s = function1;
        FocusTargetNode focusTargetNode = new FocusTargetNode(i2, false, new FocusableNode$focusTargetNode$1(2, this, FocusableNode.class, "onFocusStateChange", "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V", 0), null, 10, null);
        h2(focusTargetNode);
        this.w = focusTargetNode;
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void F(NodeCoordinator nodeCoordinator) {
        FocusedBoundsObserverNode focusedBoundsObserverNodeL2;
        this.v = nodeCoordinator;
        if (this.w.W().a()) {
            if (!nodeCoordinator.p1().o) {
                FocusedBoundsObserverNode focusedBoundsObserverNodeL3 = l2();
                if (focusedBoundsObserverNodeL3 != null) {
                    focusedBoundsObserverNodeL3.h2(null);
                    return;
                }
                return;
            }
            LayoutCoordinates layoutCoordinates = this.v;
            if (layoutCoordinates == null || !layoutCoordinates.c() || (focusedBoundsObserverNodeL2 = l2()) == null) {
                return;
            }
            focusedBoundsObserverNodeL2.h2(this.v);
        }
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.k(semanticsPropertyReceiver, this.w.W().a());
        semanticsPropertyReceiver.a(SemanticsActions.w, new AccessibilityAction(null, new FocusableNode$applySemantics$1(0, this, FocusableNode.class, "requestFocus", "requestFocus()Z", 0)));
    }

    @Override // androidx.compose.ui.node.TraversableNode
    /* JADX INFO: renamed from: M */
    public final Object getR() {
        return x;
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void b2() {
        PinnableContainer.PinnedHandle pinnedHandle = this.u;
        if (pinnedHandle != null) {
            pinnedHandle.release();
        }
        this.u = null;
    }

    public final void k2(MutableInteractionSource mutableInteractionSource, FocusInteraction focusInteraction) {
        if (!this.o) {
            mutableInteractionSource.b(focusInteraction);
        } else {
            Job job = (Job) ((ContextScope) V1()).f75106b.get(Job.Key.f74677b);
            BuildersKt.c(V1(), null, null, new FocusableNode$emitWithFallback$1(mutableInteractionSource, focusInteraction, job != null ? job.invokeOnCompletion(new gv(mutableInteractionSource, focusInteraction, 16)) : null, null), 3);
        }
    }

    public final FocusedBoundsObserverNode l2() {
        if (!this.o) {
            return null;
        }
        TraversableNode traversableNodeA = TraversableNodeKt.a(this, FocusedBoundsObserverNode.r);
        if (traversableNodeA instanceof FocusedBoundsObserverNode) {
            return (FocusedBoundsObserverNode) traversableNodeA;
        }
        return null;
    }

    public final void m2(MutableInteractionSource mutableInteractionSource) {
        FocusInteraction.Focus focus;
        if (Intrinsics.c(this.r, mutableInteractionSource)) {
            return;
        }
        MutableInteractionSource mutableInteractionSource2 = this.r;
        if (mutableInteractionSource2 != null && (focus = this.t) != null) {
            mutableInteractionSource2.b(new FocusInteraction.Unfocus(focus));
        }
        this.t = null;
        this.r = mutableInteractionSource;
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void y0() {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ObserverModifierNodeKt.a(this, new dt(ref$ObjectRef, this, 15));
        PinnableContainer pinnableContainer = (PinnableContainer) ref$ObjectRef.f71921b;
        if (this.w.W().a()) {
            PinnableContainer.PinnedHandle pinnedHandle = this.u;
            if (pinnedHandle != null) {
                pinnedHandle.release();
            }
            this.u = pinnableContainer != null ? pinnableContainer.a() : null;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FocusableNode(MutableInteractionSource mutableInteractionSource, int i2, Function1 function1, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i3 & 2) != 0) {
            Focusability.f8790a.getClass();
            i2 = Focusability.f8791b;
        }
        this(mutableInteractionSource, i2, (i3 & 4) != 0 ? null : function1, null);
    }
}
