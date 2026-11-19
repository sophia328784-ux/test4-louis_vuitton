package com.kakao.sdk.user.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import defpackage.a;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001a\b\u0087\b\u0018\u00002\u00020\u0001Bc\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R%\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0019\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\t\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001f\u001a\u0004\b \u0010!R\u0019\u0010\f\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\f\u0010\u001f\u001a\u0004\b\"\u0010!R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010#\u001a\u0004\b$\u0010%R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010&\u001a\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lcom/kakao/sdk/user/model/UserResponse;", "Landroid/os/Parcelable;", "", b.a.f24015b, "", "", SAPropertyFilter.PROPERTIES, "Lcom/kakao/sdk/user/model/Account;", "kakaoAccount", "groupUserToken", "Ljava/util/Date;", "connectedAt", "synchedAt", "", "hasSignedUp", "Lcom/kakao/sdk/user/model/ForPartner;", "forPartner", "<init>", "(Ljava/lang/Long;Ljava/util/Map;Lcom/kakao/sdk/user/model/Account;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/ForPartner;)V", "Ljava/lang/Long;", "getId", "()Ljava/lang/Long;", "Ljava/util/Map;", "getProperties", "()Ljava/util/Map;", "Lcom/kakao/sdk/user/model/Account;", "getKakaoAccount", "()Lcom/kakao/sdk/user/model/Account;", "Ljava/lang/String;", "getGroupUserToken", "()Ljava/lang/String;", "Ljava/util/Date;", "getConnectedAt", "()Ljava/util/Date;", "getSynchedAt", "Ljava/lang/Boolean;", "getHasSignedUp", "()Ljava/lang/Boolean;", "Lcom/kakao/sdk/user/model/ForPartner;", "getForPartner", "()Lcom/kakao/sdk/user/model/ForPartner;", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class UserResponse implements Parcelable {
    public static final Parcelable.Creator<UserResponse> CREATOR = new Creator();
    private final Date connectedAt;
    private final ForPartner forPartner;
    private final String groupUserToken;
    private final Boolean hasSignedUp;
    private final Long id;
    private final Account kakaoAccount;
    private final Map<String, String> properties;
    private final Date synchedAt;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<UserResponse> {
        @Override // android.os.Parcelable.Creator
        public final UserResponse createFromParcel(Parcel parcel) {
            LinkedHashMap linkedHashMap;
            parcel.getClass();
            Long lValueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            if (parcel.readInt() == 0) {
                linkedHashMap = null;
            } else {
                int i2 = parcel.readInt();
                linkedHashMap = new LinkedHashMap(i2);
                for (int i3 = 0; i3 != i2; i3++) {
                    linkedHashMap.put(parcel.readString(), parcel.readString());
                }
            }
            return new UserResponse(lValueOf, linkedHashMap, parcel.readInt() == 0 ? null : Account.CREATOR.createFromParcel(parcel), parcel.readString(), (Date) parcel.readSerializable(), (Date) parcel.readSerializable(), parcel.readInt() == 0 ? null : Boolean.valueOf(parcel.readInt() != 0), parcel.readInt() != 0 ? ForPartner.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        public final UserResponse[] newArray(int i2) {
            return new UserResponse[i2];
        }
    }

    public UserResponse(Long l, Map<String, String> map, Account account, String str, Date date, Date date2, Boolean bool, ForPartner forPartner) {
        this.id = l;
        this.properties = map;
        this.kakaoAccount = account;
        this.groupUserToken = str;
        this.connectedAt = date;
        this.synchedAt = date2;
        this.hasSignedUp = bool;
        this.forPartner = forPartner;
    }

    public final User a() {
        Long l = this.id;
        Map<String, String> map = this.properties;
        Account account = this.kakaoAccount;
        String str = this.groupUserToken;
        Date date = this.connectedAt;
        Date date2 = this.synchedAt;
        Boolean bool = this.hasSignedUp;
        ForPartner forPartner = this.forPartner;
        return new User(l, map, account, str, date, date2, bool, forPartner != null ? forPartner.getUuid() : null);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserResponse)) {
            return false;
        }
        UserResponse userResponse = (UserResponse) obj;
        return Intrinsics.c(this.id, userResponse.id) && Intrinsics.c(this.properties, userResponse.properties) && Intrinsics.c(this.kakaoAccount, userResponse.kakaoAccount) && Intrinsics.c(this.groupUserToken, userResponse.groupUserToken) && Intrinsics.c(this.connectedAt, userResponse.connectedAt) && Intrinsics.c(this.synchedAt, userResponse.synchedAt) && Intrinsics.c(this.hasSignedUp, userResponse.hasSignedUp) && Intrinsics.c(this.forPartner, userResponse.forPartner);
    }

    public final int hashCode() {
        Long l = this.id;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        Map<String, String> map = this.properties;
        int iHashCode2 = (iHashCode + (map == null ? 0 : map.hashCode())) * 31;
        Account account = this.kakaoAccount;
        int iHashCode3 = (iHashCode2 + (account == null ? 0 : account.hashCode())) * 31;
        String str = this.groupUserToken;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Date date = this.connectedAt;
        int iHashCode5 = (iHashCode4 + (date == null ? 0 : date.hashCode())) * 31;
        Date date2 = this.synchedAt;
        int iHashCode6 = (iHashCode5 + (date2 == null ? 0 : date2.hashCode())) * 31;
        Boolean bool = this.hasSignedUp;
        int iHashCode7 = (iHashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
        ForPartner forPartner = this.forPartner;
        return iHashCode7 + (forPartner != null ? forPartner.hashCode() : 0);
    }

    public final String toString() {
        return "UserResponse(id=" + this.id + ", properties=" + this.properties + ", kakaoAccount=" + this.kakaoAccount + ", groupUserToken=" + this.groupUserToken + ", connectedAt=" + this.connectedAt + ", synchedAt=" + this.synchedAt + ", hasSignedUp=" + this.hasSignedUp + ", forPartner=" + this.forPartner + ')';
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
        Map<String, String> map = this.properties;
        if (map == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                parcel.writeString(entry.getKey());
                parcel.writeString(entry.getValue());
            }
        }
        Account account = this.kakaoAccount;
        if (account == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            account.writeToParcel(parcel, i2);
        }
        parcel.writeString(this.groupUserToken);
        parcel.writeSerializable(this.connectedAt);
        parcel.writeSerializable(this.synchedAt);
        Boolean bool = this.hasSignedUp;
        if (bool == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool);
        }
        ForPartner forPartner = this.forPartner;
        if (forPartner == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            forPartner.writeToParcel(parcel, i2);
        }
    }
}
