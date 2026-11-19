package com.dynatrace.agent.lifecycle;

import com.dynatrace.agent.OneAgentEventDispatcher;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.events.EventFlowGovernor;
import com.dynatrace.agent.lifecycle.model.VisibilityStatus;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.useraction.UserActionController;
import com.dynatrace.agent.view.NavigationTracker;
import com.dynatrace.agent.view.ViewContextManagerApi;
import com.dynatrace.android.agent.util.Utility;
import java.util.LinkedHashSet;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;", "Lcom/dynatrace/agent/lifecycle/VisibilityManager;", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "Lcom/dynatrace/agent/OneAgentEventDispatcher;", "eventDispatcher", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "Lcom/dynatrace/agent/events/EventFlowGovernor;", "flowGovernor", "Lcom/dynatrace/agent/view/NavigationTracker;", "navigationTracker", "Lcom/dynatrace/agent/view/ViewContextManagerApi;", "viewContextManager", "Lcom/dynatrace/agent/useraction/UserActionController;", "userActionController", "<init>", "(Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/view/NavigationTracker;Lcom/dynatrace/agent/view/ViewContextManagerApi;Lcom/dynatrace/agent/useraction/UserActionController;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class VisibilityManagerImpl implements VisibilityManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeProvider f26845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OneAgentEventDispatcher f26846b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SessionInformationProvider f26847c;
    public final EventFlowGovernor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NavigationTracker f26848e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ViewContextManagerApi f26849f;
    public final UserActionController g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinkedHashSet f26850h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f26851i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public VisibilityStatus f26852j;

    public VisibilityManagerImpl(TimeProvider timeProvider, OneAgentEventDispatcher oneAgentEventDispatcher, SessionInformationProvider sessionInformationProvider, EventFlowGovernor eventFlowGovernor, NavigationTracker navigationTracker, ViewContextManagerApi viewContextManagerApi, UserActionController userActionController) {
        timeProvider.getClass();
        oneAgentEventDispatcher.getClass();
        sessionInformationProvider.getClass();
        eventFlowGovernor.getClass();
        navigationTracker.getClass();
        viewContextManagerApi.getClass();
        userActionController.getClass();
        this.f26845a = timeProvider;
        this.f26846b = oneAgentEventDispatcher;
        this.f26847c = sessionInformationProvider;
        this.d = eventFlowGovernor;
        this.f26848e = navigationTracker;
        this.f26849f = viewContextManagerApi;
        this.g = userActionController;
        this.f26850h = new LinkedHashSet();
        this.f26852j = VisibilityStatus.BACKGROUND;
    }

    @Override // com.dynatrace.agent.lifecycle.VisibilityManager
    public final void a(int i2) {
        Integer numValueOf = Integer.valueOf(i2);
        LinkedHashSet linkedHashSet = this.f26850h;
        linkedHashSet.add(numValueOf);
        if (linkedHashSet.size() != 1 || this.f26851i) {
            return;
        }
        this.f26852j = VisibilityStatus.FOREGROUND;
    }

    @Override // com.dynatrace.agent.lifecycle.VisibilityManager
    public final void b(int i2) {
        this.f26850h.add(Integer.valueOf(i2));
    }

    @Override // com.dynatrace.agent.lifecycle.VisibilityManager
    /* JADX INFO: renamed from: c, reason: from getter */
    public final VisibilityStatus getF26852j() {
        return this.f26852j;
    }

    @Override // com.dynatrace.agent.lifecycle.VisibilityManager
    public final void d(int i2, boolean z) throws JSONException {
        this.f26851i = z;
        Integer numValueOf = Integer.valueOf(i2);
        LinkedHashSet linkedHashSet = this.f26850h;
        linkedHashSet.remove(numValueOf);
        if (!linkedHashSet.isEmpty() || this.f26851i) {
            return;
        }
        VisibilityStatus visibilityStatus = VisibilityStatus.BACKGROUND;
        this.f26852j = visibilityStatus;
        SessionInformationMetrics sessionInformationMetricsA = this.f26847c.a();
        if (!sessionInformationMetricsA.f26885c) {
            Utility.b("visibility event cannot be tracked, isGrailEventsCanBeCaptured == false");
            return;
        }
        if (!sessionInformationMetricsA.f26886e) {
            Utility.b("visibility event cannot be tracked, session is disabled");
            return;
        }
        if (!sessionInformationMetricsA.g) {
            Utility.b("visibility event shouldn't be collected, because of data collection is disabled");
            return;
        }
        long jA = this.f26845a.a();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("characteristics.has_visibility_change", true);
        jSONObject.put("visibility.state", visibilityStatus.getKeyValue());
        this.d.a(new VisibilityManagerImpl$trackChangeToBackground$1(this, jSONObject, sessionInformationMetricsA, jA, null));
    }
}
