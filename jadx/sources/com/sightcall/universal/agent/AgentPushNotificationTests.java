package com.sightcall.universal.agent;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/universal/agent/AgentPushNotificationTests;", "", "type", "", "<init>", "(Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AgentPushNotificationTests {
    private final String type;

    public /* synthetic */ AgentPushNotificationTests(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "agentPushNotificationTests" : str);
    }

    public static /* synthetic */ AgentPushNotificationTests copy$default(AgentPushNotificationTests agentPushNotificationTests, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = agentPushNotificationTests.type;
        }
        return agentPushNotificationTests.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    public final AgentPushNotificationTests copy(String type) {
        type.getClass();
        return new AgentPushNotificationTests(type);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AgentPushNotificationTests) && Intrinsics.c(this.type, ((AgentPushNotificationTests) other).type);
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return this.type.hashCode();
    }

    public String toString() {
        return fc.h("AgentPushNotificationTests(type=", this.type, ")");
    }

    public AgentPushNotificationTests(String str) {
        str.getClass();
        this.type = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AgentPushNotificationTests() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
