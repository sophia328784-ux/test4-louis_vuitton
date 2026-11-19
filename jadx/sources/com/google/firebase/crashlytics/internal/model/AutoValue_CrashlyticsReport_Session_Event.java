package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session_Event extends CrashlyticsReport.Session.Event {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f34866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CrashlyticsReport.Session.Event.Application f34868c;
    public final CrashlyticsReport.Session.Event.Device d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CrashlyticsReport.Session.Event.Log f34869e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CrashlyticsReport.Session.Event.RolloutsState f34870f;

    public static final class Builder extends CrashlyticsReport.Session.Event.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f34871a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f34872b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CrashlyticsReport.Session.Event.Application f34873c;
        public CrashlyticsReport.Session.Event.Device d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public CrashlyticsReport.Session.Event.Log f34874e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public CrashlyticsReport.Session.Event.RolloutsState f34875f;
        public byte g;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Builder
        public final CrashlyticsReport.Session.Event a() {
            String str;
            CrashlyticsReport.Session.Event.Application application;
            CrashlyticsReport.Session.Event.Device device;
            if (this.g == 1 && (str = this.f34872b) != null && (application = this.f34873c) != null && (device = this.d) != null) {
                return new AutoValue_CrashlyticsReport_Session_Event(this.f34871a, str, application, device, this.f34874e, this.f34875f);
            }
            StringBuilder sb = new StringBuilder();
            if ((1 & this.g) == 0) {
                sb.append(" timestamp");
            }
            if (this.f34872b == null) {
                sb.append(" type");
            }
            if (this.f34873c == null) {
                sb.append(" app");
            }
            if (this.d == null) {
                sb.append(" device");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Builder
        public final CrashlyticsReport.Session.Event.Builder b(CrashlyticsReport.Session.Event.Application application) {
            if (application != null) {
                this.f34873c = application;
                return this;
            }
            r81.d("Null app");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Builder
        public final CrashlyticsReport.Session.Event.Builder c(CrashlyticsReport.Session.Event.Device device) {
            if (device != null) {
                this.d = device;
                return this;
            }
            r81.d("Null device");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Builder
        public final CrashlyticsReport.Session.Event.Builder d(CrashlyticsReport.Session.Event.Log log) {
            this.f34874e = log;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Builder
        public final CrashlyticsReport.Session.Event.Builder e(CrashlyticsReport.Session.Event.RolloutsState rolloutsState) {
            this.f34875f = rolloutsState;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Builder
        public final CrashlyticsReport.Session.Event.Builder f(long j2) {
            this.f34871a = j2;
            this.g = (byte) (this.g | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Builder
        public final CrashlyticsReport.Session.Event.Builder g(String str) {
            if (str != null) {
                this.f34872b = str;
                return this;
            }
            r81.d("Null type");
            return null;
        }
    }

    public AutoValue_CrashlyticsReport_Session_Event(long j2, String str, CrashlyticsReport.Session.Event.Application application, CrashlyticsReport.Session.Event.Device device, CrashlyticsReport.Session.Event.Log log, CrashlyticsReport.Session.Event.RolloutsState rolloutsState) {
        this.f34866a = j2;
        this.f34867b = str;
        this.f34868c = application;
        this.d = device;
        this.f34869e = log;
        this.f34870f = rolloutsState;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event
    public final CrashlyticsReport.Session.Event.Application b() {
        return this.f34868c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event
    public final CrashlyticsReport.Session.Event.Device c() {
        return this.d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event
    public final CrashlyticsReport.Session.Event.Log d() {
        return this.f34869e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event
    public final CrashlyticsReport.Session.Event.RolloutsState e() {
        return this.f34870f;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Event)) {
            return false;
        }
        CrashlyticsReport.Session.Event event = (CrashlyticsReport.Session.Event) obj;
        if (this.f34866a != event.f() || !this.f34867b.equals(event.g()) || !this.f34868c.equals(event.b()) || !this.d.equals(event.c())) {
            return false;
        }
        CrashlyticsReport.Session.Event.Log log = this.f34869e;
        if (log == null) {
            if (event.d() != null) {
                return false;
            }
        } else if (!log.equals(event.d())) {
            return false;
        }
        CrashlyticsReport.Session.Event.RolloutsState rolloutsState = this.f34870f;
        if (rolloutsState == null) {
            return event.e() == null;
        }
        return rolloutsState.equals(event.e());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event
    public final long f() {
        return this.f34866a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event
    public final String g() {
        return this.f34867b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event
    public final CrashlyticsReport.Session.Event.Builder h() {
        Builder builder = new Builder();
        builder.f34871a = this.f34866a;
        builder.f34872b = this.f34867b;
        builder.f34873c = this.f34868c;
        builder.d = this.d;
        builder.f34874e = this.f34869e;
        builder.f34875f = this.f34870f;
        builder.g = (byte) 1;
        return builder;
    }

    public final int hashCode() {
        long j2 = this.f34866a;
        int iHashCode = (((((((((int) ((j2 >>> 32) ^ j2)) ^ 1000003) * 1000003) ^ this.f34867b.hashCode()) * 1000003) ^ this.f34868c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003;
        CrashlyticsReport.Session.Event.Log log = this.f34869e;
        int iHashCode2 = (iHashCode ^ (log == null ? 0 : log.hashCode())) * 1000003;
        CrashlyticsReport.Session.Event.RolloutsState rolloutsState = this.f34870f;
        return iHashCode2 ^ (rolloutsState != null ? rolloutsState.hashCode() : 0);
    }

    public final String toString() {
        return "Event{timestamp=" + this.f34866a + ", type=" + this.f34867b + ", app=" + this.f34868c + ", device=" + this.d + ", log=" + this.f34869e + ", rollouts=" + this.f34870f + "}";
    }
}
