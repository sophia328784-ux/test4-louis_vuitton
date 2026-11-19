package com.dynatrace.agent;

import com.dynatrace.agent.communication.CommunicationManager;
import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.exitreason.ExitReasonProcessor;
import com.dynatrace.agent.metrics.MetricsRepository;
import com.dynatrace.agent.storage.db.EndPointInfo;
import com.dynatrace.agent.storage.db.EventDatabaseDataSource;
import com.dynatrace.agent.storage.preference.EndPointInfoDataSource;
import com.dynatrace.agent.storage.preference.OneAgentConfigurationDiskDataSource;
import com.dynatrace.agent.storage.preference.ServerConfigurationDataSource;
import com.dynatrace.android.agent.conf.ConfigurationPublisher;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.util.Utility;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/dynatrace/agent/OneAgentStartupImpl;", "Lcom/dynatrace/agent/OneAgentStartup;", "Lcom/dynatrace/agent/communication/CommunicationManager;", "communicationManager", "Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;", "exitReasonProcessor", "Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;", "eventDatabaseDataSource", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;", "serverConfigurationDataSource", "Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;", "endPointInfoDataSource", "Lcom/dynatrace/agent/storage/db/EndPointInfo;", "activeEndPoint", "Lkotlinx/coroutines/CoroutineScope;", "externalScope", "Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;", "configurationPublisher", "Lcom/dynatrace/agent/metrics/MetricsRepository;", "metricsRepository", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "Lcom/dynatrace/agent/OneAgentConfiguration;", "oneAgentConfiguration", "Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;", "oneAgentConfigurationDiskDataSource", "<init>", "(Lcom/dynatrace/agent/communication/CommunicationManager;Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OneAgentStartupImpl implements OneAgentStartup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CommunicationManager f26480a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExitReasonProcessor f26481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EventDatabaseDataSource f26482c;
    public final ServerConfigurationDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EndPointInfoDataSource f26483e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EndPointInfo f26484f;
    public final CoroutineScope g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConfigurationPublisher f26485h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MetricsRepository f26486i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SessionInformationProvider f26487j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final OneAgentConfiguration f26488k;
    public final OneAgentConfigurationDiskDataSource l;
    public Job m;

    public OneAgentStartupImpl(CommunicationManager communicationManager, ExitReasonProcessor exitReasonProcessor, EventDatabaseDataSource eventDatabaseDataSource, ServerConfigurationDataSource serverConfigurationDataSource, EndPointInfoDataSource endPointInfoDataSource, EndPointInfo endPointInfo, CoroutineScope coroutineScope, ConfigurationPublisher configurationPublisher, MetricsRepository metricsRepository, SessionInformationProvider sessionInformationProvider, OneAgentConfiguration oneAgentConfiguration, OneAgentConfigurationDiskDataSource oneAgentConfigurationDiskDataSource) {
        communicationManager.getClass();
        exitReasonProcessor.getClass();
        eventDatabaseDataSource.getClass();
        serverConfigurationDataSource.getClass();
        endPointInfoDataSource.getClass();
        endPointInfo.getClass();
        coroutineScope.getClass();
        configurationPublisher.getClass();
        metricsRepository.getClass();
        sessionInformationProvider.getClass();
        oneAgentConfiguration.getClass();
        oneAgentConfigurationDiskDataSource.getClass();
        this.f26480a = communicationManager;
        this.f26481b = exitReasonProcessor;
        this.f26482c = eventDatabaseDataSource;
        this.d = serverConfigurationDataSource;
        this.f26483e = endPointInfoDataSource;
        this.f26484f = endPointInfo;
        this.g = coroutineScope;
        this.f26485h = configurationPublisher;
        this.f26486i = metricsRepository;
        this.f26487j = sessionInformationProvider;
        this.f26488k = oneAgentConfiguration;
        this.l = oneAgentConfigurationDiskDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007d, code lost:
    
        if (r14.b(r2, r0) == r1) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object d(com.dynatrace.agent.OneAgentStartupImpl r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            boolean r0 = r14 instanceof com.dynatrace.agent.OneAgentStartupImpl$resolveConfigV4ForStartup$1
            if (r0 == 0) goto L13
            r0 = r14
            com.dynatrace.agent.OneAgentStartupImpl$resolveConfigV4ForStartup$1 r0 = (com.dynatrace.agent.OneAgentStartupImpl$resolveConfigV4ForStartup$1) r0
            int r1 = r0.f26494e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f26494e = r1
            goto L18
        L13:
            com.dynatrace.agent.OneAgentStartupImpl$resolveConfigV4ForStartup$1 r0 = new com.dynatrace.agent.OneAgentStartupImpl$resolveConfigV4ForStartup$1
            r0.<init>(r13, r14)
        L18:
            java.lang.Object r14 = r0.f26493c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f26494e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 == r4) goto L33
            if (r2 != r3) goto L2c
            com.dynatrace.agent.OneAgentStartupImpl r13 = r0.f26492b
            kotlin.ResultKt.b(r14)
            goto L80
        L2c:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r13)
            r13 = 0
            return r13
        L33:
            com.dynatrace.agent.OneAgentStartupImpl r13 = r0.f26492b
            kotlin.ResultKt.b(r14)
            goto L49
        L39:
            kotlin.ResultKt.b(r14)
            com.dynatrace.agent.storage.preference.OneAgentConfigurationDiskDataSource r14 = r13.l
            r0.f26492b = r13
            r0.f26494e = r4
            java.lang.Object r14 = r14.a(r0)
            if (r14 != r1) goto L49
            goto L7f
        L49:
            java.lang.String r14 = (java.lang.String) r14
            com.dynatrace.agent.OneAgentConfiguration r2 = r13.f26488k
            java.lang.String r2 = r2.f26428a
            boolean r4 = kotlin.jvm.internal.Intrinsics.c(r14, r2)
            if (r4 != 0) goto La8
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "agent version changed from '"
            r4.<init>(r5)
            r4.append(r14)
            java.lang.String r14 = "' to '"
            r4.append(r14)
            r4.append(r2)
            java.lang.String r14 = "': resetting BPv4 revision to 0 to force full config response"
            r4.append(r14)
            java.lang.String r14 = r4.toString()
            com.dynatrace.android.agent.util.Utility.b(r14)
            com.dynatrace.agent.storage.preference.OneAgentConfigurationDiskDataSource r14 = r13.l
            r0.f26492b = r13
            r0.f26494e = r3
            java.lang.Object r14 = r14.b(r2, r0)
            if (r14 != r1) goto L80
        L7f:
            return r1
        L80:
            com.dynatrace.agent.storage.preference.ServerConfigurationDataSource r13 = r13.d
            com.dynatrace.agent.storage.preference.ServerConfigurationV4 r13 = r13.getF27010b()
            int r3 = r13.f27044b
            int r4 = r13.f27045c
            boolean r5 = r13.d
            java.util.List r6 = r13.f27046e
            java.lang.String r7 = r13.f27047f
            boolean r8 = r13.g
            boolean r9 = r13.f27048h
            int r10 = r13.f27049i
            int r11 = r13.f27050j
            int r12 = r13.f27051k
            r6.getClass()
            r7.getClass()
            com.dynatrace.agent.storage.preference.ServerConfigurationV4 r0 = new com.dynatrace.agent.storage.preference.ServerConfigurationV4
            r1 = 0
            r0.<init>(r1, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return r0
        La8:
            com.dynatrace.agent.storage.preference.ServerConfigurationDataSource r13 = r13.d
            com.dynatrace.agent.storage.preference.ServerConfigurationV4 r13 = r13.getF27010b()
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dynatrace.agent.OneAgentStartupImpl.d(com.dynatrace.agent.OneAgentStartupImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.dynatrace.agent.OneAgentStartup
    public final void a() {
        Utility.b("stopping BPv4 communication");
        this.f26480a.a();
        BuildersKt.c(this.g, null, null, new OneAgentStartupImpl$stopCommunication$1(this, null), 3);
    }

    @Override // com.dynatrace.agent.OneAgentStartup
    public final void b(ServerConfiguration serverConfiguration) {
        serverConfiguration.getClass();
        BuildersKt.c(this.g, null, null, new OneAgentStartupImpl$startCommunication$1(this, serverConfiguration, null), 3);
    }

    @Override // com.dynatrace.agent.OneAgentStartup
    public final void c(ServerConfiguration serverConfiguration) {
        this.m = BuildersKt.c(this.g, null, null, new OneAgentStartupImpl$init$1(this, serverConfiguration, null), 3);
    }
}
