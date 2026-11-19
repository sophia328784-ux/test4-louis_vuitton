package androidx.compose.ui.viewinterop;

import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.layout.PinnableContainer;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final /* synthetic */ class FocusTargetInteropNode$focusTargetNode$1 extends FunctionReferenceImpl implements Function2<FocusState, FocusState, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        p((FocusState) obj, (FocusState) obj2);
        return Unit.f71739a;
    }

    public final void p(FocusState focusState, FocusState focusState2) {
        boolean zA;
        FocusTargetInteropNode focusTargetInteropNode = (FocusTargetInteropNode) this.receiver;
        if (focusTargetInteropNode.o && (zA = focusState2.a()) != focusState.a()) {
            if (zA) {
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                ObserverModifierNodeKt.a(focusTargetInteropNode, new FocusTargetInteropNode$retrievePinnableContainer$1(ref$ObjectRef, focusTargetInteropNode));
                PinnableContainer pinnableContainer = (PinnableContainer) ref$ObjectRef.f71921b;
                focusTargetInteropNode.s = pinnableContainer != null ? pinnableContainer.a() : null;
                return;
            }
            PinnableContainer.PinnedHandle pinnedHandle = focusTargetInteropNode.s;
            if (pinnedHandle != null) {
                pinnedHandle.release();
            }
            focusTargetInteropNode.s = null;
        }
    }
}
