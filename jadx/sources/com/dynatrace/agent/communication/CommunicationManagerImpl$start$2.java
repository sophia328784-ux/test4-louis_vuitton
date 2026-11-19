package com.dynatrace.agent.communication;

import com.dynatrace.agent.common.connectivity.NetworkState;
import com.dynatrace.android.agent.util.Utility;
import defpackage.md;
import defpackage.os;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.CommunicationManagerImpl$start$2", f = "CommunicationManagerImpl.kt", l = {92}, m = "invokeSuspend")
final class CommunicationManagerImpl$start$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CommunicationManagerImpl f26548c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunicationManagerImpl$start$2(CommunicationManagerImpl communicationManagerImpl, Continuation continuation) {
        super(2, continuation);
        this.f26548c = communicationManagerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CommunicationManagerImpl$start$2(this.f26548c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CommunicationManagerImpl$start$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f26547b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final CommunicationManagerImpl communicationManagerImpl = this.f26548c;
            SharedFlow sharedFlowA = communicationManagerImpl.f26526f.getF26503c();
            FlowCollector flowCollector = new FlowCollector() { // from class: com.dynatrace.agent.communication.CommunicationManagerImpl$start$2.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    NetworkState networkState = (NetworkState) obj2;
                    StringBuilder sb = new StringBuilder("communication woken up by network state change to ");
                    sb.append(networkState);
                    sb.append(" while in communication state ");
                    CommunicationManagerImpl communicationManagerImpl2 = communicationManagerImpl;
                    sb.append(communicationManagerImpl2.f26530k);
                    Utility.b(sb.toString());
                    if (Intrinsics.c(communicationManagerImpl2.f26530k, CommunicationState.Offline.f26558a) && networkState.f26507a) {
                        Duration.INSTANCE.getClass();
                        communicationManagerImpl2.g(new CommunicationContext(0L, CommunicationState.ConfigAwaiting.f26555a, null, null));
                    }
                    return Unit.f71739a;
                }
            };
            this.f26547b = 1;
            if (sharedFlowA.f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
