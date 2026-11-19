package com.dynatrace.agent.events.enrichment.sanitation;

import java.util.List;
import kotlin.Metadata;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;", "", "Lorg/json/JSONObject;", "sanitizedJson", "", "Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;", "droppedAttributes", "droppedCustomAttributes", "<init>", "(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SanitationContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JSONObject f26797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f26798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f26799c;

    public SanitationContext(JSONObject jSONObject, List<JsonAttribute> list, List<JsonAttribute> list2) {
        jSONObject.getClass();
        list.getClass();
        list2.getClass();
        this.f26797a = jSONObject;
        this.f26798b = list;
        this.f26799c = list2;
    }
}
