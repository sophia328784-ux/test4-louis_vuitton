package com.dynatrace.agent.events.enrichment;

import com.dynatrace.agent.metrics.SessionInformationMetrics;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/SessionInformationSupplier;", "Lcom/dynatrace/agent/events/enrichment/AttributeSupplier;", "Lcom/dynatrace/agent/metrics/SessionInformationMetrics;", "sessionInformationMetrics", "<init>", "(Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SessionInformationSupplier implements AttributeSupplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SessionInformationMetrics f26771a;

    public SessionInformationSupplier(SessionInformationMetrics sessionInformationMetrics) {
        sessionInformationMetrics.getClass();
        this.f26771a = sessionInformationMetrics;
    }

    @Override // com.dynatrace.agent.events.enrichment.AttributeSupplier
    public final ListBuilder a() {
        ListBuilder listBuilderV = CollectionsKt.v();
        SessionInformationMetrics sessionInformationMetrics = this.f26771a;
        AttributeSupplierKt.a(listBuilderV, "dt.rum.instance.id", sessionInformationMetrics.f26883a);
        AttributeSupplierKt.a(listBuilderV, "dt.rum.sid", sessionInformationMetrics.f26884b);
        return CollectionsKt.r(listBuilderV);
    }
}
