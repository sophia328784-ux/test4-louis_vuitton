package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session_OperatingSystem extends CrashlyticsReport.Session.OperatingSystem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f34966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34968c;
    public final boolean d;

    public static final class Builder extends CrashlyticsReport.Session.OperatingSystem.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f34969a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f34970b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f34971c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte f34972e;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.OperatingSystem.Builder
        public final CrashlyticsReport.Session.OperatingSystem a() {
            String str;
            String str2;
            if (this.f34972e == 3 && (str = this.f34970b) != null && (str2 = this.f34971c) != null) {
                return new AutoValue_CrashlyticsReport_Session_OperatingSystem(str, this.f34969a, str2, this.d);
            }
            StringBuilder sb = new StringBuilder();
            if ((this.f34972e & 1) == 0) {
                sb.append(" platform");
            }
            if (this.f34970b == null) {
                sb.append(" version");
            }
            if (this.f34971c == null) {
                sb.append(" buildVersion");
            }
            if ((this.f34972e & 2) == 0) {
                sb.append(" jailbroken");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.OperatingSystem.Builder
        public final CrashlyticsReport.Session.OperatingSystem.Builder b(String str) {
            if (str != null) {
                this.f34971c = str;
                return this;
            }
            r81.d("Null buildVersion");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.OperatingSystem.Builder
        public final CrashlyticsReport.Session.OperatingSystem.Builder c(boolean z) {
            this.d = z;
            this.f34972e = (byte) (this.f34972e | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.OperatingSystem.Builder
        public final CrashlyticsReport.Session.OperatingSystem.Builder d(int i2) {
            this.f34969a = i2;
            this.f34972e = (byte) (this.f34972e | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.OperatingSystem.Builder
        public final CrashlyticsReport.Session.OperatingSystem.Builder e(String str) {
            if (str != null) {
                this.f34970b = str;
                return this;
            }
            r81.d("Null version");
            return null;
        }
    }

    public AutoValue_CrashlyticsReport_Session_OperatingSystem(String str, int i2, String str2, boolean z) {
        this.f34966a = i2;
        this.f34967b = str;
        this.f34968c = str2;
        this.d = z;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.OperatingSystem
    public final String b() {
        return this.f34968c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.OperatingSystem
    public final int c() {
        return this.f34966a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.OperatingSystem
    public final String d() {
        return this.f34967b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.OperatingSystem
    public final boolean e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.OperatingSystem)) {
            return false;
        }
        CrashlyticsReport.Session.OperatingSystem operatingSystem = (CrashlyticsReport.Session.OperatingSystem) obj;
        return this.f34966a == operatingSystem.c() && this.f34967b.equals(operatingSystem.d()) && this.f34968c.equals(operatingSystem.b()) && this.d == operatingSystem.e();
    }

    public final int hashCode() {
        return (this.d ? 1231 : 1237) ^ ((((((this.f34966a ^ 1000003) * 1000003) ^ this.f34967b.hashCode()) * 1000003) ^ this.f34968c.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OperatingSystem{platform=");
        sb.append(this.f34966a);
        sb.append(", version=");
        sb.append(this.f34967b);
        sb.append(", buildVersion=");
        sb.append(this.f34968c);
        sb.append(", jailbroken=");
        return a.p(sb, this.d, "}");
    }
}
