package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Util;
import defpackage.fc;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class VorbisComment implements Metadata.Entry {
    public static final Parcelable.Creator<VorbisComment> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28227c;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.flac.VorbisComment$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<VorbisComment> {
        @Override // android.os.Parcelable.Creator
        public final VorbisComment createFromParcel(Parcel parcel) {
            return new VorbisComment(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final VorbisComment[] newArray(int i2) {
            return new VorbisComment[i2];
        }
    }

    public VorbisComment(Parcel parcel) {
        String string = parcel.readString();
        int i2 = Util.f28451a;
        this.f28226b = string;
        this.f28227c = parcel.readString();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            VorbisComment vorbisComment = (VorbisComment) obj;
            if (this.f28226b.equals(vorbisComment.f28226b) && this.f28227c.equals(vorbisComment.f28227c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f28227c.hashCode() + fc.b(527, 31, this.f28226b);
    }

    public final String toString() {
        return "VC: " + this.f28226b + "=" + this.f28227c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28226b);
        parcel.writeString(this.f28227c);
    }

    public VorbisComment(String str, String str2) {
        this.f28226b = str;
        this.f28227c = str2;
    }
}
