package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session_Event_Application_ProcessDetails extends CrashlyticsReport.Session.Event.Application.ProcessDetails {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f34935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f34936c;
    public final boolean d;

    public static final class Builder extends CrashlyticsReport.Session.Event.Application.ProcessDetails.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f34937a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f34938b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f34939c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte f34940e;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.ProcessDetails.Builder
        public final CrashlyticsReport.Session.Event.Application.ProcessDetails a() {
            String str;
            if (this.f34940e == 7 && (str = this.f34937a) != null) {
                return new AutoValue_CrashlyticsReport_Session_Event_Application_ProcessDetails(str, this.f34938b, this.f34939c, this.d);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f34937a == null) {
                sb.append(" processName");
            }
            if ((this.f34940e & 1) == 0) {
                sb.append(" pid");
            }
            if ((this.f34940e & 2) == 0) {
                sb.append(" importance");
            }
            if ((this.f34940e & 4) == 0) {
                sb.append(" defaultProcess");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.ProcessDetails.Builder
        public final CrashlyticsReport.Session.Event.Application.ProcessDetails.Builder b(boolean z) {
            this.d = z;
            this.f34940e = (byte) (this.f34940e | 4);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.ProcessDetails.Builder
        public final CrashlyticsReport.Session.Event.Application.ProcessDetails.Builder c(int i2) {
            this.f34939c = i2;
            this.f34940e = (byte) (this.f34940e | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.ProcessDetails.Builder
        public final CrashlyticsReport.Session.Event.Application.ProcessDetails.Builder d(int i2) {
            this.f34938b = i2;
            this.f34940e = (byte) (this.f34940e | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.ProcessDetails.Builder
        public final CrashlyticsReport.Session.Event.Application.ProcessDetails.Builder e(String str) {
            if (str != null) {
                this.f34937a = str;
                return this;
            }
            r81.d("Null processName");
            return null;
        }
    }

    public AutoValue_CrashlyticsReport_Session_Event_Application_ProcessDetails(String str, int i2, int i3, boolean z) {
        this.f34934a = str;
        this.f34935b = i2;
        this.f34936c = i3;
        this.d = z;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.ProcessDetails
    public final int b() {
        return this.f34936c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.ProcessDetails
    public final int c() {
        return this.f34935b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.ProcessDetails
    public final String d() {
        return this.f34934a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.ProcessDetails
    public final boolean e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Event.Application.ProcessDetails)) {
            return false;
        }
        CrashlyticsReport.Session.Event.Application.ProcessDetails processDetails = (CrashlyticsReport.Session.Event.Application.ProcessDetails) obj;
        return this.f34934a.equals(processDetails.d()) && this.f34935b == processDetails.c() && this.f34936c == processDetails.b() && this.d == processDetails.e();
    }

    public final int hashCode() {
        return (this.d ? 1231 : 1237) ^ ((((((this.f34934a.hashCode() ^ 1000003) * 1000003) ^ this.f34935b) * 1000003) ^ this.f34936c) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ProcessDetails{processName=");
        sb.append(this.f34934a);
        sb.append(", pid=");
        sb.append(this.f34935b);
        sb.append(", importance=");
        sb.append(this.f34936c);
        sb.append(", defaultProcess=");
        return a.p(sb, this.d, "}");
    }
}
