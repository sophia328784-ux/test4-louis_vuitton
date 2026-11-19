package com.dynatrace.agent.di;

import com.dynatrace.agent.common.InstrumentationFlavor;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.storage.preference.ServerConfigurationDataSource;
import com.dynatrace.agent.useraction.UserActionController;
import com.dynatrace.agent.userinteraction.GestureSuppressionInterceptor;
import com.dynatrace.agent.userinteraction.handler.UserInteractionConfigImpl;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/dynatrace/agent/di/UserInteractionModule;", "", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;", "serverConfigurationDataSource", "Lcom/dynatrace/agent/common/InstrumentationFlavor;", "instrumentationFlavor", "Lcom/dynatrace/agent/useraction/UserActionController;", "userActionController", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/common/InstrumentationFlavor;Lcom/dynatrace/agent/useraction/UserActionController;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class UserInteractionModule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineScope f26719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeProvider f26720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SessionInformationProvider f26721c;
    public final ServerConfigurationDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UserActionController f26722e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final UserInteractionConfigImpl f26723f;
    public final GestureSuppressionInterceptor g;

    public UserInteractionModule(CoroutineScope coroutineScope, TimeProvider timeProvider, SessionInformationProvider sessionInformationProvider, ServerConfigurationDataSource serverConfigurationDataSource, InstrumentationFlavor instrumentationFlavor, UserActionController userActionController) {
        coroutineScope.getClass();
        timeProvider.getClass();
        sessionInformationProvider.getClass();
        serverConfigurationDataSource.getClass();
        instrumentationFlavor.getClass();
        userActionController.getClass();
        this.f26719a = coroutineScope;
        this.f26720b = timeProvider;
        this.f26721c = sessionInformationProvider;
        this.d = serverConfigurationDataSource;
        this.f26722e = userActionController;
        this.f26723f = new UserInteractionConfigImpl(instrumentationFlavor);
        this.g = new GestureSuppressionInterceptor(timeProvider);
    }
}
