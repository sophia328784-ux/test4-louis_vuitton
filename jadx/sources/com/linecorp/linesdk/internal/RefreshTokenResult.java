package com.linecorp.linesdk.internal;

import com.linecorp.linesdk.Scope;
import defpackage.fc;
import defpackage.tr;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class RefreshTokenResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f36205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f36206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f36207c;
    public final List d;

    public RefreshTokenResult(String str, long j2, String str2, List<Scope> list) {
        this.f36205a = str;
        this.f36206b = j2;
        this.f36207c = str2;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RefreshTokenResult refreshTokenResult = (RefreshTokenResult) obj;
        if (this.f36206b == refreshTokenResult.f36206b && this.f36205a.equals(refreshTokenResult.f36205a) && this.f36207c.equals(refreshTokenResult.f36207c)) {
            return this.d.equals(refreshTokenResult.d);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f36205a.hashCode() * 31;
        long j2 = this.f36206b;
        return this.d.hashCode() + fc.b((iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31, 31, this.f36207c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RefreshTokenResult{accessToken='#####', expiresInMillis=");
        sb.append(this.f36206b);
        sb.append(", refreshToken='#####', scopes=");
        return tr.m(sb, this.d, '}');
    }
}
