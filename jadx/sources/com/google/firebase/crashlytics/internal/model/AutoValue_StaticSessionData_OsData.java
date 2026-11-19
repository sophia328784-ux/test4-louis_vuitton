package com.google.firebase.crashlytics.internal.model;

import android.os.Build;
import defpackage.a;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_StaticSessionData_OsData extends StaticSessionData.OsData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f34992c;

    public AutoValue_StaticSessionData_OsData(boolean z) {
        String str = Build.VERSION.RELEASE;
        String str2 = Build.VERSION.CODENAME;
        if (str == null) {
            r81.d("Null osRelease");
            throw null;
        }
        this.f34990a = str;
        if (str2 == null) {
            r81.d("Null osCodeName");
            throw null;
        }
        this.f34991b = str2;
        this.f34992c = z;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.OsData
    public final boolean b() {
        return this.f34992c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.OsData
    public final String c() {
        return this.f34991b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.OsData
    public final String d() {
        return this.f34990a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StaticSessionData.OsData)) {
            return false;
        }
        StaticSessionData.OsData osData = (StaticSessionData.OsData) obj;
        return this.f34990a.equals(osData.d()) && this.f34991b.equals(osData.c()) && this.f34992c == osData.b();
    }

    public final int hashCode() {
        return (this.f34992c ? 1231 : 1237) ^ ((((this.f34990a.hashCode() ^ 1000003) * 1000003) ^ this.f34991b.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OsData{osRelease=");
        sb.append(this.f34990a);
        sb.append(", osCodeName=");
        sb.append(this.f34991b);
        sb.append(", isRooted=");
        return a.p(sb, this.f34992c, "}");
    }
}
