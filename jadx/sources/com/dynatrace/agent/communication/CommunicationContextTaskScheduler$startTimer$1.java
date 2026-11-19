package com.dynatrace.agent.communication;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.CommunicationContextTaskScheduler$startTimer$1", f = "CommunicationContextTaskScheduler.kt", l = {56, 57}, m = "invokeSuspend")
final class CommunicationContextTaskScheduler$startTimer$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f26519c;
    public final /* synthetic */ CommunicationContextTaskScheduler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f26520e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunicationContextTaskScheduler$startTimer$1(CommunicationContextTaskScheduler communicationContextTaskScheduler, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.d = communicationContextTaskScheduler;
        this.f26520e = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CommunicationContextTaskScheduler$startTimer$1 communicationContextTaskScheduler$startTimer$1 = new CommunicationContextTaskScheduler$startTimer$1(this.d, this.f26520e, continuation);
        communicationContextTaskScheduler$startTimer$1.f26519c = obj;
        return communicationContextTaskScheduler$startTimer$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CommunicationContextTaskScheduler$startTimer$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:17:0x0040  */
    /* JADX WARN: Code duplicated, block: B:21:0x0050  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004d, code lost:
    
        if (((com.dynatrace.agent.communication.CommunicationManagerImpl$scheduleNextCommunicationAttempt$1) r6.f26520e).invoke(r6) == r0) goto L20;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x004d -> B:7:0x0013). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f26518b
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L24
            if (r1 == r3) goto L1c
            if (r1 != r2) goto L15
            java.lang.Object r1 = r6.f26519c
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.b(r7)
        L13:
            r7 = r1
            goto L2b
        L15:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L1c:
            java.lang.Object r1 = r6.f26519c
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.b(r7)
            goto L41
        L24:
            kotlin.ResultKt.b(r7)
            java.lang.Object r7 = r6.f26519c
            kotlinx.coroutines.CoroutineScope r7 = (kotlinx.coroutines.CoroutineScope) r7
        L2b:
            boolean r1 = kotlinx.coroutines.CoroutineScopeKt.e(r7)
            if (r1 == 0) goto L50
            com.dynatrace.agent.communication.CommunicationContextTaskScheduler r1 = r6.d
            long r4 = r1.f26516b
            r6.f26519c = r7
            r6.f26518b = r3
            java.lang.Object r1 = kotlinx.coroutines.DelayKt.c(r4, r6)
            if (r1 != r0) goto L40
            goto L4f
        L40:
            r1 = r7
        L41:
            r6.f26519c = r1
            r6.f26518b = r2
            kotlin.jvm.functions.Function1 r7 = r6.f26520e
            com.dynatrace.agent.communication.CommunicationManagerImpl$scheduleNextCommunicationAttempt$1 r7 = (com.dynatrace.agent.communication.CommunicationManagerImpl$scheduleNextCommunicationAttempt$1) r7
            java.lang.Object r7 = r7.invoke(r6)
            if (r7 != r0) goto L13
        L4f:
            return r0
        L50:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dynatrace.agent.communication.CommunicationContextTaskScheduler$startTimer$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
