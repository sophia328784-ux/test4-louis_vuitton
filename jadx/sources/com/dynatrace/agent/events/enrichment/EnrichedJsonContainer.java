package com.dynatrace.agent.events.enrichment;

import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;", "", "Lorg/json/JSONObject;", "enrichedJson", "", "Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;", "overriddenAttributes", "<init>", "(Lorg/json/JSONObject;Ljava/util/List;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class EnrichedJsonContainer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JSONObject f26764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f26765b;

    public EnrichedJsonContainer(JSONObject jSONObject, List<EnrichmentAttribute> list) {
        jSONObject.getClass();
        list.getClass();
        this.f26764a = jSONObject;
        this.f26765b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EnrichedJsonContainer)) {
            return false;
        }
        EnrichedJsonContainer enrichedJsonContainer = (EnrichedJsonContainer) obj;
        return Intrinsics.c(this.f26764a, enrichedJsonContainer.f26764a) && Intrinsics.c(this.f26765b, enrichedJsonContainer.f26765b);
    }

    public final int hashCode() {
        return this.f26765b.hashCode() + (this.f26764a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EnrichedJsonContainer(enrichedJson=");
        sb.append(this.f26764a);
        sb.append(", overriddenAttributes=");
        return tr.m(sb, this.f26765b, ')');
    }
}
