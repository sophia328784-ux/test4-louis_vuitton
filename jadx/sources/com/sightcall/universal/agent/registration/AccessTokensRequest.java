package com.sightcall.universal.agent.registration;

import com.batch.android.v0.l;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/sightcall/universal/agent/registration/AccessTokensRequest;", "", "type", "", l.f24145h, "Lcom/sightcall/universal/agent/registration/AccessTokensRequest$Attributes;", "<init>", "(Ljava/lang/String;Lcom/sightcall/universal/agent/registration/AccessTokensRequest$Attributes;)V", "getType", "()Ljava/lang/String;", "getAttributes", "()Lcom/sightcall/universal/agent/registration/AccessTokensRequest$Attributes;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Attributes", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AccessTokensRequest {
    private final Attributes attributes;
    private final String type;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/universal/agent/registration/AccessTokensRequest$Attributes;", "", "refreshToken", "", "<init>", "(Ljava/lang/String;)V", "getRefreshToken", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Attributes {
        private final String refreshToken;

        public Attributes(String str) {
            str.getClass();
            this.refreshToken = str;
        }

        public static /* synthetic */ Attributes copy$default(Attributes attributes, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = attributes.refreshToken;
            }
            return attributes.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getRefreshToken() {
            return this.refreshToken;
        }

        public final Attributes copy(String refreshToken) {
            refreshToken.getClass();
            return new Attributes(refreshToken);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Attributes) && Intrinsics.c(this.refreshToken, ((Attributes) other).refreshToken);
        }

        public final String getRefreshToken() {
            return this.refreshToken;
        }

        public int hashCode() {
            return this.refreshToken.hashCode();
        }

        public String toString() {
            return fc.h("Attributes(refreshToken=", this.refreshToken, ")");
        }
    }

    public AccessTokensRequest(String str, Attributes attributes) {
        str.getClass();
        attributes.getClass();
        this.type = str;
        this.attributes = attributes;
    }

    public static /* synthetic */ AccessTokensRequest copy$default(AccessTokensRequest accessTokensRequest, String str, Attributes attributes, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = accessTokensRequest.type;
        }
        if ((i2 & 2) != 0) {
            attributes = accessTokensRequest.attributes;
        }
        return accessTokensRequest.copy(str, attributes);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Attributes getAttributes() {
        return this.attributes;
    }

    public final AccessTokensRequest copy(String type, Attributes attributes) {
        type.getClass();
        attributes.getClass();
        return new AccessTokensRequest(type, attributes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AccessTokensRequest)) {
            return false;
        }
        AccessTokensRequest accessTokensRequest = (AccessTokensRequest) other;
        return Intrinsics.c(this.type, accessTokensRequest.type) && Intrinsics.c(this.attributes, accessTokensRequest.attributes);
    }

    public final Attributes getAttributes() {
        return this.attributes;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return this.attributes.hashCode() + (this.type.hashCode() * 31);
    }

    public String toString() {
        return "AccessTokensRequest(type=" + this.type + ", attributes=" + this.attributes + ")";
    }

    public /* synthetic */ AccessTokensRequest(String str, Attributes attributes, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "accessTokens" : str, attributes);
    }
}
