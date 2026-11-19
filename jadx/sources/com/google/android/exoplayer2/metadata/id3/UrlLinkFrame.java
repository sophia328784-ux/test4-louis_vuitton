package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.Util;
import defpackage.fc;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class UrlLinkFrame extends Id3Frame {
    public static final Parcelable.Creator<UrlLinkFrame> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28258c;
    public final String d;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.id3.UrlLinkFrame$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<UrlLinkFrame> {
        @Override // android.os.Parcelable.Creator
        public final UrlLinkFrame createFromParcel(Parcel parcel) {
            return new UrlLinkFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final UrlLinkFrame[] newArray(int i2) {
            return new UrlLinkFrame[i2];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public UrlLinkFrame(Parcel parcel) {
        String string = parcel.readString();
        int i2 = Util.f28451a;
        super(string);
        this.f28258c = parcel.readString();
        this.d = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && UrlLinkFrame.class == obj.getClass()) {
            UrlLinkFrame urlLinkFrame = (UrlLinkFrame) obj;
            if (this.f28250b.equals(urlLinkFrame.f28250b) && Util.a(this.f28258c, urlLinkFrame.f28258c) && Util.a(this.d, urlLinkFrame.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iB = fc.b(527, 31, this.f28250b);
        String str = this.f28258c;
        int iHashCode = (iB + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public final String toString() {
        return this.f28250b + ": url=" + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28250b);
        parcel.writeString(this.f28258c);
        parcel.writeString(this.d);
    }

    public UrlLinkFrame(String str, String str2, String str3) {
        super(str);
        this.f28258c = str2;
        this.d = str3;
    }
}
