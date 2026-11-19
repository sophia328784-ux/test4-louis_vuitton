package com.dynatrace.agent.communication;

import com.dynatrace.agent.common.specification.OneAgentSpecification$RetentionSpecifications;
import com.dynatrace.agent.communication.preprocessing.DispatchableDataProvider;
import com.dynatrace.android.agent.util.Utility;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.CommunicationManagerImpl$scheduleNextCommunicationAttempt$1", f = "CommunicationManagerImpl.kt", l = {160}, m = "invokeSuspend")
final class CommunicationManagerImpl$scheduleNextCommunicationAttempt$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CommunicationManagerImpl f26541c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunicationManagerImpl$scheduleNextCommunicationAttempt$1(CommunicationManagerImpl communicationManagerImpl, Continuation continuation) {
        super(1, continuation);
        this.f26541c = communicationManagerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new CommunicationManagerImpl$scheduleNextCommunicationAttempt$1(this.f26541c, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((CommunicationManagerImpl$scheduleNextCommunicationAttempt$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f26540b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Utility.b("DB is sanitized during Offline mode");
            DispatchableDataProvider dispatchableDataProvider = this.f26541c.f26523b;
            this.f26540b = 1;
            dispatchableDataProvider.getClass();
            Object objC = dispatchableDataProvider.f26666b.c(dispatchableDataProvider.f26667c.a(), Duration.e(OneAgentSpecification$RetentionSpecifications.f26510a), this);
            if (objC != coroutineSingletons) {
                objC = Unit.f71739a;
            }
            if (objC == coroutineSingletons) {
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
