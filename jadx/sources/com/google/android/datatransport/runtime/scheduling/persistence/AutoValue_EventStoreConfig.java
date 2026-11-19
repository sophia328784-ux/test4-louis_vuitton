package com.google.android.datatransport.runtime.scheduling.persistence;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_EventStoreConfig extends EventStoreConfig {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f28089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28090c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f28091e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f28092f;

    public static final class Builder extends EventStoreConfig.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Long f28093a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f28094b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f28095c;
        public Long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Integer f28096e;
    }

    public AutoValue_EventStoreConfig(long j2, long j3, int i2, int i3, int i4) {
        this.f28089b = j2;
        this.f28090c = i2;
        this.d = i3;
        this.f28091e = j3;
        this.f28092f = i4;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof EventStoreConfig) {
            AutoValue_EventStoreConfig autoValue_EventStoreConfig = (AutoValue_EventStoreConfig) ((EventStoreConfig) obj);
            if (this.f28089b == autoValue_EventStoreConfig.f28089b && this.f28090c == autoValue_EventStoreConfig.f28090c && this.d == autoValue_EventStoreConfig.d && this.f28091e == autoValue_EventStoreConfig.f28091e && this.f28092f == autoValue_EventStoreConfig.f28092f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j2 = this.f28089b;
        int i2 = (((((((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003) ^ this.f28090c) * 1000003) ^ this.d) * 1000003;
        long j3 = this.f28091e;
        return this.f28092f ^ ((i2 ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EventStoreConfig{maxStorageSizeInBytes=");
        sb.append(this.f28089b);
        sb.append(", loadBatchSize=");
        sb.append(this.f28090c);
        sb.append(", criticalSectionEnterTimeoutMs=");
        sb.append(this.d);
        sb.append(", eventCleanUpAge=");
        sb.append(this.f28091e);
        sb.append(", maxBlobByteSizePerRow=");
        return defpackage.a.i(this.f28092f, "}", sb);
    }
}
