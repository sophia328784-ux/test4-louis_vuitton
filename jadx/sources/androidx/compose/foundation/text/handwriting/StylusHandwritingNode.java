package androidx.compose.foundation.text.handwriting;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusRequesterModifierNode;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DpTouchBoundsExpansion;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.TouchBoundsExpansion;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0011\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0015\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/PointerInputModifierNode;", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "Landroidx/compose/ui/focus/FocusRequesterModifierNode;", "Lkotlin/Function0;", "", "onHandwritingSlopExceeded", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class StylusHandwritingNode extends DelegatingNode implements PointerInputModifierNode, FocusEventModifierNode, FocusRequesterModifierNode {
    public Function0 r;
    public boolean s;
    public final SuspendingPointerInputModifierNode t;

    public StylusHandwritingNode(Function0<Unit> function0) {
        this.r = function0;
        PointerInputEventHandler pointerInputEventHandler = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.handwriting.StylusHandwritingNode$suspendingPointerInputModifierNode$1

            /* JADX INFO: renamed from: androidx.compose.foundation.text.handwriting.StylusHandwritingNode$suspendingPointerInputModifierNode$1$1, reason: invalid class name */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.text.handwriting.StylusHandwritingNode$suspendingPointerInputModifierNode$1$1", f = "StylusHandwriting.kt", l = {116, 144, 182}, m = "invokeSuspend", v = 1)
            final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public PointerInputChange f6172c;
                public PointerEventPass d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public int f6173e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f6174f;
                public final /* synthetic */ StylusHandwritingNode g;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(StylusHandwritingNode stylusHandwritingNode, Continuation continuation) {
                    super(2, continuation);
                    this.g = stylusHandwritingNode;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.g, continuation);
                    anonymousClass1.f6174f = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((AnonymousClass1) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                /* JADX WARN: Code duplicated, block: B:36:0x00bc  */
                /* JADX WARN: Code restructure failed: missing block: B:13:0x0054, code lost:
                
                    if (r9 == r1) goto L144;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:143:0x0249, code lost:
                
                    if (r3 == r1) goto L144;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:144:0x024b, code lost:
                
                    return r1;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:39:0x00ce, code lost:
                
                    if (r8 == r1) goto L144;
                 */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:143:0x0249 -> B:145:0x024c). Please report as a decompilation issue!!! */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00ce -> B:41:0x00d2). Please report as a decompilation issue!!! */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r20) {
                    /*
                        Method dump skipped, instruction units count: 659
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.handwriting.StylusHandwritingNode$suspendingPointerInputModifierNode$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                Object objB = ForEachGestureKt.b(pointerInputScope, new AnonymousClass1(this.f6171a, null), continuation);
                return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
            }
        };
        PointerEvent pointerEvent = SuspendingPointerInputFilterKt.f9378a;
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = new SuspendingPointerInputModifierNodeImpl((Object) null, (Object) null, (Object[]) null, pointerInputEventHandler);
        h2(suspendingPointerInputModifierNodeImpl);
        this.t = suspendingPointerInputModifierNodeImpl;
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public final void E(FocusState focusState) {
        this.s = focusState.a();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final long P0() {
        DpTouchBoundsExpansion dpTouchBoundsExpansion = StylusHandwritingKt.f6170a;
        Density density = DelegatableNodeKt.f(this).A;
        dpTouchBoundsExpansion.getClass();
        TouchBoundsExpansion.Companion companion = TouchBoundsExpansion.f9834a;
        int iB0 = density.B0(dpTouchBoundsExpansion.f9663a);
        int iB1 = density.B0(dpTouchBoundsExpansion.f9664b);
        int iB2 = density.B0(dpTouchBoundsExpansion.f9665c);
        int iB3 = density.B0(dpTouchBoundsExpansion.d);
        boolean z = dpTouchBoundsExpansion.f9666e;
        companion.getClass();
        return TouchBoundsExpansion.Companion.b(iB0, iB1, z, iB2, iB3);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void f0(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j2) {
        this.t.f0(pointerEvent, pointerEventPass, j2);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void f1() {
        this.t.f1();
    }
}
