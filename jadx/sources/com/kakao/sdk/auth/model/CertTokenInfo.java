package com.kakao.sdk.auth.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/kakao/sdk/auth/model/CertTokenInfo;", "Landroid/os/Parcelable;", "Lcom/kakao/sdk/auth/model/OAuthToken;", "token", "", "txId", "<init>", "(Lcom/kakao/sdk/auth/model/OAuthToken;Ljava/lang/String;)V", "Lcom/kakao/sdk/auth/model/OAuthToken;", "getToken", "()Lcom/kakao/sdk/auth/model/OAuthToken;", "Ljava/lang/String;", "getTxId", "()Ljava/lang/String;", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class CertTokenInfo implements Parcelable {
    public static final Parcelable.Creator<CertTokenInfo> CREATOR = new Creator();
    private final OAuthToken token;
    private final String txId;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CertTokenInfo> {
        @Override // android.os.Parcelable.Creator
        public final CertTokenInfo createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CertTokenInfo(OAuthToken.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final CertTokenInfo[] newArray(int i2) {
            return new CertTokenInfo[i2];
        }
    }

    public CertTokenInfo(OAuthToken oAuthToken, String str) {
        oAuthToken.getClass();
        str.getClass();
        this.token = oAuthToken;
        this.txId = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertTokenInfo)) {
            return false;
        }
        CertTokenInfo certTokenInfo = (CertTokenInfo) obj;
        return Intrinsics.c(this.token, certTokenInfo.token) && Intrinsics.c(this.txId, certTokenInfo.txId);
    }

    public final int hashCode() {
        return this.txId.hashCode() + (this.token.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CertTokenInfo(token=");
        sb.append(this.token);
        sb.append(", txId=");
        return fc.l(sb, this.txId, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        this.token.writeToParcel(parcel, i2);
        parcel.writeString(this.txId);
    }
}
