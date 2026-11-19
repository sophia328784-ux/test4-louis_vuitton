package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class IcyHeaders implements Metadata.Entry {
    public static final Parcelable.Creator<IcyHeaders> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28229c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f28230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f28231f;
    public final int g;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.icy.IcyHeaders$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<IcyHeaders> {
        @Override // android.os.Parcelable.Creator
        public final IcyHeaders createFromParcel(Parcel parcel) {
            return new IcyHeaders(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final IcyHeaders[] newArray(int i2) {
            return new IcyHeaders[i2];
        }
    }

    public IcyHeaders(Parcel parcel) {
        this.f28228b = parcel.readInt();
        this.f28229c = parcel.readString();
        this.d = parcel.readString();
        this.f28230e = parcel.readString();
        int i2 = Util.f28451a;
        this.f28231f = parcel.readInt() != 0;
        this.g = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && IcyHeaders.class == obj.getClass()) {
            IcyHeaders icyHeaders = (IcyHeaders) obj;
            if (this.f28228b == icyHeaders.f28228b && Util.a(this.f28229c, icyHeaders.f28229c) && Util.a(this.d, icyHeaders.d) && Util.a(this.f28230e, icyHeaders.f28230e) && this.f28231f == icyHeaders.f28231f && this.g == icyHeaders.g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (527 + this.f28228b) * 31;
        String str = this.f28229c;
        int iHashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f28230e;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f28231f ? 1 : 0)) * 31) + this.g;
    }

    public final String toString() {
        return "IcyHeaders: name=\"" + this.d + "\", genre=\"" + this.f28229c + "\", bitrate=" + this.f28228b + ", metadataInterval=" + this.g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f28228b);
        parcel.writeString(this.f28229c);
        parcel.writeString(this.d);
        parcel.writeString(this.f28230e);
        int i3 = Util.f28451a;
        parcel.writeInt(this.f28231f ? 1 : 0);
        parcel.writeInt(this.g);
    }

    public IcyHeaders(int i2, String str, String str2, String str3, boolean z, int i3) {
        Assertions.a(i3 == -1 || i3 > 0);
        this.f28228b = i2;
        this.f28229c = str;
        this.d = str2;
        this.f28230e = str3;
        this.f28231f = z;
        this.g = i3;
    }
}
