package com.dynatrace.agent.communication;

import com.dynatrace.agent.communication.api.AgentState;
import com.dynatrace.agent.communication.api.ServerDataUpdate;
import com.dynatrace.android.agent.util.Utility;
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

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/dynatrace/agent/communication/CommunicationContext;", "serverDataUpdate", "Lcom/dynatrace/agent/communication/api/ServerDataUpdate;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.ResponseProcessorImpl$handleConfigResponse$2", f = "ResponseProcessorImpl.kt", l = {}, m = "invokeSuspend")
final class ResponseProcessorImpl$handleConfigResponse$2 extends SuspendLambda implements Function2<ServerDataUpdate, Continuation<? super CommunicationContext>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f26579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ResponseProcessorImpl f26580c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResponseProcessorImpl$handleConfigResponse$2(ResponseProcessorImpl responseProcessorImpl, Continuation continuation) {
        super(2, continuation);
        this.f26580c = responseProcessorImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ResponseProcessorImpl$handleConfigResponse$2 responseProcessorImpl$handleConfigResponse$2 = new ResponseProcessorImpl$handleConfigResponse$2(this.f26580c, continuation);
        responseProcessorImpl$handleConfigResponse$2.f26579b = obj;
        return responseProcessorImpl$handleConfigResponse$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ResponseProcessorImpl$handleConfigResponse$2) create((ServerDataUpdate) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        ServerDataUpdate serverDataUpdate = (ServerDataUpdate) this.f26579b;
        if (Intrinsics.c(serverDataUpdate.f26621a, AgentState.Disabled.f26619a)) {
            Utility.b("response handling: disable agent due to AgentState in config response");
            return new CommunicationContext(RetryManagerKt.f26594c, CommunicationState.Inactive.f26556a, serverDataUpdate, null);
        }
        Duration.INSTANCE.getClass();
        return new CommunicationContext(0L, new CommunicationState.Waiting(null, 1, null), serverDataUpdate, null);
    }
}
