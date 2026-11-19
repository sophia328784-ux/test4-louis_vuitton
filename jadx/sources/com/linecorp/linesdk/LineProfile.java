package com.linecorp.linesdk;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class LineProfile implements Parcelable {
    public static final Parcelable.Creator<LineProfile> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f36097c;
    public final Uri d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f36098e;

    /* JADX INFO: renamed from: com.linecorp.linesdk.LineProfile$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<LineProfile> {
        @Override // android.os.Parcelable.Creator
        public final LineProfile createFromParcel(Parcel parcel) {
            return new LineProfile(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final LineProfile[] newArray(int i2) {
            return new LineProfile[i2];
        }
    }

    public LineProfile(Parcel parcel) {
        this.f36096b = parcel.readString();
        this.f36097c = parcel.readString();
        this.d = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f36098e = parcel.readString();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            LineProfile lineProfile = (LineProfile) obj;
            if (!this.f36096b.equals(lineProfile.f36096b) || !this.f36097c.equals(lineProfile.f36097c)) {
                return false;
            }
            Uri uri = lineProfile.d;
            Uri uri2 = this.d;
            if (uri2 == null ? uri != null : !uri2.equals(uri)) {
                return false;
            }
            String str = lineProfile.f36098e;
            String str2 = this.f36098e;
            if (str2 != null) {
                return str2.equals(str);
            }
            if (str == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iB = fc.b(this.f36096b.hashCode() * 31, 31, this.f36097c);
        Uri uri = this.d;
        int iHashCode = (iB + (uri != null ? uri.hashCode() : 0)) * 31;
        String str = this.f36098e;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LineProfile{userId='");
        sb.append(this.f36096b);
        sb.append("', displayName='");
        sb.append(this.f36097c);
        sb.append("', pictureUrl=");
        sb.append(this.d);
        sb.append(", statusMessage='");
        return n00.r(this.f36098e, "'}", sb);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f36096b);
        parcel.writeString(this.f36097c);
        parcel.writeParcelable(this.d, i2);
        parcel.writeString(this.f36098e);
    }

    public LineProfile(String str, String str2, Uri uri, String str3) {
        this.f36096b = str;
        this.f36097c = str2;
        this.d = uri;
        this.f36098e = str3;
    }
}
