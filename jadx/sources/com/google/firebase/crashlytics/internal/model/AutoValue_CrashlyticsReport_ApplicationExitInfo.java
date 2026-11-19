package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_ApplicationExitInfo extends CrashlyticsReport.ApplicationExitInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f34785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f34787c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f34788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f34789f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f34790h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f34791i;

    public static final class Builder extends CrashlyticsReport.ApplicationExitInfo.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f34792a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f34793b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f34794c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f34795e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f34796f;
        public long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f34797h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public List f34798i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public byte f34799j;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.Builder
        public final CrashlyticsReport.ApplicationExitInfo a() {
            String str;
            if (this.f34799j == 63 && (str = this.f34793b) != null) {
                return new AutoValue_CrashlyticsReport_ApplicationExitInfo(this.f34792a, str, this.f34794c, this.d, this.f34795e, this.f34796f, this.g, this.f34797h, this.f34798i);
            }
            StringBuilder sb = new StringBuilder();
            if ((this.f34799j & 1) == 0) {
                sb.append(" pid");
            }
            if (this.f34793b == null) {
                sb.append(" processName");
            }
            if ((this.f34799j & 2) == 0) {
                sb.append(" reasonCode");
            }
            if ((this.f34799j & 4) == 0) {
                sb.append(" importance");
            }
            if ((this.f34799j & 8) == 0) {
                sb.append(" pss");
            }
            if ((this.f34799j & 16) == 0) {
                sb.append(" rss");
            }
            if ((this.f34799j & 32) == 0) {
                sb.append(" timestamp");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.Builder
        public final CrashlyticsReport.ApplicationExitInfo.Builder b(List list) {
            this.f34798i = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.Builder
        public final CrashlyticsReport.ApplicationExitInfo.Builder c(int i2) {
            this.d = i2;
            this.f34799j = (byte) (this.f34799j | 4);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.Builder
        public final CrashlyticsReport.ApplicationExitInfo.Builder d(int i2) {
            this.f34792a = i2;
            this.f34799j = (byte) (this.f34799j | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.Builder
        public final CrashlyticsReport.ApplicationExitInfo.Builder e(String str) {
            if (str != null) {
                this.f34793b = str;
                return this;
            }
            r81.d("Null processName");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.Builder
        public final CrashlyticsReport.ApplicationExitInfo.Builder f(long j2) {
            this.f34795e = j2;
            this.f34799j = (byte) (this.f34799j | 8);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.Builder
        public final CrashlyticsReport.ApplicationExitInfo.Builder g(int i2) {
            this.f34794c = i2;
            this.f34799j = (byte) (this.f34799j | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.Builder
        public final CrashlyticsReport.ApplicationExitInfo.Builder h(long j2) {
            this.f34796f = j2;
            this.f34799j = (byte) (this.f34799j | 16);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.Builder
        public final CrashlyticsReport.ApplicationExitInfo.Builder i(long j2) {
            this.g = j2;
            this.f34799j = (byte) (this.f34799j | 32);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.Builder
        public final CrashlyticsReport.ApplicationExitInfo.Builder j(String str) {
            this.f34797h = str;
            return this;
        }
    }

    public AutoValue_CrashlyticsReport_ApplicationExitInfo(int i2, String str, int i3, int i4, long j2, long j3, long j4, String str2, List list) {
        this.f34785a = i2;
        this.f34786b = str;
        this.f34787c = i3;
        this.d = i4;
        this.f34788e = j2;
        this.f34789f = j3;
        this.g = j4;
        this.f34790h = str2;
        this.f34791i = list;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo
    public final List b() {
        return this.f34791i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo
    public final int c() {
        return this.d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo
    public final int d() {
        return this.f34785a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo
    public final String e() {
        return this.f34786b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.ApplicationExitInfo)) {
            return false;
        }
        CrashlyticsReport.ApplicationExitInfo applicationExitInfo = (CrashlyticsReport.ApplicationExitInfo) obj;
        if (this.f34785a != applicationExitInfo.d() || !this.f34786b.equals(applicationExitInfo.e()) || this.f34787c != applicationExitInfo.g() || this.d != applicationExitInfo.c() || this.f34788e != applicationExitInfo.f() || this.f34789f != applicationExitInfo.h() || this.g != applicationExitInfo.i()) {
            return false;
        }
        String str = this.f34790h;
        if (str == null) {
            if (applicationExitInfo.j() != null) {
                return false;
            }
        } else if (!str.equals(applicationExitInfo.j())) {
            return false;
        }
        List list = this.f34791i;
        if (list == null) {
            return applicationExitInfo.b() == null;
        }
        return list.equals(applicationExitInfo.b());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo
    public final long f() {
        return this.f34788e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo
    public final int g() {
        return this.f34787c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo
    public final long h() {
        return this.f34789f;
    }

    public final int hashCode() {
        int iHashCode = (((((((this.f34785a ^ 1000003) * 1000003) ^ this.f34786b.hashCode()) * 1000003) ^ this.f34787c) * 1000003) ^ this.d) * 1000003;
        long j2 = this.f34788e;
        int i2 = (iHashCode ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.f34789f;
        int i3 = (i2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        long j4 = this.g;
        int i4 = (i3 ^ ((int) (j4 ^ (j4 >>> 32)))) * 1000003;
        String str = this.f34790h;
        int iHashCode2 = (i4 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List list = this.f34791i;
        return iHashCode2 ^ (list != null ? list.hashCode() : 0);
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo
    public final long i() {
        return this.g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo
    public final String j() {
        return this.f34790h;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ApplicationExitInfo{pid=");
        sb.append(this.f34785a);
        sb.append(", processName=");
        sb.append(this.f34786b);
        sb.append(", reasonCode=");
        sb.append(this.f34787c);
        sb.append(", importance=");
        sb.append(this.d);
        sb.append(", pss=");
        sb.append(this.f34788e);
        sb.append(", rss=");
        sb.append(this.f34789f);
        sb.append(", timestamp=");
        sb.append(this.g);
        sb.append(", traceFile=");
        sb.append(this.f34790h);
        sb.append(", buildIdMappingForArch=");
        return a.o(sb, this.f34791i, "}");
    }
}
