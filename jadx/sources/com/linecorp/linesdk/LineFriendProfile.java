package com.linecorp.linesdk;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class LineFriendProfile extends LineProfile {
    public static final Parcelable.Creator<LineFriendProfile> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f36067f;

    /* JADX INFO: renamed from: com.linecorp.linesdk.LineFriendProfile$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<LineFriendProfile> {
        @Override // android.os.Parcelable.Creator
        public final LineFriendProfile createFromParcel(Parcel parcel) {
            return new LineFriendProfile(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final LineFriendProfile[] newArray(int i2) {
            return new LineFriendProfile[i2];
        }
    }

    public LineFriendProfile(Parcel parcel) {
        super(parcel);
        this.f36067f = parcel.readString();
    }

    @Override // com.linecorp.linesdk.LineProfile
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LineFriendProfile) || !super.equals(obj)) {
            return false;
        }
        String str = ((LineFriendProfile) obj).f36067f;
        String str2 = this.f36067f;
        if (str2 != null) {
            return str2.equals(str);
        }
        return str == null;
    }

    @Override // com.linecorp.linesdk.LineProfile
    public final int hashCode() {
        int iHashCode = super.hashCode() * 31;
        String str = this.f36067f;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    @Override // com.linecorp.linesdk.LineProfile
    public final String toString() {
        StringBuilder sb = new StringBuilder("LineFriendProfile{userId='");
        sb.append(this.f36096b);
        sb.append("', displayName='");
        sb.append(this.f36097c);
        sb.append("', pictureUrl=");
        sb.append(this.d);
        sb.append(", statusMessage='");
        sb.append(this.f36098e);
        sb.append("', overriddenDisplayName='");
        return n00.r(this.f36067f, "'}", sb);
    }

    @Override // com.linecorp.linesdk.LineProfile, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.f36067f);
    }

    public LineFriendProfile(String str, String str2, Uri uri, String str3, String str4) {
        super(str, str2, uri, str3);
        this.f36067f = str4;
    }
}
