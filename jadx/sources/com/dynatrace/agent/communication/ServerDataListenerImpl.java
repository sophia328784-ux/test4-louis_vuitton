package com.dynatrace.agent.communication;

import com.dynatrace.agent.OneAgentConfiguration;
import com.dynatrace.agent.communication.api.AgentState;
import com.dynatrace.agent.communication.api.ServerDataListener;
import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.events.TracestateHeader;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.storage.memory.DynamicConfigDataSource;
import com.dynatrace.agent.storage.preference.ServerConfigurationDataSource;
import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import com.dynatrace.android.agent.communication.ServerConfigurationListener;
import com.dynatrace.android.agent.conf.ConfigurationPublisher;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import defpackage.lh0;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/dynatrace/agent/communication/ServerDataListenerImpl;", "Lcom/dynatrace/agent/communication/api/ServerDataListener;", "Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;", "legacyServerConfigurationListener", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;", "serverConfigurationDataSource", "Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;", "dynamicConfigDataSource", "Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;", "configurationPublisher", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "Lcom/dynatrace/agent/OneAgentConfiguration;", "oneAgentConfiguration", "<init>", "(Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/OneAgentConfiguration;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ServerDataListenerImpl implements ServerDataListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ServerConfigurationListener f26595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ServerConfigurationDataSource f26596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DynamicConfigDataSource f26597c;
    public final ConfigurationPublisher d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SessionInformationProvider f26598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final OneAgentConfiguration f26599f;

    public ServerDataListenerImpl(ServerConfigurationListener serverConfigurationListener, ServerConfigurationDataSource serverConfigurationDataSource, DynamicConfigDataSource dynamicConfigDataSource, ConfigurationPublisher configurationPublisher, SessionInformationProvider sessionInformationProvider, OneAgentConfiguration oneAgentConfiguration) {
        serverConfigurationListener.getClass();
        serverConfigurationDataSource.getClass();
        dynamicConfigDataSource.getClass();
        configurationPublisher.getClass();
        sessionInformationProvider.getClass();
        oneAgentConfiguration.getClass();
        this.f26595a = serverConfigurationListener;
        this.f26596b = serverConfigurationDataSource;
        this.f26597c = dynamicConfigDataSource;
        this.d = configurationPublisher;
        this.f26598e = sessionInformationProvider;
        this.f26599f = oneAgentConfiguration;
    }

    @Override // com.dynatrace.agent.communication.api.ServerDataListener
    public final Unit a(ServerConfiguration serverConfiguration) {
        this.f26595a.a(serverConfiguration);
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.dynatrace.agent.communication.api.ServerDataListener
    public final Object b(AgentState agentState, ServerConfigurationV4 serverConfigurationV4, ContinuationImpl continuationImpl) {
        ServerDataListenerImpl$onConfigurationUpdate$1 serverDataListenerImpl$onConfigurationUpdate$1;
        if (continuationImpl instanceof ServerDataListenerImpl$onConfigurationUpdate$1) {
            serverDataListenerImpl$onConfigurationUpdate$1 = (ServerDataListenerImpl$onConfigurationUpdate$1) continuationImpl;
            int i2 = serverDataListenerImpl$onConfigurationUpdate$1.f26603f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                serverDataListenerImpl$onConfigurationUpdate$1.f26603f = i2 - Integer.MIN_VALUE;
            } else {
                serverDataListenerImpl$onConfigurationUpdate$1 = new ServerDataListenerImpl$onConfigurationUpdate$1(this, continuationImpl);
            }
        } else {
            serverDataListenerImpl$onConfigurationUpdate$1 = new ServerDataListenerImpl$onConfigurationUpdate$1(this, continuationImpl);
        }
        Object obj = serverDataListenerImpl$onConfigurationUpdate$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = serverDataListenerImpl$onConfigurationUpdate$1.f26603f;
        if (i3 == 0) {
            ResultKt.b(obj);
            SessionInformationMetrics sessionInformationMetricsA = this.f26598e.a();
            TracestateHeader.TracestateContext tracestateContext = TracestateHeader.f26755a;
            TracestateHeader.d(serverConfigurationV4.f27047f, sessionInformationMetricsA.f26883a, sessionInformationMetricsA.f26884b, this.f26599f.f26429b);
            TracestateHeader.f26756b = serverConfigurationV4.g;
            this.f26595a.b(agentState);
            this.f26597c.b(agentState);
            ServerConfigurationDataSource serverConfigurationDataSource = this.f26596b;
            serverDataListenerImpl$onConfigurationUpdate$1.f26600b = this;
            serverDataListenerImpl$onConfigurationUpdate$1.f26601c = serverConfigurationV4;
            serverDataListenerImpl$onConfigurationUpdate$1.f26603f = 1;
            if (serverConfigurationDataSource.a(serverConfigurationV4, serverDataListenerImpl$onConfigurationUpdate$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            serverConfigurationV4 = serverDataListenerImpl$onConfigurationUpdate$1.f26601c;
            this = serverDataListenerImpl$onConfigurationUpdate$1.f26600b;
            ResultKt.b(obj);
        }
        this.d.a(new lh0(serverConfigurationV4, 1));
        return Unit.f71739a;
    }
}
