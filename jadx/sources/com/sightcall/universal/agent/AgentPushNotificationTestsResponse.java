package com.sightcall.universal.agent;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0018B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0016HÖ\u0081\u0004J\n\u0010\u0017\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse;", "", b.a.f24015b, "", "type", l.f24145h, "Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse$Attributes;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse$Attributes;)V", "getId", "()Ljava/lang/String;", "getType", "getAttributes", "()Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse$Attributes;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "Attributes", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AgentPushNotificationTestsResponse {
    private final Attributes attributes;
    private final String id;
    private final String type;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\f\u001a\u00020\rHÖ\u0081\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse$Attributes;", "", "success", "", "<init>", "(Z)V", "getSuccess", "()Z", "component1", "copy", "equals", "other", "hashCode", "", "toString", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Attributes {
        private final boolean success;

        public Attributes(boolean z) {
            this.success = z;
        }

        public static /* synthetic */ Attributes copy$default(Attributes attributes, boolean z, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                z = attributes.success;
            }
            return attributes.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getSuccess() {
            return this.success;
        }

        public final Attributes copy(boolean success) {
            return new Attributes(success);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Attributes) && this.success == ((Attributes) other).success;
        }

        public final boolean getSuccess() {
            return this.success;
        }

        public int hashCode() {
            return Boolean.hashCode(this.success);
        }

        public String toString() {
            return tr.i("Attributes(success=", ")", this.success);
        }
    }

    public AgentPushNotificationTestsResponse(String str, String str2, Attributes attributes) {
        str.getClass();
        str2.getClass();
        attributes.getClass();
        this.id = str;
        this.type = str2;
        this.attributes = attributes;
    }

    public static /* synthetic */ AgentPushNotificationTestsResponse copy$default(AgentPushNotificationTestsResponse agentPushNotificationTestsResponse, String str, String str2, Attributes attributes, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = agentPushNotificationTestsResponse.id;
        }
        if ((i2 & 2) != 0) {
            str2 = agentPushNotificationTestsResponse.type;
        }
        if ((i2 & 4) != 0) {
            attributes = agentPushNotificationTestsResponse.attributes;
        }
        return agentPushNotificationTestsResponse.copy(str, str2, attributes);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Attributes getAttributes() {
        return this.attributes;
    }

    public final AgentPushNotificationTestsResponse copy(String id, String type, Attributes attributes) {
        id.getClass();
        type.getClass();
        attributes.getClass();
        return new AgentPushNotificationTestsResponse(id, type, attributes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AgentPushNotificationTestsResponse)) {
            return false;
        }
        AgentPushNotificationTestsResponse agentPushNotificationTestsResponse = (AgentPushNotificationTestsResponse) other;
        return Intrinsics.c(this.id, agentPushNotificationTestsResponse.id) && Intrinsics.c(this.type, agentPushNotificationTestsResponse.type) && Intrinsics.c(this.attributes, agentPushNotificationTestsResponse.attributes);
    }

    public final Attributes getAttributes() {
        return this.attributes;
    }

    public final String getId() {
        return this.id;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return this.attributes.hashCode() + fc.b(this.id.hashCode() * 31, 31, this.type);
    }

    public String toString() {
        String str = this.id;
        String str2 = this.type;
        Attributes attributes = this.attributes;
        StringBuilder sbS = fc.s("AgentPushNotificationTestsResponse(id=", str, ", type=", str2, ", attributes=");
        sbS.append(attributes);
        sbS.append(")");
        return sbS.toString();
    }
}
