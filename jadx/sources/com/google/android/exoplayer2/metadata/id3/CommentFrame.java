package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class CommentFrame extends Id3Frame {
    public static final Parcelable.Creator<CommentFrame> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28245c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f28246e;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.id3.CommentFrame$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<CommentFrame> {
        @Override // android.os.Parcelable.Creator
        public final CommentFrame createFromParcel(Parcel parcel) {
            return new CommentFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final CommentFrame[] newArray(int i2) {
            return new CommentFrame[i2];
        }
    }

    public CommentFrame(Parcel parcel) {
        super("COMM");
        String string = parcel.readString();
        int i2 = Util.f28451a;
        this.f28245c = string;
        this.d = parcel.readString();
        this.f28246e = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && CommentFrame.class == obj.getClass()) {
            CommentFrame commentFrame = (CommentFrame) obj;
            if (Util.a(this.d, commentFrame.d) && Util.a(this.f28245c, commentFrame.f28245c) && Util.a(this.f28246e, commentFrame.f28246e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f28245c;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f28246e;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public final String toString() {
        return this.f28250b + ": language=" + this.f28245c + ", description=" + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28250b);
        parcel.writeString(this.f28245c);
        parcel.writeString(this.f28246e);
    }

    public CommentFrame(String str, String str2, String str3) {
        super("COMM");
        this.f28245c = str;
        this.d = str2;
        this.f28246e = str3;
    }
}
