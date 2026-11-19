package com.google.android.exoplayer2.container;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class XmpData implements Metadata.Entry {
    public static final Parcelable.Creator<XmpData> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f28203b;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.container.XmpData$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<XmpData> {
        @Override // android.os.Parcelable.Creator
        public final XmpData createFromParcel(Parcel parcel) {
            return new XmpData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final XmpData[] newArray(int i2) {
            return new XmpData[i2];
        }
    }

    public XmpData(Parcel parcel) {
        byte[] bArrCreateByteArray = parcel.createByteArray();
        int i2 = Util.f28451a;
        this.f28203b = bArrCreateByteArray;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || XmpData.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f28203b, ((XmpData) obj).f28203b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f28203b);
    }

    public final String toString() {
        return "XMP: ".concat(Util.g(this.f28203b));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByteArray(this.f28203b);
    }

    public XmpData(byte[] bArr) {
        this.f28203b = bArr;
    }
}
