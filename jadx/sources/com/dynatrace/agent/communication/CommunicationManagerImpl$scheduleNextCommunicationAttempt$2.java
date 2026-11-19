package com.dynatrace.agent.communication;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.CommunicationManagerImpl$scheduleNextCommunicationAttempt$2", f = "CommunicationManagerImpl.kt", l = {168}, m = "invokeSuspend")
final class CommunicationManagerImpl$scheduleNextCommunicationAttempt$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CommunicationManagerImpl f26543c;
    public final /* synthetic */ CommunicationContext d;

    /* JADX INFO: renamed from: com.dynatrace.agent.communication.CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.dynatrace.agent.communication.CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1", f = "CommunicationManagerImpl.kt", l = {171, 176, 177, 181, 202}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CommunicationContext f26544b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f26545c;
        public final /* synthetic */ CommunicationContext d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ CommunicationManagerImpl f26546e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CommunicationContext communicationContext, CommunicationManagerImpl communicationManagerImpl, Continuation continuation) {
            super(1, continuation);
            this.d = communicationContext;
            this.f26546e = communicationManagerImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return new AnonymousClass1(this.d, this.f26546e, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return ((AnonymousClass1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:52:0x00d2  */
        /* JADX WARN: Code duplicated, block: B:53:0x00d5  */
        /* JADX WARN: Code duplicated, block: B:55:0x00d8  */
        /* JADX WARN: Code duplicated, block: B:60:0x00eb  */
        /* JADX WARN: Code duplicated, block: B:65:0x0100  */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0088, code lost:
        
            if (r0 == r6) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x009b, code lost:
        
            if (r0 == r6) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00c9, code lost:
        
            if (r0 == r6) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00f5, code lost:
        
            if (r1.b(r2, r16) == r6) goto L62;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r17) {
            /*
                Method dump skipped, instruction units count: 262
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dynatrace.agent.communication.CommunicationManagerImpl$scheduleNextCommunicationAttempt$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunicationManagerImpl$scheduleNextCommunicationAttempt$2(CommunicationContext communicationContext, CommunicationManagerImpl communicationManagerImpl, Continuation continuation) {
        super(2, continuation);
        this.f26543c = communicationManagerImpl;
        this.d = communicationContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CommunicationManagerImpl$scheduleNextCommunicationAttempt$2(this.d, this.f26543c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CommunicationManagerImpl$scheduleNextCommunicationAttempt$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f26542b;
        if (i2 == 0) {
            ResultKt.b(obj);
            CommunicationManagerImpl communicationManagerImpl = this.f26543c;
            RequestScheduler requestScheduler = communicationManagerImpl.g;
            CommunicationContext communicationContext = this.d;
            long j2 = communicationContext.f26512a;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(communicationContext, communicationManagerImpl, null);
            this.f26542b = 1;
            if (requestScheduler.a(j2, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
