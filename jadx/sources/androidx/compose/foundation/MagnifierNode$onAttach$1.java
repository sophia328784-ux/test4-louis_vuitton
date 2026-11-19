package androidx.compose.foundation;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.MagnifierNode$onAttach$1", f = "Magnifier.android.kt", l = {382, 386}, m = "invokeSuspend", v = 1)
final class MagnifierNode$onAttach$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MagnifierNode f4244c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagnifierNode$onAttach$1(MagnifierNode magnifierNode, Continuation continuation) {
        super(2, continuation);
        this.f4244c = magnifierNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MagnifierNode$onAttach$1(this.f4244c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MagnifierNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0020  */
    /* JADX WARN: Code duplicated, block: B:13:0x0024  */
    /* JADX WARN: Code duplicated, block: B:16:0x002d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0031  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x002f -> B:11:0x0020). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0049 -> B:21:0x004c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f4243b
            r2 = 2
            r3 = 1
            androidx.compose.foundation.MagnifierNode r4 = r6.f4244c
            if (r1 == 0) goto L1d
            if (r1 == r3) goto L19
            if (r1 != r2) goto L12
            kotlin.ResultKt.b(r7)
            goto L4c
        L12:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L19:
            kotlin.ResultKt.b(r7)
            goto L2d
        L1d:
            kotlin.ResultKt.b(r7)
        L20:
            kotlinx.coroutines.channels.BufferedChannel r7 = r4.G
            if (r7 == 0) goto L2d
            r6.f4243b = r3
            java.lang.Object r7 = kotlinx.coroutines.channels.BufferedChannel.L(r7, r6)
            if (r7 != r0) goto L2d
            goto L4b
        L2d:
            androidx.compose.foundation.PlatformMagnifier r7 = r4.B
            if (r7 == 0) goto L20
            ba0 r7 = new ba0
            r7.<init>(r3)
            r6.f4243b = r2
            kotlin.coroutines.CoroutineContext r1 = r6.getContext()
            androidx.compose.runtime.MonotonicFrameClock r1 = androidx.compose.runtime.MonotonicFrameClockKt.a(r1)
            androidx.compose.runtime.MonotonicFrameClockKt$withFrameMillis$2 r5 = new androidx.compose.runtime.MonotonicFrameClockKt$withFrameMillis$2
            r5.<init>(r7)
            java.lang.Object r7 = r1.c(r6, r5)
            if (r7 != r0) goto L4c
        L4b:
            return r0
        L4c:
            androidx.compose.foundation.PlatformMagnifier r7 = r4.B
            if (r7 == 0) goto L20
            r7.c()
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.MagnifierNode$onAttach$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
