package com.sightcall.universal.agent.registration;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0001\u0010B!\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u000e\u001a\u00020\u0003H\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;", "Lcom/sightcall/universal/agent/registration/RegistrationResponse;", "type", "", b.a.f24015b, l.f24145h, "Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;)V", "getType", "()Ljava/lang/String;", "getId", "getAttributes", "()Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;", "accessToken", "refreshToken", "Attributes", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NewRegistrationResponse extends RegistrationResponse {
    private final Attributes attributes;
    private final String id;
    private final String type;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003JE\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u001c\u001a\u00020\u001dHÖ\u0081\u0004J\n\u0010\u001e\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;", "", "userId", "", "providerId", "sessionType", "expiresAt", "accessToken", "accessTokenExpiresAt", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getUserId", "()Ljava/lang/String;", "getProviderId", "getSessionType", "getExpiresAt", "getAccessToken", "getAccessTokenExpiresAt", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Attributes {
        private final String accessToken;
        private final String accessTokenExpiresAt;
        private final String expiresAt;
        private final String providerId;
        private final String sessionType;
        private final String userId;

        public Attributes(String str, String str2, String str3, String str4, String str5, String str6) {
            pq0.z(str, str2, str3, str4, str5);
            str6.getClass();
            this.userId = str;
            this.providerId = str2;
            this.sessionType = str3;
            this.expiresAt = str4;
            this.accessToken = str5;
            this.accessTokenExpiresAt = str6;
        }

        public static /* synthetic */ Attributes copy$default(Attributes attributes, String str, String str2, String str3, String str4, String str5, String str6, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = attributes.userId;
            }
            if ((i2 & 2) != 0) {
                str2 = attributes.providerId;
            }
            if ((i2 & 4) != 0) {
                str3 = attributes.sessionType;
            }
            if ((i2 & 8) != 0) {
                str4 = attributes.expiresAt;
            }
            if ((i2 & 16) != 0) {
                str5 = attributes.accessToken;
            }
            if ((i2 & 32) != 0) {
                str6 = attributes.accessTokenExpiresAt;
            }
            String str7 = str5;
            String str8 = str6;
            return attributes.copy(str, str2, str3, str4, str7, str8);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getUserId() {
            return this.userId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getProviderId() {
            return this.providerId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getSessionType() {
            return this.sessionType;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getExpiresAt() {
            return this.expiresAt;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getAccessToken() {
            return this.accessToken;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getAccessTokenExpiresAt() {
            return this.accessTokenExpiresAt;
        }

        public final Attributes copy(String userId, String providerId, String sessionType, String expiresAt, String accessToken, String accessTokenExpiresAt) {
            pq0.z(userId, providerId, sessionType, expiresAt, accessToken);
            accessTokenExpiresAt.getClass();
            return new Attributes(userId, providerId, sessionType, expiresAt, accessToken, accessTokenExpiresAt);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Attributes)) {
                return false;
            }
            Attributes attributes = (Attributes) other;
            return Intrinsics.c(this.userId, attributes.userId) && Intrinsics.c(this.providerId, attributes.providerId) && Intrinsics.c(this.sessionType, attributes.sessionType) && Intrinsics.c(this.expiresAt, attributes.expiresAt) && Intrinsics.c(this.accessToken, attributes.accessToken) && Intrinsics.c(this.accessTokenExpiresAt, attributes.accessTokenExpiresAt);
        }

        public final String getAccessToken() {
            return this.accessToken;
        }

        public final String getAccessTokenExpiresAt() {
            return this.accessTokenExpiresAt;
        }

        public final String getExpiresAt() {
            return this.expiresAt;
        }

        public final String getProviderId() {
            return this.providerId;
        }

        public final String getSessionType() {
            return this.sessionType;
        }

        public final String getUserId() {
            return this.userId;
        }

        public int hashCode() {
            return this.accessTokenExpiresAt.hashCode() + fc.b(fc.b(fc.b(fc.b(this.userId.hashCode() * 31, 31, this.providerId), 31, this.sessionType), 31, this.expiresAt), 31, this.accessToken);
        }

        public String toString() {
            String str = this.userId;
            String str2 = this.providerId;
            String str3 = this.sessionType;
            String str4 = this.expiresAt;
            String str5 = this.accessToken;
            String str6 = this.accessTokenExpiresAt;
            StringBuilder sbS = fc.s("Attributes(userId=", str, ", providerId=", str2, ", sessionType=");
            cj.C(sbS, str3, ", expiresAt=", str4, ", accessToken=");
            return tr.l(sbS, str5, ", accessTokenExpiresAt=", str6, ")");
        }
    }

    public NewRegistrationResponse(String str, String str2, Attributes attributes) {
        str.getClass();
        str2.getClass();
        attributes.getClass();
        this.type = str;
        this.id = str2;
        this.attributes = attributes;
    }

    @Override // com.sightcall.universal.agent.registration.RegistrationResponse
    /* JADX INFO: renamed from: accessToken */
    public String getId() {
        return this.attributes.getAccessToken();
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

    @Override // com.sightcall.universal.agent.registration.RegistrationResponse
    public String refreshToken() {
        return this.id;
    }

    public /* synthetic */ NewRegistrationResponse(String str, String str2, Attributes attributes, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "refreshTokens" : str, str2, attributes);
    }
}
