package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session extends CrashlyticsReport.Session {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34825c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Long f34826e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f34827f;
    public final CrashlyticsReport.Session.Application g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CrashlyticsReport.Session.User f34828h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CrashlyticsReport.Session.OperatingSystem f34829i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CrashlyticsReport.Session.Device f34830j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f34831k;
    public final int l;

    public static final class Builder extends CrashlyticsReport.Session.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f34832a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f34833b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f34834c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Long f34835e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f34836f;
        public CrashlyticsReport.Session.Application g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public CrashlyticsReport.Session.User f34837h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public CrashlyticsReport.Session.OperatingSystem f34838i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public CrashlyticsReport.Session.Device f34839j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public List f34840k;
        public int l;
        public byte m;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session a() {
            String str;
            String str2;
            CrashlyticsReport.Session.Application application;
            if (this.m == 7 && (str = this.f34832a) != null && (str2 = this.f34833b) != null && (application = this.g) != null) {
                return new AutoValue_CrashlyticsReport_Session(str, str2, this.f34834c, this.d, this.f34835e, this.f34836f, application, this.f34837h, this.f34838i, this.f34839j, this.f34840k, this.l);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f34832a == null) {
                sb.append(" generator");
            }
            if (this.f34833b == null) {
                sb.append(" identifier");
            }
            if ((this.m & 1) == 0) {
                sb.append(" startedAt");
            }
            if ((this.m & 2) == 0) {
                sb.append(" crashed");
            }
            if (this.g == null) {
                sb.append(" app");
            }
            if ((this.m & 4) == 0) {
                sb.append(" generatorType");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder b(CrashlyticsReport.Session.Application application) {
            if (application != null) {
                this.g = application;
                return this;
            }
            r81.d("Null app");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder c(String str) {
            this.f34834c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder d(boolean z) {
            this.f34836f = z;
            this.m = (byte) (this.m | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder e(CrashlyticsReport.Session.Device device) {
            this.f34839j = device;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder f(Long l) {
            this.f34835e = l;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder g(List list) {
            this.f34840k = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder h(String str) {
            if (str != null) {
                this.f34832a = str;
                return this;
            }
            r81.d("Null generator");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder i(int i2) {
            this.l = i2;
            this.m = (byte) (this.m | 4);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder j(String str) {
            if (str != null) {
                this.f34833b = str;
                return this;
            }
            r81.d("Null identifier");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder k(CrashlyticsReport.Session.OperatingSystem operatingSystem) {
            this.f34838i = operatingSystem;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder l(long j2) {
            this.d = j2;
            this.m = (byte) (this.m | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Builder
        public final CrashlyticsReport.Session.Builder m(CrashlyticsReport.Session.User user) {
            this.f34837h = user;
            return this;
        }
    }

    public AutoValue_CrashlyticsReport_Session(String str, String str2, String str3, long j2, Long l, boolean z, CrashlyticsReport.Session.Application application, CrashlyticsReport.Session.User user, CrashlyticsReport.Session.OperatingSystem operatingSystem, CrashlyticsReport.Session.Device device, List list, int i2) {
        this.f34823a = str;
        this.f34824b = str2;
        this.f34825c = str3;
        this.d = j2;
        this.f34826e = l;
        this.f34827f = z;
        this.g = application;
        this.f34828h = user;
        this.f34829i = operatingSystem;
        this.f34830j = device;
        this.f34831k = list;
        this.l = i2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final CrashlyticsReport.Session.Application b() {
        return this.g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final String c() {
        return this.f34825c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final CrashlyticsReport.Session.Device d() {
        return this.f34830j;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final Long e() {
        return this.f34826e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session)) {
            return false;
        }
        CrashlyticsReport.Session session = (CrashlyticsReport.Session) obj;
        if (!this.f34823a.equals(session.g()) || !this.f34824b.equals(session.i())) {
            return false;
        }
        String str = this.f34825c;
        if (str == null) {
            if (session.c() != null) {
                return false;
            }
        } else if (!str.equals(session.c())) {
            return false;
        }
        if (this.d != session.k()) {
            return false;
        }
        Long l = this.f34826e;
        if (l == null) {
            if (session.e() != null) {
                return false;
            }
        } else if (!l.equals(session.e())) {
            return false;
        }
        if (this.f34827f != session.m() || !this.g.equals(session.b())) {
            return false;
        }
        CrashlyticsReport.Session.User user = this.f34828h;
        if (user == null) {
            if (session.l() != null) {
                return false;
            }
        } else if (!user.equals(session.l())) {
            return false;
        }
        CrashlyticsReport.Session.OperatingSystem operatingSystem = this.f34829i;
        if (operatingSystem == null) {
            if (session.j() != null) {
                return false;
            }
        } else if (!operatingSystem.equals(session.j())) {
            return false;
        }
        CrashlyticsReport.Session.Device device = this.f34830j;
        if (device == null) {
            if (session.d() != null) {
                return false;
            }
        } else if (!device.equals(session.d())) {
            return false;
        }
        List list = this.f34831k;
        if (list == null) {
            if (session.f() != null) {
                return false;
            }
        } else if (!list.equals(session.f())) {
            return false;
        }
        return this.l == session.h();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final List f() {
        return this.f34831k;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final String g() {
        return this.f34823a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final int h() {
        return this.l;
    }

    public final int hashCode() {
        int iHashCode = (((this.f34823a.hashCode() ^ 1000003) * 1000003) ^ this.f34824b.hashCode()) * 1000003;
        String str = this.f34825c;
        int iHashCode2 = str == null ? 0 : str.hashCode();
        long j2 = this.d;
        int i2 = (((iHashCode ^ iHashCode2) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003;
        Long l = this.f34826e;
        int iHashCode3 = (((((i2 ^ (l == null ? 0 : l.hashCode())) * 1000003) ^ (this.f34827f ? 1231 : 1237)) * 1000003) ^ this.g.hashCode()) * 1000003;
        CrashlyticsReport.Session.User user = this.f34828h;
        int iHashCode4 = (iHashCode3 ^ (user == null ? 0 : user.hashCode())) * 1000003;
        CrashlyticsReport.Session.OperatingSystem operatingSystem = this.f34829i;
        int iHashCode5 = (iHashCode4 ^ (operatingSystem == null ? 0 : operatingSystem.hashCode())) * 1000003;
        CrashlyticsReport.Session.Device device = this.f34830j;
        int iHashCode6 = (iHashCode5 ^ (device == null ? 0 : device.hashCode())) * 1000003;
        List list = this.f34831k;
        return this.l ^ ((iHashCode6 ^ (list != null ? list.hashCode() : 0)) * 1000003);
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final String i() {
        return this.f34824b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final CrashlyticsReport.Session.OperatingSystem j() {
        return this.f34829i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final long k() {
        return this.d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final CrashlyticsReport.Session.User l() {
        return this.f34828h;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final boolean m() {
        return this.f34827f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session
    public final CrashlyticsReport.Session.Builder n() {
        Builder builder = new Builder();
        builder.f34832a = g();
        builder.f34833b = i();
        builder.f34834c = c();
        builder.d = k();
        builder.f34835e = e();
        builder.f34836f = m();
        builder.g = b();
        builder.f34837h = l();
        builder.f34838i = j();
        builder.f34839j = d();
        builder.f34840k = f();
        builder.l = h();
        builder.m = (byte) 7;
        return builder;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Session{generator=");
        sb.append(this.f34823a);
        sb.append(", identifier=");
        sb.append(this.f34824b);
        sb.append(", appQualitySessionId=");
        sb.append(this.f34825c);
        sb.append(", startedAt=");
        sb.append(this.d);
        sb.append(", endedAt=");
        sb.append(this.f34826e);
        sb.append(", crashed=");
        sb.append(this.f34827f);
        sb.append(", app=");
        sb.append(this.g);
        sb.append(", user=");
        sb.append(this.f34828h);
        sb.append(", os=");
        sb.append(this.f34829i);
        sb.append(", device=");
        sb.append(this.f34830j);
        sb.append(", events=");
        sb.append(this.f34831k);
        sb.append(", generatorType=");
        return a.i(this.l, "}", sb);
    }
}
