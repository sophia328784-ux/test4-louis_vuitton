package com.google.firebase.installations;

import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_InstallationTokenResult extends InstallationTokenResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35146a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f35147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f35148c;

    public static final class Builder extends InstallationTokenResult.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f35149a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f35150b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte f35151c;
    }

    public AutoValue_InstallationTokenResult(String str, long j2, long j3) {
        this.f35146a = str;
        this.f35147b = j2;
        this.f35148c = j3;
    }

    @Override // com.google.firebase.installations.InstallationTokenResult
    public final String a() {
        return this.f35146a;
    }

    @Override // com.google.firebase.installations.InstallationTokenResult
    public final long b() {
        return this.f35148c;
    }

    @Override // com.google.firebase.installations.InstallationTokenResult
    public final long c() {
        return this.f35147b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallationTokenResult)) {
            return false;
        }
        InstallationTokenResult installationTokenResult = (InstallationTokenResult) obj;
        return this.f35146a.equals(installationTokenResult.a()) && this.f35147b == installationTokenResult.c() && this.f35148c == installationTokenResult.b();
    }

    public final int hashCode() {
        int iHashCode = (this.f35146a.hashCode() ^ 1000003) * 1000003;
        long j2 = this.f35147b;
        long j3 = this.f35148c;
        return ((int) (j3 ^ (j3 >>> 32))) ^ ((iHashCode ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InstallationTokenResult{token=");
        sb.append(this.f35146a);
        sb.append(", tokenExpirationTimestamp=");
        sb.append(this.f35147b);
        sb.append(", tokenCreationTimestamp=");
        return o60.j(this.f35148c, "}", sb);
    }
}
