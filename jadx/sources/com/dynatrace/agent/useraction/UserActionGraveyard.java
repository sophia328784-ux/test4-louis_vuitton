package com.dynatrace.agent.useraction;

import com.dynatrace.agent.common.specification.OneAgentSpecification$RetentionSpecifications;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/useraction/UserActionGraveyard;", "", "", "retentionMs", "<init>", "(J)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class UserActionGraveyard {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f27083b;

    /* JADX WARN: Illegal instructions before constructor call */
    public UserActionGraveyard(long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            int i3 = OneAgentSpecification$RetentionSpecifications.f26511b;
            j2 = Duration.e(OneAgentSpecification$RetentionSpecifications.f26510a);
        }
        this(j2);
    }

    public UserActionGraveyard(long j2) {
        this.f27082a = j2;
        this.f27083b = new ArrayDeque();
    }

    public UserActionGraveyard() {
        this(0L, 1, null);
    }
}
