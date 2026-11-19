package com.dynatrace.agent.events.enrichment;

import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/ProtectedAttributesSupplier;", "Lcom/dynatrace/agent/events/enrichment/AttributeSupplier;", "", "applicationId", "agentVersion", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtectedAttributesSupplier implements AttributeSupplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26770b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/ProtectedAttributesSupplier$Companion;", "", "", "RUM_SCHEMA_VERSION", "Ljava/lang/String;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ProtectedAttributesSupplier(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f26769a = str;
        this.f26770b = str2;
    }

    @Override // com.dynatrace.agent.events.enrichment.AttributeSupplier
    public final ListBuilder a() {
        ListBuilder listBuilderV = CollectionsKt.v();
        AttributeSupplierKt.a(listBuilderV, "dt.rum.schema_version", "0.24.0");
        AttributeSupplierKt.b(listBuilderV, "dt.rum.agent.version", this.f26770b);
        AttributeSupplierKt.a(listBuilderV, "dt.rum.agent.type", ReferenceApiV3ConstKt.OS_NAME);
        AttributeSupplierKt.b(listBuilderV, "dt.rum.application.id", this.f26769a);
        return CollectionsKt.r(listBuilderV);
    }
}
