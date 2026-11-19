package com.dynatrace.agent.useraction;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0006\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;", "", "", "maxDurationMs", "activityEndDelayMs", "<init>", "(JJ)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class UserActionConfigSnapshot {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f27072c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27074b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot$Companion;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public UserActionConfigSnapshot(long j2, long j3) {
        this.f27073a = j2;
        this.f27074b = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserActionConfigSnapshot)) {
            return false;
        }
        UserActionConfigSnapshot userActionConfigSnapshot = (UserActionConfigSnapshot) obj;
        return this.f27073a == userActionConfigSnapshot.f27073a && this.f27074b == userActionConfigSnapshot.f27074b;
    }

    public final int hashCode() {
        return Long.hashCode(this.f27074b) + (Long.hashCode(this.f27073a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UserActionConfigSnapshot(maxDurationMs=");
        sb.append(this.f27073a);
        sb.append(", activityEndDelayMs=");
        return fc.k(sb, this.f27074b, ')');
    }
}
