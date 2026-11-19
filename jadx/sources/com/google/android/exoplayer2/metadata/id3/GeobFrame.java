package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class GeobFrame extends Id3Frame {
    public static final Parcelable.Creator<GeobFrame> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28247c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f28248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f28249f;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.id3.GeobFrame$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<GeobFrame> {
        @Override // android.os.Parcelable.Creator
        public final GeobFrame createFromParcel(Parcel parcel) {
            return new GeobFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final GeobFrame[] newArray(int i2) {
            return new GeobFrame[i2];
        }
    }

    public GeobFrame(Parcel parcel) {
        super("GEOB");
        String string = parcel.readString();
        int i2 = Util.f28451a;
        this.f28247c = string;
        this.d = parcel.readString();
        this.f28248e = parcel.readString();
        this.f28249f = parcel.createByteArray();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && GeobFrame.class == obj.getClass()) {
            GeobFrame geobFrame = (GeobFrame) obj;
            if (Util.a(this.f28247c, geobFrame.f28247c) && Util.a(this.d, geobFrame.d) && Util.a(this.f28248e, geobFrame.f28248e) && Arrays.equals(this.f28249f, geobFrame.f28249f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f28247c;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f28248e;
        return Arrays.hashCode(this.f28249f) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public final String toString() {
        return this.f28250b + ": mimeType=" + this.f28247c + ", filename=" + this.d + ", description=" + this.f28248e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28247c);
        parcel.writeString(this.d);
        parcel.writeString(this.f28248e);
        parcel.writeByteArray(this.f28249f);
    }

    public GeobFrame(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f28247c = str;
        this.d = str2;
        this.f28248e = str3;
        this.f28249f = bArr;
    }
}
