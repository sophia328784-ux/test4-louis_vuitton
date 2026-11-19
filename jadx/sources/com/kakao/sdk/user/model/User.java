package com.kakao.sdk.user.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import defpackage.a;
import defpackage.fc;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0019\b\u0087\b\u0018\u00002\u00020\u0001Bc\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R%\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0019\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\t\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0019\u0010\f\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\f\u0010\u001e\u001a\u0004\b!\u0010 R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\"\u001a\u0004\b#\u0010$R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001b\u001a\u0004\b%\u0010\u001d¨\u0006&"}, d2 = {"Lcom/kakao/sdk/user/model/User;", "Landroid/os/Parcelable;", "", b.a.f24015b, "", "", SAPropertyFilter.PROPERTIES, "Lcom/kakao/sdk/user/model/Account;", "kakaoAccount", "groupUserToken", "Ljava/util/Date;", "connectedAt", "synchedAt", "", "hasSignedUp", "uuid", "<init>", "(Ljava/lang/Long;Ljava/util/Map;Lcom/kakao/sdk/user/model/Account;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;)V", "Ljava/lang/Long;", "getId", "()Ljava/lang/Long;", "Ljava/util/Map;", "getProperties", "()Ljava/util/Map;", "Lcom/kakao/sdk/user/model/Account;", "a", "()Lcom/kakao/sdk/user/model/Account;", "Ljava/lang/String;", "getGroupUserToken", "()Ljava/lang/String;", "Ljava/util/Date;", "getConnectedAt", "()Ljava/util/Date;", "getSynchedAt", "Ljava/lang/Boolean;", "getHasSignedUp", "()Ljava/lang/Boolean;", "getUuid", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class User implements Parcelable {
    public static final Parcelable.Creator<User> CREATOR = new Creator();
    private final Date connectedAt;
    private final String groupUserToken;
    private final Boolean hasSignedUp;
    private final Long id;
    private final Account kakaoAccount;
    private final Map<String, String> properties;
    private final Date synchedAt;
    private final String uuid;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<User> {
        @Override // android.os.Parcelable.Creator
        public final User createFromParcel(Parcel parcel) {
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
            return new User(lValueOf, linkedHashMap, parcel.readInt() == 0 ? null : Account.CREATOR.createFromParcel(parcel), parcel.readString(), (Date) parcel.readSerializable(), (Date) parcel.readSerializable(), parcel.readInt() != 0 ? Boolean.valueOf(parcel.readInt() != 0) : null, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final User[] newArray(int i2) {
            return new User[i2];
        }
    }

    public User(Long l, Map<String, String> map, Account account, String str, Date date, Date date2, Boolean bool, String str2) {
        this.id = l;
        this.properties = map;
        this.kakaoAccount = account;
        this.groupUserToken = str;
        this.connectedAt = date;
        this.synchedAt = date2;
        this.hasSignedUp = bool;
        this.uuid = str2;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final Account getKakaoAccount() {
        return this.kakaoAccount;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof User)) {
            return false;
        }
        User user = (User) obj;
        return Intrinsics.c(this.id, user.id) && Intrinsics.c(this.properties, user.properties) && Intrinsics.c(this.kakaoAccount, user.kakaoAccount) && Intrinsics.c(this.groupUserToken, user.groupUserToken) && Intrinsics.c(this.connectedAt, user.connectedAt) && Intrinsics.c(this.synchedAt, user.synchedAt) && Intrinsics.c(this.hasSignedUp, user.hasSignedUp) && Intrinsics.c(this.uuid, user.uuid);
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
        String str2 = this.uuid;
        return iHashCode7 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("User(id=");
        sb.append(this.id);
        sb.append(", properties=");
        sb.append(this.properties);
        sb.append(", kakaoAccount=");
        sb.append(this.kakaoAccount);
        sb.append(", groupUserToken=");
        sb.append(this.groupUserToken);
        sb.append(", connectedAt=");
        sb.append(this.connectedAt);
        sb.append(", synchedAt=");
        sb.append(this.synchedAt);
        sb.append(", hasSignedUp=");
        sb.append(this.hasSignedUp);
        sb.append(", uuid=");
        return fc.l(sb, this.uuid, ')');
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
        parcel.writeString(this.uuid);
    }
}
