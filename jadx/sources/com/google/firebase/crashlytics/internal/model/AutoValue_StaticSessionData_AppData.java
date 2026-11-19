package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.DevelopmentPlatformProvider;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_StaticSessionData_AppData extends StaticSessionData.AppData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34980c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f34981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DevelopmentPlatformProvider f34982f;

    public AutoValue_StaticSessionData_AppData(String str, String str2, String str3, String str4, int i2, DevelopmentPlatformProvider developmentPlatformProvider) {
        this.f34978a = str;
        if (str2 == null) {
            r81.d("Null versionCode");
            throw null;
        }
        this.f34979b = str2;
        if (str3 == null) {
            r81.d("Null versionName");
            throw null;
        }
        this.f34980c = str3;
        if (str4 == null) {
            r81.d("Null installUuid");
            throw null;
        }
        this.d = str4;
        this.f34981e = i2;
        if (developmentPlatformProvider != null) {
            this.f34982f = developmentPlatformProvider;
        } else {
            r81.d("Null developmentPlatformProvider");
            throw null;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.AppData
    public final String a() {
        return this.f34978a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.AppData
    public final int c() {
        return this.f34981e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.AppData
    public final DevelopmentPlatformProvider d() {
        return this.f34982f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.AppData
    public final String e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StaticSessionData.AppData)) {
            return false;
        }
        StaticSessionData.AppData appData = (StaticSessionData.AppData) obj;
        return this.f34978a.equals(appData.a()) && this.f34979b.equals(appData.f()) && this.f34980c.equals(appData.g()) && this.d.equals(appData.e()) && this.f34981e == appData.c() && this.f34982f.equals(appData.d());
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.AppData
    public final String f() {
        return this.f34979b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.AppData
    public final String g() {
        return this.f34980c;
    }

    public final int hashCode() {
        return this.f34982f.hashCode() ^ ((((((((((this.f34978a.hashCode() ^ 1000003) * 1000003) ^ this.f34979b.hashCode()) * 1000003) ^ this.f34980c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.f34981e) * 1000003);
    }

    public final String toString() {
        return "AppData{appIdentifier=" + this.f34978a + ", versionCode=" + this.f34979b + ", versionName=" + this.f34980c + ", installUuid=" + this.d + ", deliveryMechanism=" + this.f34981e + ", developmentPlatformProvider=" + this.f34982f + "}";
    }
}
