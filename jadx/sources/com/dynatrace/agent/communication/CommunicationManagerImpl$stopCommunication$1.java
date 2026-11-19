package com.dynatrace.agent.communication;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.CommunicationManagerImpl$stopCommunication$1", f = "CommunicationManagerImpl.kt", l = {214}, m = "invokeSuspend")
final class CommunicationManagerImpl$stopCommunication$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CommunicationManagerImpl f26551c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunicationManagerImpl$stopCommunication$1(CommunicationManagerImpl communicationManagerImpl, Continuation continuation) {
        super(2, continuation);
        this.f26551c = communicationManagerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CommunicationManagerImpl$stopCommunication$1(this.f26551c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CommunicationManagerImpl$stopCommunication$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objC;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f26550b;
        CommunicationManagerImpl communicationManagerImpl = this.f26551c;
        if (i2 == 0) {
            ResultKt.b(obj);
            Job job = communicationManagerImpl.m;
            if (job != null) {
                job.cancel(null);
            }
            RequestScheduler requestScheduler = communicationManagerImpl.g;
            this.f26550b = 1;
            Job job2 = requestScheduler.f26565b;
            if (job2 == null || (objC = JobKt.c(job2, this)) != obj2) {
                objC = Unit.f71739a;
            }
            if (objC == obj2) {
                return obj2;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        CommunicationContextTaskScheduler communicationContextTaskScheduler = communicationManagerImpl.f26527h;
        Job job3 = communicationContextTaskScheduler.f26517c;
        if (job3 != null) {
            job3.cancel(null);
        }
        communicationContextTaskScheduler.f26517c = null;
        return Unit.f71739a;
    }
}
