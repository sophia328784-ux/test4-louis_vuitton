package com.linecorp.linesdk.internal;

import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
public class InternalAccessToken {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f36176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f36177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f36178c;
    public final String d;

    public InternalAccessToken(String str, long j2, long j3, String str2) {
        this.f36176a = str;
        this.f36177b = j2;
        this.f36178c = j3;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        InternalAccessToken internalAccessToken = (InternalAccessToken) obj;
        if (this.f36177b == internalAccessToken.f36177b && this.f36178c == internalAccessToken.f36178c && this.f36176a.equals(internalAccessToken.f36176a)) {
            return this.d.equals(internalAccessToken.d);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f36176a.hashCode() * 31;
        long j2 = this.f36177b;
        int i2 = (iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.f36178c;
        return this.d.hashCode() + ((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InternalAccessToken{accessToken='#####', expiresInMillis=");
        sb.append(this.f36177b);
        sb.append(", issuedClientTimeMillis=");
        return o60.j(this.f36178c, ", refreshToken='#####'}", sb);
    }
}
