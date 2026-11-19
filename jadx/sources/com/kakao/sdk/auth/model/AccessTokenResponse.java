package com.kakao.sdk.auth.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u001b\b\u0087\b\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u000f\u001a\u0004\b\u0012\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u000f\u001a\u0004\b\u0019\u0010\u0011R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\u000f\u001a\u0004\b\u001a\u0010\u0011R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010\u000f\u001a\u0004\b\u001b\u0010\u0011R\"\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u000b\u0010\u000f\u0012\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001c\u0010\u0011R\u0019\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\u000f\u001a\u0004\b\u001f\u0010\u0011¨\u0006 "}, d2 = {"Lcom/kakao/sdk/auth/model/AccessTokenResponse;", "Landroid/os/Parcelable;", "", "accessToken", "refreshToken", "", "accessTokenExpiresIn", "refreshTokenExpiresIn", "idToken", "tokenType", "scope", "scopes", "txId", "<init>", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Ljava/lang/String;", "a", "()Ljava/lang/String;", NBSSpanMetricUnit.Day, "J", NBSSpanMetricUnit.Bit, "()J", "Ljava/lang/Long;", "e", "()Ljava/lang/Long;", "c", "getTokenType", "f", "getScopes", "getScopes$annotations", "()V", "getTxId", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class AccessTokenResponse implements Parcelable {
    public static final Parcelable.Creator<AccessTokenResponse> CREATOR = new Creator();
    private final String accessToken;

    @SerializedName("expires_in")
    private final long accessTokenExpiresIn;
    private final String idToken;
    private final String refreshToken;
    private final Long refreshTokenExpiresIn;
    private final String scope;
    private final String scopes;
    private final String tokenType;
    private final String txId;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AccessTokenResponse> {
        @Override // android.os.Parcelable.Creator
        public final AccessTokenResponse createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new AccessTokenResponse(parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final AccessTokenResponse[] newArray(int i2) {
            return new AccessTokenResponse[i2];
        }
    }

    public /* synthetic */ AccessTokenResponse(String str, String str2, long j2, Long l, String str3, String str4, String str5, String str6, String str7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, j2, (i2 & 8) != 0 ? null : l, (i2 & 16) != 0 ? null : str3, str4, (i2 & 64) != 0 ? null : str5, (i2 & 128) != 0 ? null : str6, (i2 & 256) != 0 ? null : str7);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getAccessToken() {
        return this.accessToken;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final long getAccessTokenExpiresIn() {
        return this.accessTokenExpiresIn;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getIdToken() {
        return this.idToken;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getRefreshToken() {
        return this.refreshToken;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final Long getRefreshTokenExpiresIn() {
        return this.refreshTokenExpiresIn;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessTokenResponse)) {
            return false;
        }
        AccessTokenResponse accessTokenResponse = (AccessTokenResponse) obj;
        return Intrinsics.c(this.accessToken, accessTokenResponse.accessToken) && Intrinsics.c(this.refreshToken, accessTokenResponse.refreshToken) && this.accessTokenExpiresIn == accessTokenResponse.accessTokenExpiresIn && Intrinsics.c(this.refreshTokenExpiresIn, accessTokenResponse.refreshTokenExpiresIn) && Intrinsics.c(this.idToken, accessTokenResponse.idToken) && Intrinsics.c(this.tokenType, accessTokenResponse.tokenType) && Intrinsics.c(this.scope, accessTokenResponse.scope) && Intrinsics.c(this.scopes, accessTokenResponse.scopes) && Intrinsics.c(this.txId, accessTokenResponse.txId);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getScope() {
        return this.scope;
    }

    public final int hashCode() {
        int iHashCode = this.accessToken.hashCode() * 31;
        String str = this.refreshToken;
        int iA = fc.a((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.accessTokenExpiresIn);
        Long l = this.refreshTokenExpiresIn;
        int iHashCode2 = (iA + (l == null ? 0 : l.hashCode())) * 31;
        String str2 = this.idToken;
        int iB = fc.b((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.tokenType);
        String str3 = this.scope;
        int iHashCode3 = (iB + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.scopes;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.txId;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccessTokenResponse(accessToken=");
        sb.append(this.accessToken);
        sb.append(", refreshToken=");
        sb.append(this.refreshToken);
        sb.append(", accessTokenExpiresIn=");
        sb.append(this.accessTokenExpiresIn);
        sb.append(", refreshTokenExpiresIn=");
        sb.append(this.refreshTokenExpiresIn);
        sb.append(", idToken=");
        sb.append(this.idToken);
        sb.append(", tokenType=");
        sb.append(this.tokenType);
        sb.append(", scope=");
        sb.append(this.scope);
        sb.append(", scopes=");
        sb.append(this.scopes);
        sb.append(", txId=");
        return fc.l(sb, this.txId, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.accessToken);
        parcel.writeString(this.refreshToken);
        parcel.writeLong(this.accessTokenExpiresIn);
        Long l = this.refreshTokenExpiresIn;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l.longValue());
        }
        parcel.writeString(this.idToken);
        parcel.writeString(this.tokenType);
        parcel.writeString(this.scope);
        parcel.writeString(this.scopes);
        parcel.writeString(this.txId);
    }

    public AccessTokenResponse(String str, String str2, long j2, Long l, String str3, String str4, String str5, String str6, String str7) {
        str.getClass();
        str4.getClass();
        this.accessToken = str;
        this.refreshToken = str2;
        this.accessTokenExpiresIn = j2;
        this.refreshTokenExpiresIn = l;
        this.idToken = str3;
        this.tokenType = str4;
        this.scope = str5;
        this.scopes = str6;
        this.txId = str7;
    }
}
