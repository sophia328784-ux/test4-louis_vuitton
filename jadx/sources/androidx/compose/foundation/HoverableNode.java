package androidx.compose.foundation;

import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.node.PointerInputModifierNode;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/HoverableNode;", "Landroidx/compose/ui/node/PointerInputModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "<init>", "(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class HoverableNode extends Modifier.Node implements PointerInputModifierNode {
    public MutableInteractionSource p;
    public HoverInteraction.Enter q;

    public HoverableNode(MutableInteractionSource mutableInteractionSource) {
        this.p = mutableInteractionSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object h2(HoverableNode hoverableNode, ContinuationImpl continuationImpl) {
        HoverableNode$emitEnter$1 hoverableNode$emitEnter$1;
        HoverInteraction.Enter enter;
        if (continuationImpl instanceof HoverableNode$emitEnter$1) {
            hoverableNode$emitEnter$1 = (HoverableNode$emitEnter$1) continuationImpl;
            int i2 = hoverableNode$emitEnter$1.f4223e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                hoverableNode$emitEnter$1.f4223e = i2 - Integer.MIN_VALUE;
            } else {
                hoverableNode$emitEnter$1 = new HoverableNode$emitEnter$1(hoverableNode, continuationImpl);
            }
        } else {
            hoverableNode$emitEnter$1 = new HoverableNode$emitEnter$1(hoverableNode, continuationImpl);
        }
        Object obj = hoverableNode$emitEnter$1.f4222c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = hoverableNode$emitEnter$1.f4223e;
        if (i3 == 0) {
            ResultKt.b(obj);
            if (hoverableNode.q == null) {
                HoverInteraction.Enter enter2 = new HoverInteraction.Enter();
                MutableInteractionSource mutableInteractionSource = hoverableNode.p;
                hoverableNode$emitEnter$1.f4221b = enter2;
                hoverableNode$emitEnter$1.f4223e = 1;
                if (mutableInteractionSource.a(enter2, hoverableNode$emitEnter$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                enter = enter2;
            }
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        enter = hoverableNode$emitEnter$1.f4221b;
        ResultKt.b(obj);
        hoverableNode.q = enter;
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object i2(HoverableNode hoverableNode, ContinuationImpl continuationImpl) {
        HoverableNode$emitExit$1 hoverableNode$emitExit$1;
        if (continuationImpl instanceof HoverableNode$emitExit$1) {
            hoverableNode$emitExit$1 = (HoverableNode$emitExit$1) continuationImpl;
            int i2 = hoverableNode$emitExit$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                hoverableNode$emitExit$1.d = i2 - Integer.MIN_VALUE;
            } else {
                hoverableNode$emitExit$1 = new HoverableNode$emitExit$1(hoverableNode, continuationImpl);
            }
        } else {
            hoverableNode$emitExit$1 = new HoverableNode$emitExit$1(hoverableNode, continuationImpl);
        }
        Object obj = hoverableNode$emitExit$1.f4224b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = hoverableNode$emitExit$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            HoverInteraction.Enter enter = hoverableNode.q;
            if (enter != null) {
                HoverInteraction.Exit exit = new HoverInteraction.Exit(enter);
                MutableInteractionSource mutableInteractionSource = hoverableNode.p;
                hoverableNode$emitExit$1.d = 1;
                if (mutableInteractionSource.a(exit, hoverableNode$emitExit$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        hoverableNode.q = null;
        return Unit.f71739a;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        j2();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void f0(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j2) {
        if (pointerEventPass == PointerEventPass.Main) {
            int i2 = pointerEvent.f9309f;
            PointerEventType.f9310a.getClass();
            if (i2 == PointerEventType.f9313e) {
                BuildersKt.c(V1(), null, null, new HoverableNode$onPointerEvent$1(this, null), 3);
            } else if (i2 == PointerEventType.f9314f) {
                BuildersKt.c(V1(), null, null, new HoverableNode$onPointerEvent$2(this, null), 3);
            }
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void f1() {
        j2();
    }

    public final void j2() {
        HoverInteraction.Enter enter = this.q;
        if (enter != null) {
            this.p.b(new HoverInteraction.Exit(enter));
            this.q = null;
        }
    }
}
