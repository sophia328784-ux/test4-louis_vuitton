package com.google.firebase.crashlytics.internal.common;

import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_InstallIdProvider_InstallIds extends InstallIdProvider.InstallIds {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34504c;

    public AutoValue_InstallIdProvider_InstallIds(String str, String str2, String str3) {
        if (str == null) {
            r81.d("Null crashlyticsInstallId");
            throw null;
        }
        this.f34502a = str;
        this.f34503b = str2;
        this.f34504c = str3;
    }

    @Override // com.google.firebase.crashlytics.internal.common.InstallIdProvider.InstallIds
    public final String a() {
        return this.f34502a;
    }

    @Override // com.google.firebase.crashlytics.internal.common.InstallIdProvider.InstallIds
    public final String b() {
        return this.f34504c;
    }

    @Override // com.google.firebase.crashlytics.internal.common.InstallIdProvider.InstallIds
    public final String c() {
        return this.f34503b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallIdProvider.InstallIds)) {
            return false;
        }
        InstallIdProvider.InstallIds installIds = (InstallIdProvider.InstallIds) obj;
        if (!this.f34502a.equals(installIds.a())) {
            return false;
        }
        String str = this.f34503b;
        if (str == null) {
            if (installIds.c() != null) {
                return false;
            }
        } else if (!str.equals(installIds.c())) {
            return false;
        }
        String str2 = this.f34504c;
        if (str2 == null) {
            return installIds.b() == null;
        }
        return str2.equals(installIds.b());
    }

    public final int hashCode() {
        int iHashCode = (this.f34502a.hashCode() ^ 1000003) * 1000003;
        String str = this.f34503b;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f34504c;
        return iHashCode2 ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InstallIds{crashlyticsInstallId=");
        sb.append(this.f34502a);
        sb.append(", firebaseInstallationId=");
        sb.append(this.f34503b);
        sb.append(", firebaseAuthenticationToken=");
        return n00.r(this.f34504c, "}", sb);
    }
}
