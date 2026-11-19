package com.vuitton.android.presentation.screen.account.profile;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/profile/ProfileTitleUiModelLegacy;", "Landroid/os/Parcelable;", "", b.a.f24015b, "displayString", "contentDescription", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProfileTitleUiModelLegacy implements Parcelable {
    public static final Parcelable.Creator<ProfileTitleUiModelLegacy> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f52685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f52686c;
    public final String d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ProfileTitleUiModelLegacy> {
        @Override // android.os.Parcelable.Creator
        public final ProfileTitleUiModelLegacy createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new ProfileTitleUiModelLegacy(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final ProfileTitleUiModelLegacy[] newArray(int i2) {
            return new ProfileTitleUiModelLegacy[i2];
        }
    }

    public ProfileTitleUiModelLegacy(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.f52685b = str;
        this.f52686c = str2;
        this.d = str3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProfileTitleUiModelLegacy)) {
            return false;
        }
        ProfileTitleUiModelLegacy profileTitleUiModelLegacy = (ProfileTitleUiModelLegacy) obj;
        return Intrinsics.c(this.f52685b, profileTitleUiModelLegacy.f52685b) && Intrinsics.c(this.f52686c, profileTitleUiModelLegacy.f52686c) && Intrinsics.c(this.d, profileTitleUiModelLegacy.d);
    }

    public final int hashCode() {
        int iB = fc.b(this.f52685b.hashCode() * 31, 31, this.f52686c);
        String str = this.d;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return n00.r(this.d, ")", fc.s("ProfileTitleUiModelLegacy(id=", this.f52685b, ", displayString=", this.f52686c, ", contentDescription="));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f52685b);
        parcel.writeString(this.f52686c);
        parcel.writeString(this.d);
    }
}
