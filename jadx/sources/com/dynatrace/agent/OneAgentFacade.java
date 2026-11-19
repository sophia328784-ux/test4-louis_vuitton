package com.dynatrace.agent;

import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.useraction.UserActionController;
import com.dynatrace.agent.view.ViewContextManagerApi;
import com.dynatrace.android.agent.util.Utility;
import kotlin.Metadata;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/dynatrace/agent/OneAgentFacade;", "Lcom/dynatrace/agent/ViewContextApi;", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "Lcom/dynatrace/agent/view/ViewContextManagerApi;", "viewContextManager", "Lcom/dynatrace/agent/RumEventDispatcher;", "eventDispatcher", "Lcom/dynatrace/agent/useraction/UserActionController;", "userActionController", "<init>", "(Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/ViewContextManagerApi;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/useraction/UserActionController;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OneAgentFacade implements ViewContextApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SessionInformationProvider f26465a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewContextManagerApi f26466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RumEventDispatcher f26467c;
    public final UserActionController d;

    public OneAgentFacade(SessionInformationProvider sessionInformationProvider, ViewContextManagerApi viewContextManagerApi, RumEventDispatcher rumEventDispatcher, UserActionController userActionController) {
        sessionInformationProvider.getClass();
        viewContextManagerApi.getClass();
        rumEventDispatcher.getClass();
        userActionController.getClass();
        this.f26465a = sessionInformationProvider;
        this.f26466b = viewContextManagerApi;
        this.f26467c = rumEventDispatcher;
        this.d = userActionController;
    }

    public final void a(long j2, SessionInformationMetrics sessionInformationMetrics, JSONObject jSONObject, boolean z) {
        sessionInformationMetrics.getClass();
        if (sessionInformationMetrics.a()) {
            this.f26467c.a(j2, sessionInformationMetrics, jSONObject, z);
            return;
        }
        Utility.b("dispatchEvent: event cannot be sent on this session, sessionInfo: " + sessionInformationMetrics);
    }
}
