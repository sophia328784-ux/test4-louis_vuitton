package com.kakao.sdk.user.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.google.gson.annotations.SerializedName;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0007\u0010\n\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0013\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/kakao/sdk/user/model/AccessTokenInfo;", "Landroid/os/Parcelable;", "", b.a.f24015b, "expiresIn", "", "appId", "expiresInMillis", "<init>", "(Ljava/lang/Long;JILjava/lang/Long;)V", "Ljava/lang/Long;", "getId", "()Ljava/lang/Long;", "J", "getExpiresIn", "()J", "I", "getAppId", "()I", "getExpiresInMillis", "getExpiresInMillis$annotations", "()V", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class AccessTokenInfo implements Parcelable {
    public static final Parcelable.Creator<AccessTokenInfo> CREATOR = new Creator();
    private final int appId;
    private final long expiresIn;

    @SerializedName("expiresInMillis")
    private final Long expiresInMillis;
    private final Long id;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AccessTokenInfo> {
        @Override // android.os.Parcelable.Creator
        public final AccessTokenInfo createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new AccessTokenInfo(parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readLong(), parcel.readInt(), parcel.readInt() != 0 ? Long.valueOf(parcel.readLong()) : null);
        }

        @Override // android.os.Parcelable.Creator
        public final AccessTokenInfo[] newArray(int i2) {
            return new AccessTokenInfo[i2];
        }
    }

    public AccessTokenInfo(Long l, long j2, int i2, Long l2) {
        this.id = l;
        this.expiresIn = j2;
        this.appId = i2;
        this.expiresInMillis = l2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessTokenInfo)) {
            return false;
        }
        AccessTokenInfo accessTokenInfo = (AccessTokenInfo) obj;
        return Intrinsics.c(this.id, accessTokenInfo.id) && this.expiresIn == accessTokenInfo.expiresIn && this.appId == accessTokenInfo.appId && Intrinsics.c(this.expiresInMillis, accessTokenInfo.expiresInMillis);
    }

    public final int hashCode() {
        Long l = this.id;
        int iB = tr.b(this.appId, fc.a((l == null ? 0 : l.hashCode()) * 31, 31, this.expiresIn), 31);
        Long l2 = this.expiresInMillis;
        return iB + (l2 != null ? l2.hashCode() : 0);
    }

    public final String toString() {
        return "AccessTokenInfo(id=" + this.id + ", expiresIn=" + this.expiresIn + ", appId=" + this.appId + ", expiresInMillis=" + this.expiresInMillis + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        Long l = this.id;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l.longValue());
        }
        parcel.writeLong(this.expiresIn);
        parcel.writeInt(this.appId);
        Long l2 = this.expiresInMillis;
        if (l2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l2.longValue());
        }
    }
}
