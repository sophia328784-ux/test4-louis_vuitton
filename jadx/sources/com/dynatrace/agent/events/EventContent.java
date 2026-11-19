package com.dynatrace.agent.events;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynatrace/agent/events/EventContent;", "", "Lorg/json/JSONObject;", "customProperties", "agentProperties", "<init>", "(Lorg/json/JSONObject;Lorg/json/JSONObject;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class EventContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JSONObject f26726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JSONObject f26727b;

    public EventContent(JSONObject jSONObject, JSONObject jSONObject2) {
        jSONObject.getClass();
        jSONObject2.getClass();
        this.f26726a = jSONObject;
        this.f26727b = jSONObject2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EventContent)) {
            return false;
        }
        EventContent eventContent = (EventContent) obj;
        return Intrinsics.c(this.f26726a, eventContent.f26726a) && Intrinsics.c(this.f26727b, eventContent.f26727b);
    }

    public final int hashCode() {
        return this.f26727b.hashCode() + (this.f26726a.hashCode() * 31);
    }

    public final String toString() {
        return "EventContent(customProperties=" + this.f26726a + ", agentProperties=" + this.f26727b + ')';
    }
}
