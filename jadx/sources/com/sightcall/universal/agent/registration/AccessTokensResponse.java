package com.sightcall.universal.agent.registration;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001bB!\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u000e\u001a\u00020\u0003H\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0016J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0083\u0004J\n\u0010\u0018\u001a\u00020\u0019HÖ\u0081\u0004J\n\u0010\u001a\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u001c"}, d2 = {"Lcom/sightcall/universal/agent/registration/AccessTokensResponse;", "Lcom/sightcall/universal/agent/registration/RegistrationResponse;", "type", "", b.a.f24015b, l.f24145h, "Lcom/sightcall/universal/agent/registration/AccessTokensResponse$Attributes;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/agent/registration/AccessTokensResponse$Attributes;)V", "getType", "()Ljava/lang/String;", "getId", "getAttributes", "()Lcom/sightcall/universal/agent/registration/AccessTokensResponse$Attributes;", "accessToken", "refreshToken", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Attributes", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AccessTokensResponse extends RegistrationResponse {
    private final Attributes attributes;
    private final String id;
    private final String type;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/sightcall/universal/agent/registration/AccessTokensResponse$Attributes;", "", "expiresAt", "", "refreshToken", "refreshTokenExpiresAt", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getExpiresAt", "()Ljava/lang/String;", "getRefreshToken", "getRefreshTokenExpiresAt", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Attributes {
        private final String expiresAt;
        private final String refreshToken;
        private final String refreshTokenExpiresAt;

        public Attributes(String str, String str2, String str3) {
            cj.z(str, str2, str3);
            this.expiresAt = str;
            this.refreshToken = str2;
            this.refreshTokenExpiresAt = str3;
        }

        public static /* synthetic */ Attributes copy$default(Attributes attributes, String str, String str2, String str3, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = attributes.expiresAt;
            }
            if ((i2 & 2) != 0) {
                str2 = attributes.refreshToken;
            }
            if ((i2 & 4) != 0) {
                str3 = attributes.refreshTokenExpiresAt;
            }
            return attributes.copy(str, str2, str3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getExpiresAt() {
            return this.expiresAt;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getRefreshToken() {
            return this.refreshToken;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getRefreshTokenExpiresAt() {
            return this.refreshTokenExpiresAt;
        }

        public final Attributes copy(String expiresAt, String refreshToken, String refreshTokenExpiresAt) {
            expiresAt.getClass();
            refreshToken.getClass();
            refreshTokenExpiresAt.getClass();
            return new Attributes(expiresAt, refreshToken, refreshTokenExpiresAt);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Attributes)) {
                return false;
            }
            Attributes attributes = (Attributes) other;
            return Intrinsics.c(this.expiresAt, attributes.expiresAt) && Intrinsics.c(this.refreshToken, attributes.refreshToken) && Intrinsics.c(this.refreshTokenExpiresAt, attributes.refreshTokenExpiresAt);
        }

        public final String getExpiresAt() {
            return this.expiresAt;
        }

        public final String getRefreshToken() {
            return this.refreshToken;
        }

        public final String getRefreshTokenExpiresAt() {
            return this.refreshTokenExpiresAt;
        }

        public int hashCode() {
            return this.refreshTokenExpiresAt.hashCode() + fc.b(this.expiresAt.hashCode() * 31, 31, this.refreshToken);
        }

        public String toString() {
            return n00.r(this.refreshTokenExpiresAt, ")", fc.s("Attributes(expiresAt=", this.expiresAt, ", refreshToken=", this.refreshToken, ", refreshTokenExpiresAt="));
        }
    }

    public AccessTokensResponse(String str, String str2, Attributes attributes) {
        str.getClass();
        str2.getClass();
        attributes.getClass();
        this.type = str;
        this.id = str2;
        this.attributes = attributes;
    }

    public static /* synthetic */ AccessTokensResponse copy$default(AccessTokensResponse accessTokensResponse, String str, String str2, Attributes attributes, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = accessTokensResponse.type;
        }
        if ((i2 & 2) != 0) {
            str2 = accessTokensResponse.id;
        }
        if ((i2 & 4) != 0) {
            attributes = accessTokensResponse.attributes;
        }
        return accessTokensResponse.copy(str, str2, attributes);
    }

    @Override // com.sightcall.universal.agent.registration.RegistrationResponse
    /* JADX INFO: renamed from: accessToken, reason: from getter */
    public String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    public final String component2() {
        return this.id;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Attributes getAttributes() {
        return this.attributes;
    }

    public final AccessTokensResponse copy(String type, String id, Attributes attributes) {
        type.getClass();
        id.getClass();
        attributes.getClass();
        return new AccessTokensResponse(type, id, attributes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AccessTokensResponse)) {
            return false;
        }
        AccessTokensResponse accessTokensResponse = (AccessTokensResponse) other;
        return Intrinsics.c(this.type, accessTokensResponse.type) && Intrinsics.c(this.id, accessTokensResponse.id) && Intrinsics.c(this.attributes, accessTokensResponse.attributes);
    }

    public final Attributes getAttributes() {
        return this.attributes;
    }

    public final String getId() {
        return this.id;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return this.attributes.hashCode() + fc.b(this.type.hashCode() * 31, 31, this.id);
    }

    @Override // com.sightcall.universal.agent.registration.RegistrationResponse
    public String refreshToken() {
        return this.attributes.getRefreshToken();
    }

    public String toString() {
        String str = this.type;
        String str2 = this.id;
        Attributes attributes = this.attributes;
        StringBuilder sbS = fc.s("AccessTokensResponse(type=", str, ", id=", str2, ", attributes=");
        sbS.append(attributes);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ AccessTokensResponse(String str, String str2, Attributes attributes, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "accessTokens" : str, str2, attributes);
    }
}
