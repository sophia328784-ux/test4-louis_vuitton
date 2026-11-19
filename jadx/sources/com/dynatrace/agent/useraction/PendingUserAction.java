package com.dynatrace.agent.useraction;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/dynatrace/agent/useraction/PendingUserAction;", "", "", "startTime", "Lorg/json/JSONObject;", "userInteractionEvent", "Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;", "configSnapshot", "", "suppressedUia", "<init>", "(JLorg/json/JSONObject;Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;Z)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PendingUserAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JSONObject f27065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UserActionConfigSnapshot f27066c;
    public final boolean d;

    public PendingUserAction(long j2, JSONObject jSONObject, UserActionConfigSnapshot userActionConfigSnapshot, boolean z) {
        jSONObject.getClass();
        userActionConfigSnapshot.getClass();
        this.f27064a = j2;
        this.f27065b = jSONObject;
        this.f27066c = userActionConfigSnapshot;
        this.d = z;
    }

    public /* synthetic */ PendingUserAction(long j2, JSONObject jSONObject, UserActionConfigSnapshot userActionConfigSnapshot, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, jSONObject, userActionConfigSnapshot, (i2 & 8) != 0 ? false : z);
    }
}
