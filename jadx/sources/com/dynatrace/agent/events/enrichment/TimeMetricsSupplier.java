package com.dynatrace.agent.events.enrichment;

import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/TimeMetricsSupplier;", "Lcom/dynatrace/agent/events/enrichment/AttributeSupplier;", "Lcom/dynatrace/agent/events/enrichment/TimeMetrics;", "metrics", "<init>", "(Lcom/dynatrace/agent/events/enrichment/TimeMetrics;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TimeMetricsSupplier implements AttributeSupplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeMetrics f26776a;

    public TimeMetricsSupplier(TimeMetrics timeMetrics) {
        timeMetrics.getClass();
        this.f26776a = timeMetrics;
    }

    @Override // com.dynatrace.agent.events.enrichment.AttributeSupplier
    public final ListBuilder a() {
        ListBuilder listBuilderV = CollectionsKt.v();
        TimeMetrics timeMetrics = this.f26776a;
        AttributeSupplierKt.a(listBuilderV, "start_time", Long.valueOf(timeMetrics.f26774a));
        AttributeSupplierKt.a(listBuilderV, "duration", Long.valueOf(Duration.e(timeMetrics.f26775b)));
        return CollectionsKt.r(listBuilderV);
    }
}
