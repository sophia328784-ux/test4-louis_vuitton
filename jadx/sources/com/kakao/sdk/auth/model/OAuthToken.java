package com.kakao.sdk.auth.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.kakao.sdk.common.model.ClientError;
import com.kakao.sdk.common.model.ClientErrorCause;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.fc;
import defpackage.tr;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0011\b\u0087\b\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\r\u001a\u0004\b\u0013\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0010\u001a\u0004\b\u0014\u0010\u0012R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\r\u001a\u0004\b\u0015\u0010\u000fR\u001f\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/kakao/sdk/auth/model/OAuthToken;", "Landroid/os/Parcelable;", "", "accessToken", "Ljava/util/Date;", "accessTokenExpiresAt", "refreshToken", "refreshTokenExpiresAt", "idToken", "", "scopes", "<init>", "(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/List;)V", "Ljava/lang/String;", NBSSpanMetricUnit.Bit, "()Ljava/lang/String;", "Ljava/util/Date;", "getAccessTokenExpiresAt", "()Ljava/util/Date;", NBSSpanMetricUnit.Day, "e", "c", "Ljava/util/List;", "f", "()Ljava/util/List;", "Companion", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class OAuthToken implements Parcelable {
    private final String accessToken;
    private final Date accessTokenExpiresAt;
    private final String idToken;
    private final String refreshToken;
    private final Date refreshTokenExpiresAt;
    private final List<String> scopes;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<OAuthToken> CREATOR = new Creator();

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/auth/model/OAuthToken$Companion;", "", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static OAuthToken a(AccessTokenResponse accessTokenResponse, OAuthToken oAuthToken) {
            Date refreshTokenExpiresAt;
            List scopes;
            List listSplit$default;
            accessTokenResponse.getClass();
            String accessToken = accessTokenResponse.getAccessToken();
            Date date = new Date((accessTokenResponse.getAccessTokenExpiresIn() * 1000) + new Date().getTime());
            String refreshToken = accessTokenResponse.getRefreshToken();
            if (refreshToken == null) {
                refreshToken = oAuthToken != null ? oAuthToken.getRefreshToken() : null;
                if (refreshToken == null) {
                    throw new ClientError(ClientErrorCause.TokenNotFound, "Refresh token not found in the response.");
                }
            }
            if (accessTokenResponse.getRefreshToken() != null) {
                Long refreshTokenExpiresIn = accessTokenResponse.getRefreshTokenExpiresIn();
                refreshTokenExpiresAt = refreshTokenExpiresIn != null ? new Date((refreshTokenExpiresIn.longValue() * 1000) + new Date().getTime()) : new Date();
            } else {
                refreshTokenExpiresAt = oAuthToken != null ? oAuthToken.getRefreshTokenExpiresAt() : null;
                refreshTokenExpiresAt.getClass();
            }
            Date date2 = refreshTokenExpiresAt;
            String scope = accessTokenResponse.getScope();
            if (scope == null || (listSplit$default = StringsKt__StringsKt.split$default(scope, new String[]{" "}, false, 0, 6, null)) == null) {
                scopes = oAuthToken != null ? oAuthToken.getScopes() : null;
            } else {
                scopes = listSplit$default;
            }
            return new OAuthToken(accessToken, date, refreshToken, date2, accessTokenResponse.getIdToken(), scopes);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<OAuthToken> {
        @Override // android.os.Parcelable.Creator
        public final OAuthToken createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new OAuthToken(parcel.readString(), (Date) parcel.readSerializable(), parcel.readString(), (Date) parcel.readSerializable(), parcel.readString(), parcel.createStringArrayList());
        }

        @Override // android.os.Parcelable.Creator
        public final OAuthToken[] newArray(int i2) {
            return new OAuthToken[i2];
        }
    }

    public OAuthToken(String str, Date date, String str2, Date date2, String str3, List<String> list) {
        str.getClass();
        date.getClass();
        str2.getClass();
        date2.getClass();
        this.accessToken = str;
        this.accessTokenExpiresAt = date;
        this.refreshToken = str2;
        this.refreshTokenExpiresAt = date2;
        this.idToken = str3;
        this.scopes = list;
    }

    public static OAuthToken a(OAuthToken oAuthToken) {
        String str = oAuthToken.accessToken;
        Date date = oAuthToken.accessTokenExpiresAt;
        String str2 = oAuthToken.refreshToken;
        Date date2 = oAuthToken.refreshTokenExpiresAt;
        String str3 = oAuthToken.idToken;
        List<String> list = oAuthToken.scopes;
        str.getClass();
        date.getClass();
        str2.getClass();
        date2.getClass();
        return new OAuthToken(str, date, str2, date2, str3, list);
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getAccessToken() {
        return this.accessToken;
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
    public final Date getRefreshTokenExpiresAt() {
        return this.refreshTokenExpiresAt;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OAuthToken)) {
            return false;
        }
        OAuthToken oAuthToken = (OAuthToken) obj;
        return Intrinsics.c(this.accessToken, oAuthToken.accessToken) && Intrinsics.c(this.accessTokenExpiresAt, oAuthToken.accessTokenExpiresAt) && Intrinsics.c(this.refreshToken, oAuthToken.refreshToken) && Intrinsics.c(this.refreshTokenExpiresAt, oAuthToken.refreshTokenExpiresAt) && Intrinsics.c(this.idToken, oAuthToken.idToken) && Intrinsics.c(this.scopes, oAuthToken.scopes);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final List getScopes() {
        return this.scopes;
    }

    public final int hashCode() {
        int iHashCode = (this.refreshTokenExpiresAt.hashCode() + fc.b((this.accessTokenExpiresAt.hashCode() + (this.accessToken.hashCode() * 31)) * 31, 31, this.refreshToken)) * 31;
        String str = this.idToken;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<String> list = this.scopes;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OAuthToken(accessToken=");
        sb.append(this.accessToken);
        sb.append(", accessTokenExpiresAt=");
        sb.append(this.accessTokenExpiresAt);
        sb.append(", refreshToken=");
        sb.append(this.refreshToken);
        sb.append(", refreshTokenExpiresAt=");
        sb.append(this.refreshTokenExpiresAt);
        sb.append(", idToken=");
        sb.append(this.idToken);
        sb.append(", scopes=");
        return tr.m(sb, this.scopes, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.accessToken);
        parcel.writeSerializable(this.accessTokenExpiresAt);
        parcel.writeString(this.refreshToken);
        parcel.writeSerializable(this.refreshTokenExpiresAt);
        parcel.writeString(this.idToken);
        parcel.writeStringList(this.scopes);
    }

    public /* synthetic */ OAuthToken(String str, Date date, String str2, Date date2, String str3, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, date, str2, date2, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : list);
    }
}
