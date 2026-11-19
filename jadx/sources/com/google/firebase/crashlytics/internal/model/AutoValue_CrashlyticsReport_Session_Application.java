package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session_Application extends CrashlyticsReport.Session.Application {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34843c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f34844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f34845f;

    public static final class Builder extends CrashlyticsReport.Session.Application.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f34846a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f34847b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f34848c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f34849e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f34850f;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public final CrashlyticsReport.Session.Application a() {
            String str;
            String str2 = this.f34846a;
            if (str2 != null && (str = this.f34847b) != null) {
                return new AutoValue_CrashlyticsReport_Session_Application(str2, str, this.f34848c, this.d, this.f34849e, this.f34850f);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f34846a == null) {
                sb.append(" identifier");
            }
            if (this.f34847b == null) {
                sb.append(" version");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public final CrashlyticsReport.Session.Application.Builder b(String str) {
            this.f34849e = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public final CrashlyticsReport.Session.Application.Builder c(String str) {
            this.f34850f = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public final CrashlyticsReport.Session.Application.Builder d(String str) {
            this.f34848c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public final CrashlyticsReport.Session.Application.Builder e(String str) {
            if (str != null) {
                this.f34846a = str;
                return this;
            }
            r81.d("Null identifier");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public final CrashlyticsReport.Session.Application.Builder f(String str) {
            this.d = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application.Builder
        public final CrashlyticsReport.Session.Application.Builder g(String str) {
            if (str != null) {
                this.f34847b = str;
                return this;
            }
            r81.d("Null version");
            return null;
        }
    }

    public AutoValue_CrashlyticsReport_Session_Application(String str, String str2, String str3, String str4, String str5, String str6) {
        this.f34841a = str;
        this.f34842b = str2;
        this.f34843c = str3;
        this.d = str4;
        this.f34844e = str5;
        this.f34845f = str6;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public final String b() {
        return this.f34844e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public final String c() {
        return this.f34845f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public final String d() {
        return this.f34843c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public final String e() {
        return this.f34841a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Application)) {
            return false;
        }
        CrashlyticsReport.Session.Application application = (CrashlyticsReport.Session.Application) obj;
        if (!this.f34841a.equals(application.e()) || !this.f34842b.equals(application.h())) {
            return false;
        }
        String str = this.f34843c;
        if (str == null) {
            if (application.d() != null) {
                return false;
            }
        } else if (!str.equals(application.d())) {
            return false;
        }
        if (application.g() != null) {
            return false;
        }
        String str2 = this.d;
        if (str2 == null) {
            if (application.f() != null) {
                return false;
            }
        } else if (!str2.equals(application.f())) {
            return false;
        }
        String str3 = this.f34844e;
        if (str3 == null) {
            if (application.b() != null) {
                return false;
            }
        } else if (!str3.equals(application.b())) {
            return false;
        }
        String str4 = this.f34845f;
        if (str4 == null) {
            return application.c() == null;
        }
        return str4.equals(application.c());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public final String f() {
        return this.d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public final CrashlyticsReport.Session.Application.Organization g() {
        return null;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Application
    public final String h() {
        return this.f34842b;
    }

    public final int hashCode() {
        int iHashCode = (((this.f34841a.hashCode() ^ 1000003) * 1000003) ^ this.f34842b.hashCode()) * 1000003;
        String str = this.f34843c;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * (-721379959);
        String str2 = this.d;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f34844e;
        int iHashCode4 = (iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f34845f;
        return iHashCode4 ^ (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Application{identifier=");
        sb.append(this.f34841a);
        sb.append(", version=");
        sb.append(this.f34842b);
        sb.append(", displayVersion=");
        sb.append(this.f34843c);
        sb.append(", organization=null, installationUuid=");
        sb.append(this.d);
        sb.append(", developmentPlatform=");
        sb.append(this.f34844e);
        sb.append(", developmentPlatformVersion=");
        return n00.r(this.f34845f, "}", sb);
    }
}
