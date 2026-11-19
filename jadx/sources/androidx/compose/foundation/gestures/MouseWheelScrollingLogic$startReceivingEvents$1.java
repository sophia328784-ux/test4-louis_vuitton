package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic$startReceivingEvents$1", f = "MouseWheelScrollingLogic.kt", l = {109, 112}, m = "invokeSuspend", v = 1)
final class MouseWheelScrollingLogic$startReceivingEvents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f4631c;
    public final /* synthetic */ MouseWheelScrollingLogic d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MouseWheelScrollingLogic$startReceivingEvents$1(MouseWheelScrollingLogic mouseWheelScrollingLogic, Continuation continuation) {
        super(2, continuation);
        this.d = mouseWheelScrollingLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MouseWheelScrollingLogic$startReceivingEvents$1 mouseWheelScrollingLogic$startReceivingEvents$1 = new MouseWheelScrollingLogic$startReceivingEvents$1(this.d, continuation);
        mouseWheelScrollingLogic$startReceivingEvents$1.f4631c = obj;
        return mouseWheelScrollingLogic$startReceivingEvents$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MouseWheelScrollingLogic$startReceivingEvents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003b A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:7:0x0013, B:18:0x0031, B:20:0x003b, B:24:0x004e, B:15:0x0026), top: B:32:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x004a  */
    /* JADX WARN: Code duplicated, block: B:23:0x004b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0071  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006c, code lost:
    
        if (androidx.compose.foundation.gestures.MouseWheelScrollingLogic.c(r5, r6, r7, r8, r9, r10) == r0) goto L26;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x006c -> B:9:0x0017). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r12.f4630b
            r2 = 0
            r3 = 2
            r4 = 1
            androidx.compose.foundation.gestures.MouseWheelScrollingLogic r5 = r12.d
            if (r1 == 0) goto L2a
            if (r1 == r4) goto L22
            if (r1 != r3) goto L1c
            java.lang.Object r1 = r12.f4631c
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.b(r13)     // Catch: java.lang.Throwable -> L19
            r10 = r12
        L17:
            r13 = r1
            goto L6f
        L19:
            r0 = move-exception
            r12 = r0
            goto L76
        L1c:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r12)
            return r2
        L22:
            java.lang.Object r1 = r12.f4631c
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.b(r13)     // Catch: java.lang.Throwable -> L19
            goto L4e
        L2a:
            kotlin.ResultKt.b(r13)
            java.lang.Object r13 = r12.f4631c
            kotlinx.coroutines.CoroutineScope r13 = (kotlinx.coroutines.CoroutineScope) r13
        L31:
            kotlin.coroutines.CoroutineContext r1 = r13.getF50528e()     // Catch: java.lang.Throwable -> L19
            boolean r1 = kotlinx.coroutines.JobKt.g(r1)     // Catch: java.lang.Throwable -> L19
            if (r1 == 0) goto L71
            kotlinx.coroutines.channels.BufferedChannel r1 = r5.g     // Catch: java.lang.Throwable -> L19
            r12.f4631c = r13     // Catch: java.lang.Throwable -> L19
            r12.f4630b = r4     // Catch: java.lang.Throwable -> L19
            r1.getClass()     // Catch: java.lang.Throwable -> L19
            java.lang.Object r1 = kotlinx.coroutines.channels.BufferedChannel.L(r1, r12)     // Catch: java.lang.Throwable -> L19
            if (r1 != r0) goto L4b
            goto L6e
        L4b:
            r11 = r1
            r1 = r13
            r13 = r11
        L4e:
            r7 = r13
            androidx.compose.foundation.gestures.MouseWheelScrollingLogic$MouseWheelScrollDelta r7 = (androidx.compose.foundation.gestures.MouseWheelScrollingLogic.MouseWheelScrollDelta) r7     // Catch: java.lang.Throwable -> L19
            androidx.compose.ui.unit.Density r13 = r5.f4636c     // Catch: java.lang.Throwable -> L19
            float r6 = androidx.compose.foundation.gestures.MouseWheelScrollingLogicKt.f4632a     // Catch: java.lang.Throwable -> L19
            float r8 = r13.u1(r6)     // Catch: java.lang.Throwable -> L19
            androidx.compose.ui.unit.Density r13 = r5.f4636c     // Catch: java.lang.Throwable -> L19
            float r6 = androidx.compose.foundation.gestures.MouseWheelScrollingLogicKt.f4633b     // Catch: java.lang.Throwable -> L19
            float r9 = r13.u1(r6)     // Catch: java.lang.Throwable -> L19
            androidx.compose.foundation.gestures.ScrollingLogic r6 = r5.f4634a     // Catch: java.lang.Throwable -> L19
            r12.f4631c = r1     // Catch: java.lang.Throwable -> L19
            r12.f4630b = r3     // Catch: java.lang.Throwable -> L19
            r10 = r12
            java.lang.Object r12 = androidx.compose.foundation.gestures.MouseWheelScrollingLogic.c(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L19
            if (r12 != r0) goto L17
        L6e:
            return r0
        L6f:
            r12 = r10
            goto L31
        L71:
            r5.f4607h = r2
            kotlin.Unit r12 = kotlin.Unit.f71739a
            return r12
        L76:
            r5.f4607h = r2
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$startReceivingEvents$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
