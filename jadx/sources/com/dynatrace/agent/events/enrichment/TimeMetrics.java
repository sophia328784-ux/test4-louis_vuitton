package com.dynatrace.agent.events.enrichment;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/TimeMetrics;", "", "", "startTime", "Lkotlin/time/Duration;", "duration", "<init>", "(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class TimeMetrics {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f26774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f26775b;

    /* JADX WARN: Illegal instructions before constructor call */
    public TimeMetrics(long j2, long j3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 2) != 0) {
            Duration.INSTANCE.getClass();
            j3 = 0;
        }
        this(j2, j3, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeMetrics)) {
            return false;
        }
        TimeMetrics timeMetrics = (TimeMetrics) obj;
        return this.f26774a == timeMetrics.f26774a && Duration.d(this.f26775b, timeMetrics.f26775b);
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.f26774a) * 31;
        Duration.Companion companion = Duration.INSTANCE;
        return Long.hashCode(this.f26775b) + iHashCode;
    }

    public final String toString() {
        return "TimeMetrics(startTime=" + this.f26774a + ", duration=" + ((Object) Duration.l(this.f26775b)) + ')';
    }

    public TimeMetrics(long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f26774a = j2;
        this.f26775b = j3;
    }
}
