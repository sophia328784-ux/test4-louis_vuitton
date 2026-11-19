package com.dynatrace.agent.communication;

import com.dynatrace.agent.common.connectivity.NetworkConnectivityChecker;
import com.dynatrace.agent.communication.api.AgentState;
import com.dynatrace.agent.communication.api.ServerDataListener;
import com.dynatrace.agent.communication.mapper.DbRecordsToRequestBodyMapper;
import com.dynatrace.agent.communication.network.datasource.ConfigRequest;
import com.dynatrace.agent.communication.network.datasource.DataRequest;
import com.dynatrace.agent.communication.network.datasource.NetworkDataSource;
import com.dynatrace.agent.communication.network.model.RetryInfo;
import com.dynatrace.agent.communication.network.response.ResponseResult;
import com.dynatrace.agent.communication.preprocessing.DispatchableData;
import com.dynatrace.agent.communication.preprocessing.DispatchableDataProvider;
import com.dynatrace.agent.communication.preprocessing.ToDataRequestMapper;
import com.dynatrace.agent.storage.db.EndPointInfo;
import com.dynatrace.agent.storage.db.EventRecord;
import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.util.Utility;
import defpackage.md;
import defpackage.n00;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/dynatrace/agent/communication/CommunicationManagerImpl;", "Lcom/dynatrace/agent/communication/CommunicationManager;", "Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;", "networkDataSource", "Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;", "dispatchableDataProvider", "Lcom/dynatrace/agent/communication/ResponseProcessor;", "responseProcessor", "Lcom/dynatrace/agent/communication/api/ServerDataListener;", "serverDataListener", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;", "connectivityChecker", "<init>", "(Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;Lcom/dynatrace/agent/communication/ResponseProcessor;Lcom/dynatrace/agent/communication/api/ServerDataListener;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CommunicationManagerImpl implements CommunicationManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NetworkDataSource f26522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DispatchableDataProvider f26523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ResponseProcessor f26524c;
    public final ServerDataListener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineScope f26525e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NetworkConnectivityChecker f26526f;
    public final RequestScheduler g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CommunicationContextTaskScheduler f26527h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final RetryManager f26528i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ToDataRequestMapper f26529j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CommunicationState f26530k;
    public ServerDataMaintainer l;
    public Job m;
    public volatile Integer n;

    public CommunicationManagerImpl(NetworkDataSource networkDataSource, DispatchableDataProvider dispatchableDataProvider, ResponseProcessor responseProcessor, ServerDataListener serverDataListener, CoroutineScope coroutineScope, NetworkConnectivityChecker networkConnectivityChecker) {
        networkDataSource.getClass();
        dispatchableDataProvider.getClass();
        responseProcessor.getClass();
        serverDataListener.getClass();
        coroutineScope.getClass();
        networkConnectivityChecker.getClass();
        this.f26522a = networkDataSource;
        this.f26523b = dispatchableDataProvider;
        this.f26524c = responseProcessor;
        this.d = serverDataListener;
        this.f26525e = coroutineScope;
        this.f26526f = networkConnectivityChecker;
        this.g = new RequestScheduler(coroutineScope);
        this.f26527h = new CommunicationContextTaskScheduler(coroutineScope, 0L, 2, null);
        RetryManager retryManager = new RetryManager();
        this.f26528i = retryManager;
        this.f26529j = new ToDataRequestMapper(new DbRecordsToRequestBodyMapper(1), retryManager);
        this.f26530k = CommunicationState.Off.f26557a;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0153 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    public static final Object e(CommunicationManagerImpl communicationManagerImpl, ContinuationImpl continuationImpl) {
        CommunicationManagerImpl$dispatchData$1 communicationManagerImpl$dispatchData$1;
        LocalServerData localServerData;
        CommunicationManagerImpl communicationManagerImpl2;
        boolean z;
        DispatchableData dispatchableData;
        DataRequest dataRequest;
        Object objC;
        CommunicationManagerImpl communicationManagerImpl3 = communicationManagerImpl;
        if (continuationImpl instanceof CommunicationManagerImpl$dispatchData$1) {
            communicationManagerImpl$dispatchData$1 = (CommunicationManagerImpl$dispatchData$1) continuationImpl;
            int i2 = communicationManagerImpl$dispatchData$1.f26535h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                communicationManagerImpl$dispatchData$1.f26535h = i2 - Integer.MIN_VALUE;
            } else {
                communicationManagerImpl$dispatchData$1 = new CommunicationManagerImpl$dispatchData$1(communicationManagerImpl3, continuationImpl);
            }
        } else {
            communicationManagerImpl$dispatchData$1 = new CommunicationManagerImpl$dispatchData$1(communicationManagerImpl3, continuationImpl);
        }
        CommunicationManagerImpl$dispatchData$1 communicationManagerImpl$dispatchData$2 = communicationManagerImpl$dispatchData$1;
        Object objC2 = communicationManagerImpl$dispatchData$2.f26534f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = communicationManagerImpl$dispatchData$2.f26535h;
        if (i3 == 0) {
            ResultKt.b(objC2);
            ServerDataMaintainer serverDataMaintainer = communicationManagerImpl3.l;
            if (serverDataMaintainer == null) {
                Intrinsics.h("serverDataMaintainer");
                throw null;
            }
            LocalServerData localServerData2 = new LocalServerData(serverDataMaintainer.d, serverDataMaintainer.f26607e, serverDataMaintainer.f26608f);
            DispatchableDataProvider dispatchableDataProvider = communicationManagerImpl3.f26523b;
            long j2 = ((long) localServerData2.f26562b.f27044b) * RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
            communicationManagerImpl$dispatchData$2.f26531b = communicationManagerImpl3;
            communicationManagerImpl$dispatchData$2.f26532c = localServerData2;
            communicationManagerImpl$dispatchData$2.f26535h = 1;
            objC2 = dispatchableDataProvider.c(j2, communicationManagerImpl$dispatchData$2);
            if (objC2 != coroutineSingletons) {
                localServerData = localServerData2;
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            LocalServerData localServerData3 = (LocalServerData) communicationManagerImpl$dispatchData$2.f26532c;
            CommunicationManagerImpl communicationManagerImpl4 = communicationManagerImpl$dispatchData$2.f26531b;
            ResultKt.b(objC2);
            localServerData = localServerData3;
            communicationManagerImpl3 = communicationManagerImpl4;
        } else {
            if (i3 != 2) {
                if (i3 == 3) {
                    ResultKt.b(objC2);
                    return objC2;
                }
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            boolean z2 = communicationManagerImpl$dispatchData$2.f26533e;
            dataRequest = communicationManagerImpl$dispatchData$2.d;
            dispatchableData = (DispatchableData) communicationManagerImpl$dispatchData$2.f26532c;
            communicationManagerImpl2 = communicationManagerImpl$dispatchData$2.f26531b;
            ResultKt.b(objC2);
            z = z2;
        }
        ResponseResult responseResult = (ResponseResult) objC2;
        ResponseProcessor responseProcessor = communicationManagerImpl2.f26524c;
        EndPointInfo endPointInfo = dataRequest.f26635a;
        List list = dispatchableData.f26663b;
        RetryManager retryManager = communicationManagerImpl2.f26528i;
        communicationManagerImpl$dispatchData$2.f26531b = null;
        communicationManagerImpl$dispatchData$2.f26532c = null;
        communicationManagerImpl$dispatchData$2.d = null;
        communicationManagerImpl$dispatchData$2.f26535h = 3;
        objC = responseProcessor.c(responseResult, endPointInfo, list, retryManager, z, communicationManagerImpl$dispatchData$2);
        if (objC != coroutineSingletons) {
            return coroutineSingletons;
        }
        return objC;
        Pair pair = (Pair) objC2;
        DispatchableData dispatchableData2 = (DispatchableData) pair.f71705b;
        boolean zBooleanValue = ((Boolean) pair.f71706c).booleanValue();
        if (dispatchableData2 == null) {
            long jA = communicationManagerImpl3.f26524c.a();
            Duration.Companion companion = Duration.INSTANCE;
            if (Duration.c(jA, DurationKt.g(2, DurationUnit.HOURS)) < 0) {
                return new CommunicationContext(CommunicationManagerImplKt.f26554a, new CommunicationState.Waiting(null, 1, null), null, null);
            }
            Utility.b("request new config after 2hr timeout");
            Duration.INSTANCE.getClass();
            return new CommunicationContext(0L, CommunicationState.ConfigAwaiting.f26555a, null, null);
        }
        ToDataRequestMapper toDataRequestMapper = communicationManagerImpl3.f26529j;
        Integer num = communicationManagerImpl3.n;
        toDataRequestMapper.getClass();
        localServerData.getClass();
        EndPointInfo endPointInfo2 = dispatchableData2.f26662a;
        DbRecordsToRequestBodyMapper dbRecordsToRequestBodyMapper = toDataRequestMapper.f26682a;
        List list2 = dispatchableData2.f26663b;
        dbRecordsToRequestBodyMapper.getClass();
        list2.getClass();
        StringBuilder sb = new StringBuilder(n00.m(dbRecordsToRequestBodyMapper.f26631a, "{\"data_version\":", ",\"data\":{\"events\":["));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            sb.append(((EventRecord) it.next()).f26923b + ',');
        }
        if (!list2.isEmpty()) {
            sb.deleteCharAt(sb.length() - 1).getClass();
        }
        sb.append("]}}");
        String string = sb.toString();
        boolean z3 = dispatchableData2.f26664c;
        RetryManager retryManager2 = toDataRequestMapper.f26683b;
        EndPointInfo endPointInfo3 = dispatchableData2.f26662a;
        retryManager2.getClass();
        endPointInfo3.getClass();
        DataRequest dataRequest2 = new DataRequest(endPointInfo2, string, z3, localServerData, (RetryInfo) retryManager2.f26591a.get(endPointInfo3), num);
        NetworkDataSource networkDataSource = communicationManagerImpl3.f26522a;
        communicationManagerImpl$dispatchData$2.f26531b = communicationManagerImpl3;
        communicationManagerImpl$dispatchData$2.f26532c = dispatchableData2;
        communicationManagerImpl$dispatchData$2.d = dataRequest2;
        communicationManagerImpl$dispatchData$2.f26533e = zBooleanValue;
        communicationManagerImpl$dispatchData$2.f26535h = 2;
        ResponseResult responseResultB = networkDataSource.b(dataRequest2);
        if (responseResultB != coroutineSingletons) {
            communicationManagerImpl2 = communicationManagerImpl3;
            z = zBooleanValue;
            dispatchableData = dispatchableData2;
            objC2 = responseResultB;
            dataRequest = dataRequest2;
            ResponseResult responseResult2 = (ResponseResult) objC2;
            ResponseProcessor responseProcessor2 = communicationManagerImpl2.f26524c;
            EndPointInfo endPointInfo4 = dataRequest.f26635a;
            List list3 = dispatchableData.f26663b;
            RetryManager retryManager3 = communicationManagerImpl2.f26528i;
            communicationManagerImpl$dispatchData$2.f26531b = null;
            communicationManagerImpl$dispatchData$2.f26532c = null;
            communicationManagerImpl$dispatchData$2.d = null;
            communicationManagerImpl$dispatchData$2.f26535h = 3;
            objC = responseProcessor2.c(responseResult2, endPointInfo4, list3, retryManager3, z, communicationManagerImpl$dispatchData$2);
            if (objC != coroutineSingletons) {
                return objC;
            }
        }
        return coroutineSingletons;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object f(CommunicationManagerImpl communicationManagerImpl, ContinuationImpl continuationImpl) {
        CommunicationManagerImpl$obtainConfiguration$1 communicationManagerImpl$obtainConfiguration$1;
        EndPointInfo endPointInfo;
        CommunicationManagerImpl communicationManagerImpl2;
        ResponseProcessor responseProcessor;
        if (continuationImpl instanceof CommunicationManagerImpl$obtainConfiguration$1) {
            communicationManagerImpl$obtainConfiguration$1 = (CommunicationManagerImpl$obtainConfiguration$1) continuationImpl;
            int i2 = communicationManagerImpl$obtainConfiguration$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                communicationManagerImpl$obtainConfiguration$1.g = i2 - Integer.MIN_VALUE;
            } else {
                communicationManagerImpl$obtainConfiguration$1 = new CommunicationManagerImpl$obtainConfiguration$1(communicationManagerImpl, continuationImpl);
            }
        } else {
            communicationManagerImpl$obtainConfiguration$1 = new CommunicationManagerImpl$obtainConfiguration$1(communicationManagerImpl, continuationImpl);
        }
        Object obj = communicationManagerImpl$obtainConfiguration$1.f26538e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = communicationManagerImpl$obtainConfiguration$1.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            endPointInfo = communicationManagerImpl.f26523b.f26665a;
            ResponseProcessor responseProcessor2 = communicationManagerImpl.f26524c;
            NetworkDataSource networkDataSource = communicationManagerImpl.f26522a;
            ServerDataMaintainer serverDataMaintainer = communicationManagerImpl.l;
            if (serverDataMaintainer == null) {
                Intrinsics.h("serverDataMaintainer");
                throw null;
            }
            LocalServerData localServerData = new LocalServerData(serverDataMaintainer.d, serverDataMaintainer.f26607e, serverDataMaintainer.f26608f);
            RetryManager retryManager = communicationManagerImpl.f26528i;
            retryManager.getClass();
            endPointInfo.getClass();
            ConfigRequest configRequest = new ConfigRequest(endPointInfo, localServerData, (RetryInfo) retryManager.f26591a.get(endPointInfo), communicationManagerImpl.n);
            communicationManagerImpl$obtainConfiguration$1.f26536b = communicationManagerImpl;
            communicationManagerImpl$obtainConfiguration$1.f26537c = endPointInfo;
            communicationManagerImpl$obtainConfiguration$1.d = responseProcessor2;
            communicationManagerImpl$obtainConfiguration$1.g = 1;
            ResponseResult responseResultA = networkDataSource.a(configRequest);
            if (responseResultA != coroutineSingletons) {
                communicationManagerImpl2 = communicationManagerImpl;
                responseProcessor = responseProcessor2;
                obj = responseResultA;
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        responseProcessor = communicationManagerImpl$obtainConfiguration$1.d;
        endPointInfo = communicationManagerImpl$obtainConfiguration$1.f26537c;
        communicationManagerImpl2 = communicationManagerImpl$obtainConfiguration$1.f26536b;
        ResultKt.b(obj);
        RetryManager retryManager2 = communicationManagerImpl2.f26528i;
        communicationManagerImpl$obtainConfiguration$1.f26536b = null;
        communicationManagerImpl$obtainConfiguration$1.f26537c = null;
        communicationManagerImpl$obtainConfiguration$1.d = null;
        communicationManagerImpl$obtainConfiguration$1.g = 2;
        Object objB = responseProcessor.b((ResponseResult) obj, endPointInfo, retryManager2, communicationManagerImpl$obtainConfiguration$1);
        return objB == coroutineSingletons ? coroutineSingletons : objB;
    }

    @Override // com.dynatrace.agent.communication.CommunicationManager
    public final void a() {
        BuildersKt.c(this.f26525e, null, null, new CommunicationManagerImpl$stopCommunication$1(this, null), 3);
        this.f26530k = CommunicationState.Off.f26557a;
        Utility.b("terminated agent communication");
    }

    @Override // com.dynatrace.agent.communication.CommunicationManager
    public final Unit b(ServerConfigurationV4 serverConfigurationV4, ServerConfiguration serverConfiguration) {
        LocalServerData localServerData = new LocalServerData(AgentState.Disabled.f26619a, serverConfigurationV4, serverConfiguration);
        Utility.b("launching BPv4 communication with initial " + localServerData);
        this.l = new ServerDataMaintainer(localServerData, this.d);
        this.m = BuildersKt.c(this.f26525e, null, null, new CommunicationManagerImpl$start$2(this, null), 3);
        Duration.INSTANCE.getClass();
        g(new CommunicationContext(0L, CommunicationState.ConfigAwaiting.f26555a, null, null));
        return Unit.f71739a;
    }

    @Override // com.dynatrace.agent.communication.CommunicationManager
    public final void c(Integer num) {
        this.n = num;
    }

    @Override // com.dynatrace.agent.communication.CommunicationManager
    public final void d(ServerConfiguration serverConfiguration) {
        serverConfiguration.getClass();
        if (this.l != null) {
            BuildersKt.c(this.f26525e, null, null, new CommunicationManagerImpl$updateV3Config$1(this, serverConfiguration, null), 3);
        }
    }

    public final void g(CommunicationContext communicationContext) {
        communicationContext.getClass();
        Utility.b("heartbeat: next communication attempt scheduled with " + communicationContext);
        CommunicationState communicationState = communicationContext.f26513b;
        this.f26530k = communicationState;
        CommunicationManagerImpl$scheduleNextCommunicationAttempt$1 communicationManagerImpl$scheduleNextCommunicationAttempt$1 = new CommunicationManagerImpl$scheduleNextCommunicationAttempt$1(this, null);
        CommunicationContextTaskScheduler communicationContextTaskScheduler = this.f26527h;
        communicationContextTaskScheduler.getClass();
        if (communicationContextTaskScheduler.f26517c == null && communicationState.equals(CommunicationState.Offline.f26558a)) {
            Job job = communicationContextTaskScheduler.f26517c;
            if (job != null) {
                job.cancel(null);
            }
            communicationContextTaskScheduler.f26517c = null;
            communicationContextTaskScheduler.f26517c = BuildersKt.c(communicationContextTaskScheduler.f26515a, null, null, new CommunicationContextTaskScheduler$startTimer$1(communicationContextTaskScheduler, communicationManagerImpl$scheduleNextCommunicationAttempt$1, null), 3);
        } else {
            Job job2 = communicationContextTaskScheduler.f26517c;
            if (job2 != null) {
                job2.cancel(null);
            }
            communicationContextTaskScheduler.f26517c = null;
        }
        if (communicationState instanceof CommunicationState.Off) {
            return;
        }
        BuildersKt.c(this.f26525e, null, null, new CommunicationManagerImpl$scheduleNextCommunicationAttempt$2(communicationContext, this, null), 3);
    }
}
