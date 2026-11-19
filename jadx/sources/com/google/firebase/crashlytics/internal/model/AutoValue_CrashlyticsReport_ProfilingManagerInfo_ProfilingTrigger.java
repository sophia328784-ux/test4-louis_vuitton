package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_ProfilingManagerInfo_ProfilingTrigger extends CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f34820a;

    public static final class Builder extends CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f34821a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public byte f34822b;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.Builder
        public final CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger a() {
            if (this.f34822b == 1) {
                return new AutoValue_CrashlyticsReport_ProfilingManagerInfo_ProfilingTrigger(this.f34821a);
            }
            md.k("Missing required properties: trigger");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.Builder
        public final CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.Builder b(int i2) {
            this.f34821a = i2;
            this.f34822b = (byte) (this.f34822b | 1);
            return this;
        }
    }

    public AutoValue_CrashlyticsReport_ProfilingManagerInfo_ProfilingTrigger(int i2) {
        this.f34820a = i2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger
    public final int b() {
        return this.f34820a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger) && this.f34820a == ((CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger) obj).b();
    }

    public final int hashCode() {
        return this.f34820a ^ 1000003;
    }

    public final String toString() {
        return a.i(this.f34820a, "}", new StringBuilder("ProfilingTrigger{trigger="));
    }
}
