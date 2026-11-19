package com.vuitton.android.designkit.components.components;

import androidx.compose.foundation.gestures.AnchoredDraggableState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.designkit.components.components.LVSwipeToRevealKt$SwipeToRevealContent$2$1", f = "LVSwipeToReveal.kt", l = {160, 162}, m = "invokeSuspend", v = 2)
final class LVSwipeToRevealKt$SwipeToRevealContent$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f48261c;
    public final /* synthetic */ AnchoredDraggableState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVSwipeToRevealKt$SwipeToRevealContent$2$1(boolean z, AnchoredDraggableState anchoredDraggableState, Continuation continuation) {
        super(2, continuation);
        this.f48261c = z;
        this.d = anchoredDraggableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVSwipeToRevealKt$SwipeToRevealContent$2$1(this.f48261c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVSwipeToRevealKt$SwipeToRevealContent$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
    
        if (androidx.compose.foundation.gestures.AnchoredDraggableKt.g(r0, r8, r7) == r2) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
    
        if (androidx.compose.foundation.gestures.AnchoredDraggableKt.g(r0, r8, r7) == r2) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
    
        return r2;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            androidx.compose.foundation.gestures.AnchoredDraggableState r0 = r7.d
            androidx.compose.runtime.MutableState r1 = r0.g
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r7.f48260b
            r4 = 2
            r5 = 1
            if (r3 == 0) goto L1c
            if (r3 == r5) goto L18
            if (r3 != r4) goto L11
            goto L18
        L11:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L18:
            kotlin.ResultKt.b(r8)
            goto L50
        L1c:
            kotlin.ResultKt.b(r8)
            boolean r8 = r7.f48261c
            if (r8 == 0) goto L39
            r3 = r1
            androidx.compose.runtime.SnapshotMutableStateImpl r3 = (androidx.compose.runtime.SnapshotMutableStateImpl) r3
            java.lang.Object r3 = r3.getF10755b()
            com.vuitton.android.designkit.components.components.SwipeDragAnchors r6 = com.vuitton.android.designkit.components.components.SwipeDragAnchors.Start
            if (r3 != r6) goto L39
            com.vuitton.android.designkit.components.components.SwipeDragAnchors r8 = com.vuitton.android.designkit.components.components.SwipeDragAnchors.End
            r7.f48260b = r5
            java.lang.Object r7 = androidx.compose.foundation.gestures.AnchoredDraggableKt.g(r0, r8, r7)
            if (r7 != r2) goto L50
            goto L4f
        L39:
            if (r8 != 0) goto L50
            androidx.compose.runtime.SnapshotMutableStateImpl r1 = (androidx.compose.runtime.SnapshotMutableStateImpl) r1
            java.lang.Object r8 = r1.getF10755b()
            com.vuitton.android.designkit.components.components.SwipeDragAnchors r1 = com.vuitton.android.designkit.components.components.SwipeDragAnchors.End
            if (r8 != r1) goto L50
            com.vuitton.android.designkit.components.components.SwipeDragAnchors r8 = com.vuitton.android.designkit.components.components.SwipeDragAnchors.Start
            r7.f48260b = r4
            java.lang.Object r7 = androidx.compose.foundation.gestures.AnchoredDraggableKt.g(r0, r8, r7)
            if (r7 != r2) goto L50
        L4f:
            return r2
        L50:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.designkit.components.components.LVSwipeToRevealKt$SwipeToRevealContent$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
