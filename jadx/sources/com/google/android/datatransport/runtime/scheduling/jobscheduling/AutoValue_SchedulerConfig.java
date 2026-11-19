package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.time.Clock;
import defpackage.r81;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_SchedulerConfig extends SchedulerConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Clock f28055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f28056b;

    public AutoValue_SchedulerConfig(Clock clock, Map map) {
        if (clock == null) {
            r81.d("Null clock");
            throw null;
        }
        this.f28055a = clock;
        if (map != null) {
            this.f28056b = map;
        } else {
            r81.d("Null values");
            throw null;
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    public final Clock a() {
        return this.f28055a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    public final Map d() {
        return this.f28056b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig)) {
            return false;
        }
        SchedulerConfig schedulerConfig = (SchedulerConfig) obj;
        return this.f28055a.equals(schedulerConfig.a()) && this.f28056b.equals(schedulerConfig.d());
    }

    public final int hashCode() {
        return this.f28056b.hashCode() ^ ((this.f28055a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f28055a + ", values=" + this.f28056b + "}";
    }
}
