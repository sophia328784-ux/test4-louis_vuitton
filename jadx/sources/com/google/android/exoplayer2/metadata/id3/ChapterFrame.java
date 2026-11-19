package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class ChapterFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterFrame> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28238c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f28239e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f28240f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Id3Frame[] f28241h;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.id3.ChapterFrame$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<ChapterFrame> {
        @Override // android.os.Parcelable.Creator
        public final ChapterFrame createFromParcel(Parcel parcel) {
            return new ChapterFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ChapterFrame[] newArray(int i2) {
            return new ChapterFrame[i2];
        }
    }

    public ChapterFrame(Parcel parcel) {
        super("CHAP");
        String string = parcel.readString();
        int i2 = Util.f28451a;
        this.f28238c = string;
        this.d = parcel.readInt();
        this.f28239e = parcel.readInt();
        this.f28240f = parcel.readLong();
        this.g = parcel.readLong();
        int i3 = parcel.readInt();
        this.f28241h = new Id3Frame[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            this.f28241h[i4] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ChapterFrame.class == obj.getClass()) {
            ChapterFrame chapterFrame = (ChapterFrame) obj;
            if (this.d == chapterFrame.d && this.f28239e == chapterFrame.f28239e && this.f28240f == chapterFrame.f28240f && this.g == chapterFrame.g && Util.a(this.f28238c, chapterFrame.f28238c) && Arrays.equals(this.f28241h, chapterFrame.f28241h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (((((((527 + this.d) * 31) + this.f28239e) * 31) + ((int) this.f28240f)) * 31) + ((int) this.g)) * 31;
        String str = this.f28238c;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28238c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.f28239e);
        parcel.writeLong(this.f28240f);
        parcel.writeLong(this.g);
        Id3Frame[] id3FrameArr = this.f28241h;
        parcel.writeInt(id3FrameArr.length);
        for (Id3Frame id3Frame : id3FrameArr) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }

    public ChapterFrame(String str, int i2, int i3, long j2, long j3, Id3Frame[] id3FrameArr) {
        super("CHAP");
        this.f28238c = str;
        this.d = i2;
        this.f28239e = i3;
        this.f28240f = j2;
        this.g = j3;
        this.f28241h = id3FrameArr;
    }
}
