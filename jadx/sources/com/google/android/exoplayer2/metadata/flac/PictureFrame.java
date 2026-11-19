package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Util;
import defpackage.fc;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class PictureFrame implements Metadata.Entry {
    public static final Parcelable.Creator<PictureFrame> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28221c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f28222e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f28223f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f28224h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final byte[] f28225i;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.flac.PictureFrame$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<PictureFrame> {
        @Override // android.os.Parcelable.Creator
        public final PictureFrame createFromParcel(Parcel parcel) {
            return new PictureFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final PictureFrame[] newArray(int i2) {
            return new PictureFrame[i2];
        }
    }

    public PictureFrame(Parcel parcel) {
        this.f28220b = parcel.readInt();
        String string = parcel.readString();
        int i2 = Util.f28451a;
        this.f28221c = string;
        this.d = parcel.readString();
        this.f28222e = parcel.readInt();
        this.f28223f = parcel.readInt();
        this.g = parcel.readInt();
        this.f28224h = parcel.readInt();
        this.f28225i = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && PictureFrame.class == obj.getClass()) {
            PictureFrame pictureFrame = (PictureFrame) obj;
            if (this.f28220b == pictureFrame.f28220b && this.f28221c.equals(pictureFrame.f28221c) && this.d.equals(pictureFrame.d) && this.f28222e == pictureFrame.f28222e && this.f28223f == pictureFrame.f28223f && this.g == pictureFrame.g && this.f28224h == pictureFrame.f28224h && Arrays.equals(this.f28225i, pictureFrame.f28225i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f28225i) + ((((((((fc.b(fc.b((527 + this.f28220b) * 31, 31, this.f28221c), 31, this.d) + this.f28222e) * 31) + this.f28223f) * 31) + this.g) * 31) + this.f28224h) * 31);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.f28221c + ", description=" + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f28220b);
        parcel.writeString(this.f28221c);
        parcel.writeString(this.d);
        parcel.writeInt(this.f28222e);
        parcel.writeInt(this.f28223f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.f28224h);
        parcel.writeByteArray(this.f28225i);
    }

    public PictureFrame(int i2, String str, String str2, int i3, int i4, int i5, int i6, byte[] bArr) {
        this.f28220b = i2;
        this.f28221c = str;
        this.d = str2;
        this.f28222e = i3;
        this.f28223f = i4;
        this.g = i5;
        this.f28224h = i6;
        this.f28225i = bArr;
    }
}
