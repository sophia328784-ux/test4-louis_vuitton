package com.dynatrace.agent;

import com.dynatrace.agent.events.enrichment.WebContext;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.storage.preference.MetricsData;
import kotlin.Metadata;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/RumEventDispatcher;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface RumEventDispatcher {
    void a(long j2, SessionInformationMetrics sessionInformationMetrics, JSONObject jSONObject, boolean z);

    void b(JSONObject jSONObject, long j2, SessionInformationMetrics sessionInformationMetrics, MetricsData metricsData);

    void c(JSONObject jSONObject, long j2, long j3, SessionInformationMetrics sessionInformationMetrics, WebContext webContext);

    void d(JSONObject jSONObject, SessionInformationMetrics sessionInformationMetrics);
}
