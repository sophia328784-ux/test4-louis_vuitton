package com.dynatrace.agent.events.enrichment;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/WebContext;", "Lcom/dynatrace/agent/events/enrichment/EnrichmentContext;", "Lorg/json/JSONObject;", "fields", "", "hasException", "<init>", "(Lorg/json/JSONObject;Z)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class WebContext extends EnrichmentContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JSONObject f26778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f26779b;

    public WebContext(JSONObject jSONObject, boolean z) {
        super(null);
        this.f26778a = jSONObject;
        this.f26779b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebContext)) {
            return false;
        }
        WebContext webContext = (WebContext) obj;
        return Intrinsics.c(this.f26778a, webContext.f26778a) && this.f26779b == webContext.f26779b;
    }

    public final int hashCode() {
        JSONObject jSONObject = this.f26778a;
        return Boolean.hashCode(this.f26779b) + ((jSONObject == null ? 0 : jSONObject.hashCode()) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WebContext(fields=");
        sb.append(this.f26778a);
        sb.append(", hasException=");
        return d21.q(sb, this.f26779b, ')');
    }
}
