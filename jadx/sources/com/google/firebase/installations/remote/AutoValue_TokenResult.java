package com.google.firebase.installations.remote;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_TokenResult extends TokenResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f35201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TokenResult.ResponseCode f35202c;

    public static final class Builder extends TokenResult.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f35203a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f35204b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TokenResult.ResponseCode f35205c;
        public byte d;

        public final TokenResult a() {
            if (this.d == 1) {
                return new AutoValue_TokenResult(this.f35203a, this.f35204b, this.f35205c);
            }
            md.k("Missing required properties: tokenExpirationTimestamp");
            return null;
        }
    }

    public AutoValue_TokenResult(String str, long j2, TokenResult.ResponseCode responseCode) {
        this.f35200a = str;
        this.f35201b = j2;
        this.f35202c = responseCode;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    public final TokenResult.ResponseCode a() {
        return this.f35202c;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    public final String b() {
        return this.f35200a;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    public final long c() {
        return this.f35201b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TokenResult)) {
            return false;
        }
        TokenResult tokenResult = (TokenResult) obj;
        String str = this.f35200a;
        if (str == null) {
            if (tokenResult.b() != null) {
                return false;
            }
        } else if (!str.equals(tokenResult.b())) {
            return false;
        }
        if (this.f35201b != tokenResult.c()) {
            return false;
        }
        TokenResult.ResponseCode responseCode = this.f35202c;
        if (responseCode == null) {
            return tokenResult.a() == null;
        }
        return responseCode.equals(tokenResult.a());
    }

    public final int hashCode() {
        String str = this.f35200a;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j2 = this.f35201b;
        int i2 = (((iHashCode ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003;
        TokenResult.ResponseCode responseCode = this.f35202c;
        return i2 ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    public final String toString() {
        return "TokenResult{token=" + this.f35200a + ", tokenExpirationTimestamp=" + this.f35201b + ", responseCode=" + this.f35202c + "}";
    }
}
