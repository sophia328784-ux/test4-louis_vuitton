package com.kakao.sdk.user.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\n\u001a\u0004\b\r\u0010\fR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010\n\u001a\u0004\b\u000e\u0010\fR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u000f\u001a\u0004\b\u0007\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/kakao/sdk/user/model/Profile;", "Landroid/os/Parcelable;", "", "nickname", "profileImageUrl", "thumbnailImageUrl", "", "isDefaultImage", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "getProfileImageUrl", "getThumbnailImageUrl", "Ljava/lang/Boolean;", "()Ljava/lang/Boolean;", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class Profile implements Parcelable {
    public static final Parcelable.Creator<Profile> CREATOR = new Creator();
    private final Boolean isDefaultImage;
    private final String nickname;
    private final String profileImageUrl;
    private final String thumbnailImageUrl;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<Profile> {
        @Override // android.os.Parcelable.Creator
        public final Profile createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new Profile(string, string2, string3, boolValueOf);
        }

        @Override // android.os.Parcelable.Creator
        public final Profile[] newArray(int i2) {
            return new Profile[i2];
        }
    }

    public Profile(String str, String str2, String str3, Boolean bool) {
        this.nickname = str;
        this.profileImageUrl = str2;
        this.thumbnailImageUrl = str3;
        this.isDefaultImage = bool;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getNickname() {
        return this.nickname;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Profile)) {
            return false;
        }
        Profile profile = (Profile) obj;
        return Intrinsics.c(this.nickname, profile.nickname) && Intrinsics.c(this.profileImageUrl, profile.profileImageUrl) && Intrinsics.c(this.thumbnailImageUrl, profile.thumbnailImageUrl) && Intrinsics.c(this.isDefaultImage, profile.isDefaultImage);
    }

    public final int hashCode() {
        String str = this.nickname;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.profileImageUrl;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.thumbnailImageUrl;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.isDefaultImage;
        return iHashCode3 + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "Profile(nickname=" + this.nickname + ", profileImageUrl=" + this.profileImageUrl + ", thumbnailImageUrl=" + this.thumbnailImageUrl + ", isDefaultImage=" + this.isDefaultImage + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.nickname);
        parcel.writeString(this.profileImageUrl);
        parcel.writeString(this.thumbnailImageUrl);
        Boolean bool = this.isDefaultImage;
        if (bool == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool);
        }
    }
}
