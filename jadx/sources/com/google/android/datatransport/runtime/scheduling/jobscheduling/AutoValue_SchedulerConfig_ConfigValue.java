package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import defpackage.md;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_SchedulerConfig_ConfigValue extends SchedulerConfig.ConfigValue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f28057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f28058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f28059c;

    public static final class Builder extends SchedulerConfig.ConfigValue.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Long f28060a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Long f28061b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Set f28062c;

        public final SchedulerConfig.ConfigValue a() {
            String strConcat = this.f28060a == null ? " delta" : "";
            if (this.f28061b == null) {
                strConcat = strConcat.concat(" maxAllowedDelay");
            }
            if (this.f28062c == null) {
                strConcat = strConcat.concat(" flags");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_SchedulerConfig_ConfigValue(this.f28060a.longValue(), this.f28061b.longValue(), this.f28062c);
            }
            md.k("Missing required properties:".concat(strConcat));
            return null;
        }
    }

    public AutoValue_SchedulerConfig_ConfigValue(long j2, long j3, Set set) {
        this.f28057a = j2;
        this.f28058b = j3;
        this.f28059c = set;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    public final long a() {
        return this.f28057a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    public final Set b() {
        return this.f28059c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    public final long c() {
        return this.f28058b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig.ConfigValue)) {
            return false;
        }
        SchedulerConfig.ConfigValue configValue = (SchedulerConfig.ConfigValue) obj;
        return this.f28057a == configValue.a() && this.f28058b == configValue.c() && this.f28059c.equals(configValue.b());
    }

    public final int hashCode() {
        long j2 = this.f28057a;
        int i2 = (((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003;
        long j3 = this.f28058b;
        return this.f28059c.hashCode() ^ ((i2 ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003);
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f28057a + ", maxAllowedDelay=" + this.f28058b + ", flags=" + this.f28059c + "}";
    }
}
