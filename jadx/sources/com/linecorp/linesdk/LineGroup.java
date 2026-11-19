package com.linecorp.linesdk;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;

/* JADX INFO: loaded from: classes2.dex */
public class LineGroup implements Parcelable {
    public static final Parcelable.Creator<LineGroup> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f36070c;
    public final Uri d;

    /* JADX INFO: renamed from: com.linecorp.linesdk.LineGroup$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<LineGroup> {
        @Override // android.os.Parcelable.Creator
        public final LineGroup createFromParcel(Parcel parcel) {
            return new LineGroup(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final LineGroup[] newArray(int i2) {
            return new LineGroup[i2];
        }
    }

    public LineGroup(Parcel parcel) {
        this.f36069b = parcel.readString();
        this.f36070c = parcel.readString();
        this.d = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LineGroup lineGroup = (LineGroup) obj;
        if (!this.f36069b.equals(lineGroup.f36069b) || !this.f36070c.equals(lineGroup.f36070c)) {
            return false;
        }
        Uri uri = lineGroup.d;
        Uri uri2 = this.d;
        return uri2 == null ? uri == null : uri2.equals(uri);
    }

    public final int hashCode() {
        int iB = fc.b(this.f36069b.hashCode() * 31, 31, this.f36070c);
        Uri uri = this.d;
        return iB + (uri != null ? uri.hashCode() : 0);
    }

    public final String toString() {
        return "LineProfile{groupName='" + this.f36070c + "', groupId='" + this.f36069b + "', pictureUrl='" + this.d + "'}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f36069b);
        parcel.writeString(this.f36070c);
        parcel.writeParcelable(this.d, i2);
    }

    public LineGroup(String str, String str2, Uri uri) {
        this.f36069b = str;
        this.f36070c = str2;
        this.d = uri;
    }
}
