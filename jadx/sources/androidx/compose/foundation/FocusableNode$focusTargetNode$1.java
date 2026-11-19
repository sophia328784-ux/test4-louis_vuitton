package androidx.compose.foundation;

import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.PinnableContainer;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import defpackage.dt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
final /* synthetic */ class FocusableNode$focusTargetNode$1 extends FunctionReferenceImpl implements Function2<FocusState, FocusState, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        p((FocusState) obj, (FocusState) obj2);
        return Unit.f71739a;
    }

    public final void p(FocusState focusState, FocusState focusState2) {
        boolean zA;
        FocusedBoundsObserverNode focusedBoundsObserverNodeL2;
        FocusableNode focusableNode = (FocusableNode) this.receiver;
        FocusableNode.TraverseKey traverseKey = FocusableNode.x;
        if (focusableNode.o && (zA = focusState2.a()) != focusState.a()) {
            Function1 function1 = focusableNode.s;
            if (function1 != null) {
                function1.invoke(Boolean.valueOf(zA));
            }
            if (zA) {
                BuildersKt.c(focusableNode.V1(), null, null, new FocusableNode$onFocusStateChange$1(focusableNode, null), 3);
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                ObserverModifierNodeKt.a(focusableNode, new dt(ref$ObjectRef, focusableNode, 15));
                PinnableContainer pinnableContainer = (PinnableContainer) ref$ObjectRef.f71921b;
                focusableNode.u = pinnableContainer != null ? pinnableContainer.a() : null;
                LayoutCoordinates layoutCoordinates = focusableNode.v;
                if (layoutCoordinates != null && layoutCoordinates.c() && (focusedBoundsObserverNodeL2 = focusableNode.l2()) != null) {
                    focusedBoundsObserverNodeL2.h2(focusableNode.v);
                }
            } else {
                PinnableContainer.PinnedHandle pinnedHandle = focusableNode.u;
                if (pinnedHandle != null) {
                    pinnedHandle.release();
                }
                focusableNode.u = null;
                FocusedBoundsObserverNode focusedBoundsObserverNodeL3 = focusableNode.l2();
                if (focusedBoundsObserverNodeL3 != null) {
                    focusedBoundsObserverNodeL3.h2(null);
                }
            }
            SemanticsModifierNodeKt.b(focusableNode);
            MutableInteractionSource mutableInteractionSource = focusableNode.r;
            if (mutableInteractionSource != null) {
                FocusInteraction.Focus focus = focusableNode.t;
                if (!zA) {
                    if (focus != null) {
                        focusableNode.k2(mutableInteractionSource, new FocusInteraction.Unfocus(focus));
                        focusableNode.t = null;
                        return;
                    }
                    return;
                }
                if (focus != null) {
                    focusableNode.k2(mutableInteractionSource, new FocusInteraction.Unfocus(focus));
                    focusableNode.t = null;
                }
                FocusInteraction.Focus focus2 = new FocusInteraction.Focus();
                focusableNode.k2(mutableInteractionSource, focus2);
                focusableNode.t = focus2;
            }
        }
    }
}
