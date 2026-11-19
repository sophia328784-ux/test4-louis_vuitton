package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport extends CrashlyticsReport {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34769c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f34770e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f34771f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f34772h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f34773i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f34774j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CrashlyticsReport.Session f34775k;
    public final CrashlyticsReport.FilesPayload l;
    public final CrashlyticsReport.ApplicationExitInfo m;

    public static final class Builder extends CrashlyticsReport.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f34776a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f34777b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f34778c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f34779e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f34780f;
        public String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f34781h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f34782i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public CrashlyticsReport.Session f34783j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public CrashlyticsReport.FilesPayload f34784k;
        public CrashlyticsReport.ApplicationExitInfo l;
        public byte m;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport a() {
            if (this.m == 1 && this.f34776a != null && this.f34777b != null && this.d != null && this.f34781h != null && this.f34782i != null) {
                return new AutoValue_CrashlyticsReport(this.f34776a, this.f34777b, this.f34778c, this.d, this.f34779e, this.f34780f, this.g, this.f34781h, this.f34782i, this.f34783j, this.f34784k, this.l);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f34776a == null) {
                sb.append(" sdkVersion");
            }
            if (this.f34777b == null) {
                sb.append(" gmpAppId");
            }
            if ((1 & this.m) == 0) {
                sb.append(" platform");
            }
            if (this.d == null) {
                sb.append(" installationUuid");
            }
            if (this.f34781h == null) {
                sb.append(" buildVersion");
            }
            if (this.f34782i == null) {
                sb.append(" displayVersion");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder b(CrashlyticsReport.ApplicationExitInfo applicationExitInfo) {
            this.l = applicationExitInfo;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder c(String str) {
            this.g = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder d(String str) {
            if (str != null) {
                this.f34781h = str;
                return this;
            }
            r81.d("Null buildVersion");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder e(String str) {
            if (str != null) {
                this.f34782i = str;
                return this;
            }
            r81.d("Null displayVersion");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder f(String str) {
            this.f34780f = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder g(String str) {
            this.f34779e = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder h(String str) {
            if (str != null) {
                this.f34777b = str;
                return this;
            }
            r81.d("Null gmpAppId");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder i(String str) {
            if (str != null) {
                this.d = str;
                return this;
            }
            r81.d("Null installationUuid");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder j(CrashlyticsReport.FilesPayload filesPayload) {
            this.f34784k = filesPayload;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder k(int i2) {
            this.f34778c = i2;
            this.m = (byte) (this.m | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder l(String str) {
            if (str != null) {
                this.f34776a = str;
                return this;
            }
            r81.d("Null sdkVersion");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Builder
        public final CrashlyticsReport.Builder m(CrashlyticsReport.Session session) {
            this.f34783j = session;
            return this;
        }
    }

    public AutoValue_CrashlyticsReport(String str, String str2, int i2, String str3, String str4, String str5, String str6, String str7, String str8, CrashlyticsReport.Session session, CrashlyticsReport.FilesPayload filesPayload, CrashlyticsReport.ApplicationExitInfo applicationExitInfo) {
        this.f34768b = str;
        this.f34769c = str2;
        this.d = i2;
        this.f34770e = str3;
        this.f34771f = str4;
        this.g = str5;
        this.f34772h = str6;
        this.f34773i = str7;
        this.f34774j = str8;
        this.f34775k = session;
        this.l = filesPayload;
        this.m = applicationExitInfo;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final CrashlyticsReport.ApplicationExitInfo b() {
        return this.m;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final String c() {
        return this.f34772h;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final String d() {
        return this.f34773i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final String e() {
        return this.f34774j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport)) {
            return false;
        }
        CrashlyticsReport crashlyticsReport = (CrashlyticsReport) obj;
        if (!this.f34768b.equals(crashlyticsReport.l()) || !this.f34769c.equals(crashlyticsReport.h()) || this.d != crashlyticsReport.k() || !this.f34770e.equals(crashlyticsReport.i())) {
            return false;
        }
        String str = this.f34771f;
        if (str == null) {
            if (crashlyticsReport.g() != null) {
                return false;
            }
        } else if (!str.equals(crashlyticsReport.g())) {
            return false;
        }
        String str2 = this.g;
        if (str2 == null) {
            if (crashlyticsReport.f() != null) {
                return false;
            }
        } else if (!str2.equals(crashlyticsReport.f())) {
            return false;
        }
        String str3 = this.f34772h;
        if (str3 == null) {
            if (crashlyticsReport.c() != null) {
                return false;
            }
        } else if (!str3.equals(crashlyticsReport.c())) {
            return false;
        }
        if (!this.f34773i.equals(crashlyticsReport.d()) || !this.f34774j.equals(crashlyticsReport.e())) {
            return false;
        }
        CrashlyticsReport.Session session = this.f34775k;
        if (session == null) {
            if (crashlyticsReport.m() != null) {
                return false;
            }
        } else if (!session.equals(crashlyticsReport.m())) {
            return false;
        }
        CrashlyticsReport.FilesPayload filesPayload = this.l;
        if (filesPayload == null) {
            if (crashlyticsReport.j() != null) {
                return false;
            }
        } else if (!filesPayload.equals(crashlyticsReport.j())) {
            return false;
        }
        CrashlyticsReport.ApplicationExitInfo applicationExitInfo = this.m;
        if (applicationExitInfo == null) {
            return crashlyticsReport.b() == null;
        }
        return applicationExitInfo.equals(crashlyticsReport.b());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final String f() {
        return this.g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final String g() {
        return this.f34771f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final String h() {
        return this.f34769c;
    }

    public final int hashCode() {
        int iHashCode = (((((((this.f34768b.hashCode() ^ 1000003) * 1000003) ^ this.f34769c.hashCode()) * 1000003) ^ this.d) * 1000003) ^ this.f34770e.hashCode()) * 1000003;
        String str = this.f34771f;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.g;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f34772h;
        int iHashCode4 = (((((iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003) ^ this.f34773i.hashCode()) * 1000003) ^ this.f34774j.hashCode()) * 1000003;
        CrashlyticsReport.Session session = this.f34775k;
        int iHashCode5 = (iHashCode4 ^ (session == null ? 0 : session.hashCode())) * 1000003;
        CrashlyticsReport.FilesPayload filesPayload = this.l;
        int iHashCode6 = (iHashCode5 ^ (filesPayload == null ? 0 : filesPayload.hashCode())) * 1000003;
        CrashlyticsReport.ApplicationExitInfo applicationExitInfo = this.m;
        return iHashCode6 ^ (applicationExitInfo != null ? applicationExitInfo.hashCode() : 0);
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final String i() {
        return this.f34770e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final CrashlyticsReport.FilesPayload j() {
        return this.l;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final int k() {
        return this.d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final String l() {
        return this.f34768b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final CrashlyticsReport.Session m() {
        return this.f34775k;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public final CrashlyticsReport.Builder n() {
        Builder builder = new Builder();
        builder.f34776a = l();
        builder.f34777b = h();
        builder.f34778c = k();
        builder.d = i();
        builder.f34779e = g();
        builder.f34780f = f();
        builder.g = c();
        builder.f34781h = d();
        builder.f34782i = e();
        builder.f34783j = m();
        builder.f34784k = j();
        builder.l = b();
        builder.m = (byte) 1;
        return builder;
    }

    public final String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f34768b + ", gmpAppId=" + this.f34769c + ", platform=" + this.d + ", installationUuid=" + this.f34770e + ", firebaseInstallationId=" + this.f34771f + ", firebaseAuthenticationToken=" + this.g + ", appQualitySessionId=" + this.f34772h + ", buildVersion=" + this.f34773i + ", displayVersion=" + this.f34774j + ", session=" + this.f34775k + ", ndkPayload=" + this.l + ", appExitInfo=" + this.m + "}";
    }
}
