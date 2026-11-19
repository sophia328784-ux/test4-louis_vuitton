package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class ChapterTocFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterTocFrame> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28242c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f28243e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String[] f28244f;
    public final Id3Frame[] g;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.id3.ChapterTocFrame$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<ChapterTocFrame> {
        @Override // android.os.Parcelable.Creator
        public final ChapterTocFrame createFromParcel(Parcel parcel) {
            return new ChapterTocFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ChapterTocFrame[] newArray(int i2) {
            return new ChapterTocFrame[i2];
        }
    }

    public ChapterTocFrame(Parcel parcel) {
        super("CTOC");
        String string = parcel.readString();
        int i2 = Util.f28451a;
        this.f28242c = string;
        this.d = parcel.readByte() != 0;
        this.f28243e = parcel.readByte() != 0;
        this.f28244f = parcel.createStringArray();
        int i3 = parcel.readInt();
        this.g = new Id3Frame[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            this.g[i4] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ChapterTocFrame.class == obj.getClass()) {
            ChapterTocFrame chapterTocFrame = (ChapterTocFrame) obj;
            if (this.d == chapterTocFrame.d && this.f28243e == chapterTocFrame.f28243e && Util.a(this.f28242c, chapterTocFrame.f28242c) && Arrays.equals(this.f28244f, chapterTocFrame.f28244f) && Arrays.equals(this.g, chapterTocFrame.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (((527 + (this.d ? 1 : 0)) * 31) + (this.f28243e ? 1 : 0)) * 31;
        String str = this.f28242c;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28242c);
        parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f28243e ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f28244f);
        Id3Frame[] id3FrameArr = this.g;
        parcel.writeInt(id3FrameArr.length);
        for (Id3Frame id3Frame : id3FrameArr) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }

    public ChapterTocFrame(String str, boolean z, boolean z2, String[] strArr, Id3Frame[] id3FrameArr) {
        super("CTOC");
        this.f28242c = str;
        this.d = z;
        this.f28243e = z2;
        this.f28244f = strArr;
        this.g = id3FrameArr;
    }
}
