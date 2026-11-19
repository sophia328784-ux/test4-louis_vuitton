package com.linecorp.linesdk.internal;

import com.linecorp.linesdk.Scope;
import defpackage.tr;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AccessTokenVerificationResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f36169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f36170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f36171c;

    public AccessTokenVerificationResult(String str, long j2, List<Scope> list) {
        this.f36169a = str;
        this.f36170b = j2;
        this.f36171c = Collections.unmodifiableList(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AccessTokenVerificationResult accessTokenVerificationResult = (AccessTokenVerificationResult) obj;
        if (this.f36170b == accessTokenVerificationResult.f36170b && this.f36169a.equals(accessTokenVerificationResult.f36169a)) {
            return this.f36171c.equals(accessTokenVerificationResult.f36171c);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f36169a.hashCode() * 31;
        long j2 = this.f36170b;
        return this.f36171c.hashCode() + ((iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccessTokenVerificationResult{channelId='");
        sb.append(this.f36169a);
        sb.append("', expiresInMillis=");
        sb.append(this.f36170b);
        sb.append(", scopes=");
        return tr.m(sb, this.f36171c, '}');
    }
}
