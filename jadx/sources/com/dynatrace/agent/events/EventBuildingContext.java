package com.dynatrace.agent.events;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynatrace/agent/events/EventBuildingContext;", "", "", "namespace", "builderName", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class EventBuildingContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JSONObject f26725a;

    public EventBuildingContext(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f26725a = new JSONObject();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public EventBuildingContext(String str) {
        this(null, str, 1, 0 == true ? 1 : 0);
        str.getClass();
    }

    public /* synthetic */ EventBuildingContext(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "event_properties." : str, str2);
    }
}
