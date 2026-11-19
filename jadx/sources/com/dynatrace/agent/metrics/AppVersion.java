package com.dynatrace.agent.metrics;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/metrics/AppVersion;", "", "", "versionCode", "", "versionName", "<init>", "(JLjava/lang/String;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class AppVersion {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f26864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26865b;

    public AppVersion(long j2, String str) {
        this.f26864a = j2;
        this.f26865b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppVersion)) {
            return false;
        }
        AppVersion appVersion = (AppVersion) obj;
        return this.f26864a == appVersion.f26864a && Intrinsics.c(this.f26865b, appVersion.f26865b);
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.f26864a) * 31;
        String str = this.f26865b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppVersion(versionCode=");
        sb.append(this.f26864a);
        sb.append(", versionName=");
        return fc.l(sb, this.f26865b, ')');
    }
}
