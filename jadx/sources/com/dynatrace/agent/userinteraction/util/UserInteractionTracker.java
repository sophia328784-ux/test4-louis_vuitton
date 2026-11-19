package com.dynatrace.agent.userinteraction.util;

import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.useraction.UserActionController;
import com.dynatrace.android.agent.util.Utility;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;", "", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "Lcom/dynatrace/agent/useraction/UserActionController;", "userActionController", "<init>", "(Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/useraction/UserActionController;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class UserInteractionTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SessionInformationProvider f27195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeProvider f27196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UserActionController f27197c;

    public UserInteractionTracker(SessionInformationProvider sessionInformationProvider, TimeProvider timeProvider, UserActionController userActionController) {
        sessionInformationProvider.getClass();
        timeProvider.getClass();
        userActionController.getClass();
        this.f27195a = sessionInformationProvider;
        this.f27196b = timeProvider;
        this.f27197c = userActionController;
    }

    public final void a(JSONObject jSONObject, long j2, long j3, boolean z) throws JSONException {
        SessionInformationMetrics sessionInformationMetricsA = this.f27195a.a();
        if (!sessionInformationMetricsA.f26885c) {
            Utility.b("User Interaction cannot be tracked, isGrailEventsCanBeCaptured == false");
            return;
        }
        if (!sessionInformationMetricsA.f26886e) {
            Utility.b("User Interaction cannot be tracked, session is disabled");
            return;
        }
        if (!sessionInformationMetricsA.g) {
            Utility.b("User Interaction event shouldn't be collected, because of data collection is disabled");
            return;
        }
        jSONObject.put("start_time", j3);
        jSONObject.put("duration", j2);
        UserActionController userActionController = this.f27197c;
        userActionController.getClass();
        SessionInformationMetrics sessionInformationMetricsA2 = userActionController.d.a();
        if (!sessionInformationMetricsA2.g) {
            Utility.b("onUserInteractionEnd skipped: DataCollectionLevel is OFF");
            return;
        }
        if (!userActionController.f27077c.b().f27048h) {
            Utility.b("onUserInteractionEnd: uaEnable=false, UA creation skipped");
            userActionController.b(jSONObject, sessionInformationMetricsA2, z);
            return;
        }
        if (!userActionController.f27080h) {
            Utility.b("onUserInteractionEnd: automaticDetectionEnabled=false, UA creation skipped");
            ReentrantLock reentrantLock = userActionController.f27079f;
            reentrantLock.lock();
            try {
                userActionController.f27081i.j(jSONObject);
                reentrantLock.unlock();
                userActionController.b(jSONObject, sessionInformationMetricsA2, z);
                return;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        String strOptString = jSONObject.optString("ui_element.responder.detected_name");
        strOptString.getClass();
        if (strOptString.length() == 0) {
            Utility.b("onUserInteractionEnd: UIA has no responder, UA creation skipped");
            userActionController.b(jSONObject, sessionInformationMetricsA2, z);
            return;
        }
        Utility.b("onUserInteractionEnd: UIA (" + jSONObject.optString("interaction.type") + ") accepted; uaStartTime=" + j3 + ", suppressedUia=" + z);
        JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
        ReentrantLock reentrantLock2 = userActionController.f27079f;
        reentrantLock2.lock();
        try {
            userActionController.f27081i.e(jSONObject2, j3, z);
        } finally {
            reentrantLock2.unlock();
        }
    }
}
