package com.dynatrace.agent.lifecycle.callback;

import com.dynatrace.agent.OneAgentConfiguration;
import com.dynatrace.agent.common.InstrumentationFlavor;
import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.view.ViewContextManagerApi;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;", "", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "Lcom/dynatrace/agent/view/ViewContextManagerApi;", "viewContextManager", "Lcom/dynatrace/agent/OneAgentConfiguration;", "oneAgentConfiguration", "<init>", "(Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/ViewContextManagerApi;Lcom/dynatrace/agent/OneAgentConfiguration;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CurrentViewTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SessionInformationProvider f26859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewContextManagerApi f26860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f26861c;

    public CurrentViewTracker(SessionInformationProvider sessionInformationProvider, ViewContextManagerApi viewContextManagerApi, OneAgentConfiguration oneAgentConfiguration) {
        InstrumentationFlavor instrumentationFlavor;
        sessionInformationProvider.getClass();
        viewContextManagerApi.getClass();
        oneAgentConfiguration.getClass();
        this.f26859a = sessionInformationProvider;
        this.f26860b = viewContextManagerApi;
        this.f26861c = (!oneAgentConfiguration.f26431e || (instrumentationFlavor = oneAgentConfiguration.f26434i) == InstrumentationFlavor.FLUTTER || instrumentationFlavor == InstrumentationFlavor.REACT_NATIVE || instrumentationFlavor == InstrumentationFlavor.MAUI) ? false : true;
    }
}
