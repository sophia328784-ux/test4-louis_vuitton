package com.sightcall.analyticsagentsession;

import java.net.URL;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0005HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;", "", "uploadUrl", "Ljava/net/URL;", "token", "", "<init>", "(Ljava/net/URL;Ljava/lang/String;)V", "getUploadUrl", "()Ljava/net/URL;", "getToken", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AnalyticsAgentSession {
    private final String token;
    private final URL uploadUrl;

    public AnalyticsAgentSession(URL url, String str) {
        url.getClass();
        str.getClass();
        this.uploadUrl = url;
        this.token = str;
    }

    public static /* synthetic */ AnalyticsAgentSession copy$default(AnalyticsAgentSession analyticsAgentSession, URL url, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            url = analyticsAgentSession.uploadUrl;
        }
        if ((i2 & 2) != 0) {
            str = analyticsAgentSession.token;
        }
        return analyticsAgentSession.copy(url, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final URL getUploadUrl() {
        return this.uploadUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getToken() {
        return this.token;
    }

    public final AnalyticsAgentSession copy(URL uploadUrl, String token) {
        uploadUrl.getClass();
        token.getClass();
        return new AnalyticsAgentSession(uploadUrl, token);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AnalyticsAgentSession)) {
            return false;
        }
        AnalyticsAgentSession analyticsAgentSession = (AnalyticsAgentSession) other;
        return Intrinsics.c(this.uploadUrl, analyticsAgentSession.uploadUrl) && Intrinsics.c(this.token, analyticsAgentSession.token);
    }

    public final String getToken() {
        return this.token;
    }

    public final URL getUploadUrl() {
        return this.uploadUrl;
    }

    public int hashCode() {
        return this.token.hashCode() + (this.uploadUrl.hashCode() * 31);
    }

    public String toString() {
        return "AnalyticsAgentSession(uploadUrl=" + this.uploadUrl + ", token=" + this.token + ")";
    }
}
