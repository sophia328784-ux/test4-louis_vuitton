package com.google.firebase.crashlytics.internal.model;

import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_ProfilingManagerInfo extends CrashlyticsReport.ProfilingManagerInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger f34818a;

    public static final class Builder extends CrashlyticsReport.ProfilingManagerInfo.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger f34819a;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.Builder
        public final CrashlyticsReport.ProfilingManagerInfo a() {
            CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger profilingTrigger = this.f34819a;
            if (profilingTrigger != null) {
                return new AutoValue_CrashlyticsReport_ProfilingManagerInfo(profilingTrigger);
            }
            md.k("Missing required properties: profilingTrigger");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.Builder
        public final CrashlyticsReport.ProfilingManagerInfo.Builder b(CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger profilingTrigger) {
            if (profilingTrigger != null) {
                this.f34819a = profilingTrigger;
                return this;
            }
            r81.d("Null profilingTrigger");
            return null;
        }
    }

    public AutoValue_CrashlyticsReport_ProfilingManagerInfo(CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger profilingTrigger) {
        this.f34818a = profilingTrigger;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo
    public final CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger b() {
        return this.f34818a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.ProfilingManagerInfo) {
            return this.f34818a.equals(((CrashlyticsReport.ProfilingManagerInfo) obj).b());
        }
        return false;
    }

    public final int hashCode() {
        return this.f34818a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "ProfilingManagerInfo{profilingTrigger=" + this.f34818a + "}";
    }
}
