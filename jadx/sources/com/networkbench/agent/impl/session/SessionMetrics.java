package com.networkbench.agent.impl.session;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class SessionMetrics {
    public static SessionMetrics sessionMetrics = new SessionMetrics();
    private Map<String, ISpan> metrics = new ConcurrentHashMap();

    public void addMetric(ISpan iSpan) {
        this.metrics.put(iSpan.getSpanId(), iSpan);
    }

    public void removeMetric(String str) {
        this.metrics.remove(str);
    }

    public ISpan retriveSpan(String str) {
        return !this.metrics.containsKey(str) ? new NullSpan() : this.metrics.get(str);
    }
}
