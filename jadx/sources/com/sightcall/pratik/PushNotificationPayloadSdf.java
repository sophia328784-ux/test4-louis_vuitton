package com.sightcall.pratik;

import com.google.gson.annotations.SerializedName;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0083\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/sightcall/pratik/PushNotificationPayloadSdf;", "Lcom/sightcall/pratik/PushNotificationPayload;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "urlHash", "sessionId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "getUrlHash", "getSessionId", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PushNotificationPayloadSdf extends PushNotificationPayload {

    @SerializedName("sessionId")
    private final String sessionId;

    @SerializedName(ConfigurationName.DOWNLOAD_PLUGIN_URL)
    private final String url;

    @SerializedName("urlHash")
    private final String urlHash;

    public PushNotificationPayloadSdf(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.url = str;
        this.urlHash = str2;
        this.sessionId = str3;
    }

    public static /* synthetic */ PushNotificationPayloadSdf copy$default(PushNotificationPayloadSdf pushNotificationPayloadSdf, String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = pushNotificationPayloadSdf.url;
        }
        if ((i2 & 2) != 0) {
            str2 = pushNotificationPayloadSdf.urlHash;
        }
        if ((i2 & 4) != 0) {
            str3 = pushNotificationPayloadSdf.sessionId;
        }
        return pushNotificationPayloadSdf.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUrlHash() {
        return this.urlHash;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSessionId() {
        return this.sessionId;
    }

    public final PushNotificationPayloadSdf copy(String url, String urlHash, String sessionId) {
        url.getClass();
        urlHash.getClass();
        sessionId.getClass();
        return new PushNotificationPayloadSdf(url, urlHash, sessionId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PushNotificationPayloadSdf)) {
            return false;
        }
        PushNotificationPayloadSdf pushNotificationPayloadSdf = (PushNotificationPayloadSdf) other;
        return Intrinsics.c(this.url, pushNotificationPayloadSdf.url) && Intrinsics.c(this.urlHash, pushNotificationPayloadSdf.urlHash) && Intrinsics.c(this.sessionId, pushNotificationPayloadSdf.sessionId);
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getUrlHash() {
        return this.urlHash;
    }

    public int hashCode() {
        return this.sessionId.hashCode() + fc.b(this.url.hashCode() * 31, 31, this.urlHash);
    }

    public String toString() {
        return n00.r(this.sessionId, ")", fc.s("PushNotificationPayloadSdf(url=", this.url, ", urlHash=", this.urlHash, ", sessionId="));
    }
}
