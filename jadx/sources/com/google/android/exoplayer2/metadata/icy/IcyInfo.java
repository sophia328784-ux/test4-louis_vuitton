package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import defpackage.a;
import defpackage.fc;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class IcyInfo implements Metadata.Entry {
    public static final Parcelable.Creator<IcyInfo> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f28232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28233c;
    public final String d;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.icy.IcyInfo$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<IcyInfo> {
        @Override // android.os.Parcelable.Creator
        public final IcyInfo createFromParcel(Parcel parcel) {
            return new IcyInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final IcyInfo[] newArray(int i2) {
            return new IcyInfo[i2];
        }
    }

    public IcyInfo(Parcel parcel) {
        byte[] bArrCreateByteArray = parcel.createByteArray();
        bArrCreateByteArray.getClass();
        this.f28232b = bArrCreateByteArray;
        this.f28233c = parcel.readString();
        this.d = parcel.readString();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || IcyInfo.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f28232b, ((IcyInfo) obj).f28232b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f28232b);
    }

    public final String toString() {
        return a.i(this.f28232b.length, "\"", fc.s("ICY: title=\"", this.f28233c, "\", url=\"", this.d, "\", rawMetadata.length=\""));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByteArray(this.f28232b);
        parcel.writeString(this.f28233c);
        parcel.writeString(this.d);
    }

    public IcyInfo(byte[] bArr, String str, String str2) {
        this.f28232b = bArr;
        this.f28233c = str;
        this.d = str2;
    }
}
