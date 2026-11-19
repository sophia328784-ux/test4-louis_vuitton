package com.dynatrace.agent.lifecycle.model;

import defpackage.fc;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;", "", "Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;", "type", "", "time", "<init>", "(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;J)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class AppStartupInstant {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppStartupInstantType f26862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f26863b;

    public AppStartupInstant(AppStartupInstantType appStartupInstantType, long j2) {
        appStartupInstantType.getClass();
        this.f26862a = appStartupInstantType;
        this.f26863b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppStartupInstant)) {
            return false;
        }
        AppStartupInstant appStartupInstant = (AppStartupInstant) obj;
        return this.f26862a == appStartupInstant.f26862a && this.f26863b == appStartupInstant.f26863b;
    }

    public final int hashCode() {
        return Long.hashCode(this.f26863b) + (this.f26862a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppStartupInstant(type=");
        sb.append(this.f26862a);
        sb.append(", time=");
        return fc.k(sb, this.f26863b, ')');
    }
}
