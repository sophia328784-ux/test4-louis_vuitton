package com.dynatrace.agent.communication;

import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.communication.api.AgentState;
import com.dynatrace.agent.communication.api.ServerDataUpdate;
import com.dynatrace.agent.communication.network.model.RetryInfo;
import com.dynatrace.agent.communication.network.response.ResponseResult;
import com.dynatrace.agent.storage.db.EndPointInfo;
import com.dynatrace.agent.storage.db.EventDatabaseDataSource;
import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.util.Utility;
import defpackage.md;
import defpackage.v40;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/communication/ResponseProcessorImpl;", "Lcom/dynatrace/agent/communication/ResponseProcessor;", "Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;", "eventDatabase", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "<init>", "(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/common/time/TimeProvider;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ResponseProcessorImpl implements ResponseProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EventDatabaseDataSource f26572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeProvider f26573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f26574c;

    public ResponseProcessorImpl(EventDatabaseDataSource eventDatabaseDataSource, TimeProvider timeProvider) {
        eventDatabaseDataSource.getClass();
        timeProvider.getClass();
        this.f26572a = eventDatabaseDataSource;
        this.f26573b = timeProvider;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object d(ResponseProcessorImpl responseProcessorImpl, ServerDataUpdate serverDataUpdate, List list, boolean z, ContinuationImpl continuationImpl) {
        ResponseProcessorImpl$contextForValidDataRequestResponse$1 responseProcessorImpl$contextForValidDataRequestResponse$1;
        if (continuationImpl instanceof ResponseProcessorImpl$contextForValidDataRequestResponse$1) {
            responseProcessorImpl$contextForValidDataRequestResponse$1 = (ResponseProcessorImpl$contextForValidDataRequestResponse$1) continuationImpl;
            int i2 = responseProcessorImpl$contextForValidDataRequestResponse$1.f26578f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                responseProcessorImpl$contextForValidDataRequestResponse$1.f26578f = i2 - Integer.MIN_VALUE;
            } else {
                responseProcessorImpl$contextForValidDataRequestResponse$1 = new ResponseProcessorImpl$contextForValidDataRequestResponse$1(responseProcessorImpl, continuationImpl);
            }
        } else {
            responseProcessorImpl$contextForValidDataRequestResponse$1 = new ResponseProcessorImpl$contextForValidDataRequestResponse$1(responseProcessorImpl, continuationImpl);
        }
        Object obj = responseProcessorImpl$contextForValidDataRequestResponse$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = responseProcessorImpl$contextForValidDataRequestResponse$1.f26578f;
        if (i3 == 0) {
            ResultKt.b(obj);
            EventDatabaseDataSource eventDatabaseDataSource = responseProcessorImpl.f26572a;
            responseProcessorImpl$contextForValidDataRequestResponse$1.f26575b = serverDataUpdate;
            responseProcessorImpl$contextForValidDataRequestResponse$1.f26576c = z;
            responseProcessorImpl$contextForValidDataRequestResponse$1.f26578f = 1;
            if (eventDatabaseDataSource.g(list, responseProcessorImpl$contextForValidDataRequestResponse$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = responseProcessorImpl$contextForValidDataRequestResponse$1.f26576c;
            serverDataUpdate = responseProcessorImpl$contextForValidDataRequestResponse$1.f26575b;
            ResultKt.b(obj);
        }
        ServerDataUpdate serverDataUpdate2 = serverDataUpdate;
        if (Intrinsics.c(serverDataUpdate2.f26621a, AgentState.Disabled.f26619a)) {
            Utility.b("response handling: disable agent due to AgentState in data response");
            return new CommunicationContext(RetryManagerKt.f26594c, CommunicationState.Inactive.f26556a, serverDataUpdate2, null);
        }
        if (!z) {
            return new CommunicationContext(CommunicationManagerImplKt.f26554a, new CommunicationState.Waiting(null, 1, null), serverDataUpdate2, null);
        }
        Duration.INSTANCE.getClass();
        return new CommunicationContext(0L, CommunicationState.PendingData.f26559a, serverDataUpdate2, null);
    }

    public static CommunicationContext f(RetryManager retryManager, EndPointInfo endPointInfo, ResponseResult.RetryExecution retryExecution, CommunicationState communicationState) {
        RetryInfo retryInfoA = retryManager.a(endPointInfo, retryExecution.f26657a);
        long jA = RetryManagerKt.a(retryInfoA);
        if (retryInfoA.f26645a != 3) {
            return new CommunicationContext(jA, communicationState, null, null);
        }
        retryManager.f26591a.remove(endPointInfo);
        return new CommunicationContext(jA, CommunicationState.Offline.f26558a, null, null);
    }

    public static Object i(ResponseProcessorImpl responseProcessorImpl, long j2, CommunicationState communicationState, EndPointInfo endPointInfo, RetryManager retryManager, ServerDataUpdate serverDataUpdate, ContinuationImpl continuationImpl, int i2) {
        if ((i2 & 1) != 0) {
            j2 = RetryManagerKt.f26594c;
        }
        long j3 = j2;
        if ((i2 & 2) != 0) {
            communicationState = CommunicationState.Inactive.f26556a;
        }
        return responseProcessorImpl.h(j3, communicationState, endPointInfo, retryManager, (i2 & 16) != 0 ? new ServerDataUpdate(AgentState.Disabled.f26619a, null, null) : serverDataUpdate, continuationImpl);
    }

    @Override // com.dynatrace.agent.communication.ResponseProcessor
    public final long a() {
        Duration.Companion companion = Duration.INSTANCE;
        long jA = this.f26573b.a();
        DurationUnit durationUnit = DurationUnit.MILLISECONDS;
        return Duration.j(DurationKt.h(jA, durationUnit), Duration.v(DurationKt.h(this.f26574c, durationUnit)));
    }

    @Override // com.dynatrace.agent.communication.ResponseProcessor
    public final Object b(ResponseResult responseResult, EndPointInfo endPointInfo, RetryManager retryManager, Continuation continuation) {
        if (responseResult instanceof ResponseResult.Retry) {
            return e((ResponseResult.Retry) responseResult, endPointInfo, retryManager, CommunicationState.ConfigAwaiting.f26555a, (ContinuationImpl) continuation);
        }
        if (responseResult instanceof ResponseResult.TooManyRequests) {
            return i(this, ((ResponseResult.TooManyRequests) responseResult).f26659a, CommunicationState.ConfigAwaiting.f26555a, endPointInfo, retryManager, null, (ContinuationImpl) continuation, 16);
        }
        if (responseResult instanceof ResponseResult.Success) {
            return g((ResponseResult.Success) responseResult, endPointInfo, retryManager, new ResponseProcessorImpl$handleConfigResponse$2(this, null), (ContinuationImpl) continuation);
        }
        if (responseResult instanceof ResponseResult.UnexpectedError) {
            return i(this, 0L, null, endPointInfo, retryManager, null, (ContinuationImpl) continuation, 19);
        }
        if (responseResult instanceof ResponseResult.RetryExecution) {
            return f(retryManager, endPointInfo, (ResponseResult.RetryExecution) responseResult, CommunicationState.ConfigAwaiting.f26555a);
        }
        v40.g();
        return null;
    }

    @Override // com.dynatrace.agent.communication.ResponseProcessor
    public final Object c(ResponseResult responseResult, EndPointInfo endPointInfo, List list, RetryManager retryManager, boolean z, Continuation continuation) {
        if (responseResult instanceof ResponseResult.Retry) {
            return e((ResponseResult.Retry) responseResult, endPointInfo, retryManager, new CommunicationState.Waiting(CommunicationState.ConnectionStatus.RETRYING), (ContinuationImpl) continuation);
        }
        if (responseResult instanceof ResponseResult.TooManyRequests) {
            return i(this, ((ResponseResult.TooManyRequests) responseResult).f26659a, CommunicationState.ConfigAwaiting.f26555a, endPointInfo, retryManager, null, (ContinuationImpl) continuation, 16);
        }
        if (responseResult instanceof ResponseResult.Success) {
            return g((ResponseResult.Success) responseResult, endPointInfo, retryManager, new ResponseProcessorImpl$handleDataResponse$2(this, list, z, null), (ContinuationImpl) continuation);
        }
        if (responseResult instanceof ResponseResult.UnexpectedError) {
            return i(this, 0L, null, endPointInfo, retryManager, null, (ContinuationImpl) continuation, 19);
        }
        if (responseResult instanceof ResponseResult.RetryExecution) {
            return f(retryManager, endPointInfo, (ResponseResult.RetryExecution) responseResult, new CommunicationState.Waiting(CommunicationState.ConnectionStatus.RETRYING));
        }
        v40.g();
        return null;
    }

    public final Object e(ResponseResult.Retry retry, EndPointInfo endPointInfo, RetryManager retryManager, CommunicationState communicationState, ContinuationImpl continuationImpl) {
        ServerDataUpdate serverDataUpdate = retry.f26656b;
        AgentState agentState = serverDataUpdate != null ? serverDataUpdate.f26621a : null;
        AgentState.Disabled disabled = AgentState.Disabled.f26619a;
        if (Intrinsics.c(agentState, disabled)) {
            Utility.b("response handling: disable agent due to AgentState in " + retry);
            return i(this, 0L, null, endPointInfo, retryManager, retry.f26656b, continuationImpl, 3);
        }
        RetryInfo retryInfoA = retryManager.a(endPointInfo, retry.f26655a);
        int i2 = RetryManagerKt.d;
        if (retryInfoA.f26645a != 3) {
            return new CommunicationContext(RetryManagerKt.a(retryInfoA), communicationState, retry.f26656b, null);
        }
        Utility.b("response handling: disable agent due to max retry attempts reached");
        ServerDataUpdate serverDataUpdate2 = null;
        long jA = RetryManagerKt.a(retryInfoA);
        ServerDataUpdate serverDataUpdate3 = retry.f26656b;
        if (serverDataUpdate3 != null) {
            ServerConfigurationV4 serverConfigurationV4 = serverDataUpdate3.f26622b;
            ServerConfiguration serverConfiguration = serverDataUpdate3.f26623c;
            disabled.getClass();
            serverDataUpdate2 = new ServerDataUpdate(disabled, serverConfigurationV4, serverConfiguration);
        }
        return i(this, jA, null, endPointInfo, retryManager, serverDataUpdate2, continuationImpl, 2);
    }

    public final Object g(ResponseResult.Success success, EndPointInfo endPointInfo, RetryManager retryManager, Function2 function2, ContinuationImpl continuationImpl) {
        retryManager.getClass();
        endPointInfo.getClass();
        retryManager.f26591a.remove(endPointInfo);
        this.f26574c = this.f26573b.a();
        Utility.b("response handling: updated last config reception time: " + this.f26574c);
        return function2.invoke(success.f26658a, continuationImpl);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(long j2, CommunicationState communicationState, EndPointInfo endPointInfo, RetryManager retryManager, ServerDataUpdate serverDataUpdate, ContinuationImpl continuationImpl) {
        ResponseProcessorImpl$obtainDisabledContext$1 responseProcessorImpl$obtainDisabledContext$1;
        if (continuationImpl instanceof ResponseProcessorImpl$obtainDisabledContext$1) {
            responseProcessorImpl$obtainDisabledContext$1 = (ResponseProcessorImpl$obtainDisabledContext$1) continuationImpl;
            int i2 = responseProcessorImpl$obtainDisabledContext$1.f26590i;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                responseProcessorImpl$obtainDisabledContext$1.f26590i = i2 - Integer.MIN_VALUE;
            } else {
                responseProcessorImpl$obtainDisabledContext$1 = new ResponseProcessorImpl$obtainDisabledContext$1(this, continuationImpl);
            }
        } else {
            responseProcessorImpl$obtainDisabledContext$1 = new ResponseProcessorImpl$obtainDisabledContext$1(this, continuationImpl);
        }
        Object obj = responseProcessorImpl$obtainDisabledContext$1.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = responseProcessorImpl$obtainDisabledContext$1.f26590i;
        if (i3 == 0) {
            ResultKt.b(obj);
            responseProcessorImpl$obtainDisabledContext$1.f26586c = communicationState;
            responseProcessorImpl$obtainDisabledContext$1.d = endPointInfo;
            responseProcessorImpl$obtainDisabledContext$1.f26587e = retryManager;
            responseProcessorImpl$obtainDisabledContext$1.f26588f = serverDataUpdate;
            responseProcessorImpl$obtainDisabledContext$1.f26585b = j2;
            responseProcessorImpl$obtainDisabledContext$1.f26590i = 1;
            if (this.f26572a.d(responseProcessorImpl$obtainDisabledContext$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j2 = responseProcessorImpl$obtainDisabledContext$1.f26585b;
            serverDataUpdate = responseProcessorImpl$obtainDisabledContext$1.f26588f;
            retryManager = responseProcessorImpl$obtainDisabledContext$1.f26587e;
            endPointInfo = responseProcessorImpl$obtainDisabledContext$1.d;
            communicationState = responseProcessorImpl$obtainDisabledContext$1.f26586c;
            ResultKt.b(obj);
        }
        EndPointInfo endPointInfo2 = endPointInfo;
        CommunicationState communicationState2 = communicationState;
        long j3 = j2;
        retryManager.getClass();
        endPointInfo2.getClass();
        retryManager.f26591a.remove(endPointInfo2);
        return new CommunicationContext(j3, communicationState2, serverDataUpdate, null);
    }
}
