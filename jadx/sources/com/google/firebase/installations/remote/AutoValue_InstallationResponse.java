package com.google.firebase.installations.remote;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_InstallationResponse extends InstallationResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f35195c;
    public final TokenResult d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InstallationResponse.ResponseCode f35196e;

    public static final class Builder extends InstallationResponse.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f35197a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f35198b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f35199c;
        public TokenResult d;
    }

    public AutoValue_InstallationResponse(String str, String str2, String str3, TokenResult tokenResult, InstallationResponse.ResponseCode responseCode) {
        this.f35193a = str;
        this.f35194b = str2;
        this.f35195c = str3;
        this.d = tokenResult;
        this.f35196e = responseCode;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    public final TokenResult a() {
        return this.d;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    public final String b() {
        return this.f35194b;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    public final String c() {
        return this.f35195c;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    public final InstallationResponse.ResponseCode d() {
        return this.f35196e;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    public final String e() {
        return this.f35193a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallationResponse)) {
            return false;
        }
        InstallationResponse installationResponse = (InstallationResponse) obj;
        String str = this.f35193a;
        if (str == null) {
            if (installationResponse.e() != null) {
                return false;
            }
        } else if (!str.equals(installationResponse.e())) {
            return false;
        }
        String str2 = this.f35194b;
        if (str2 == null) {
            if (installationResponse.b() != null) {
                return false;
            }
        } else if (!str2.equals(installationResponse.b())) {
            return false;
        }
        String str3 = this.f35195c;
        if (str3 == null) {
            if (installationResponse.c() != null) {
                return false;
            }
        } else if (!str3.equals(installationResponse.c())) {
            return false;
        }
        TokenResult tokenResult = this.d;
        if (tokenResult == null) {
            if (installationResponse.a() != null) {
                return false;
            }
        } else if (!tokenResult.equals(installationResponse.a())) {
            return false;
        }
        InstallationResponse.ResponseCode responseCode = this.f35196e;
        if (responseCode == null) {
            return installationResponse.d() == null;
        }
        return responseCode.equals(installationResponse.d());
    }

    public final int hashCode() {
        String str = this.f35193a;
        int iHashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f35194b;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f35195c;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        TokenResult tokenResult = this.d;
        int iHashCode4 = (iHashCode3 ^ (tokenResult == null ? 0 : tokenResult.hashCode())) * 1000003;
        InstallationResponse.ResponseCode responseCode = this.f35196e;
        return iHashCode4 ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    public final String toString() {
        return "InstallationResponse{uri=" + this.f35193a + ", fid=" + this.f35194b + ", refreshToken=" + this.f35195c + ", authToken=" + this.d + ", responseCode=" + this.f35196e + "}";
    }
}
