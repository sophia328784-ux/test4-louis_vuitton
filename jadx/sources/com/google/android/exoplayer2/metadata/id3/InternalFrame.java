package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class InternalFrame extends Id3Frame {
    public static final Parcelable.Creator<InternalFrame> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28251c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f28252e;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.id3.InternalFrame$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<InternalFrame> {
        @Override // android.os.Parcelable.Creator
        public final InternalFrame createFromParcel(Parcel parcel) {
            return new InternalFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final InternalFrame[] newArray(int i2) {
            return new InternalFrame[i2];
        }
    }

    public InternalFrame(Parcel parcel) {
        super("----");
        String string = parcel.readString();
        int i2 = Util.f28451a;
        this.f28251c = string;
        this.d = parcel.readString();
        this.f28252e = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && InternalFrame.class == obj.getClass()) {
            InternalFrame internalFrame = (InternalFrame) obj;
            if (Util.a(this.d, internalFrame.d) && Util.a(this.f28251c, internalFrame.f28251c) && Util.a(this.f28252e, internalFrame.f28252e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f28251c;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f28252e;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public final String toString() {
        return this.f28250b + ": domain=" + this.f28251c + ", description=" + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28250b);
        parcel.writeString(this.f28251c);
        parcel.writeString(this.f28252e);
    }

    public InternalFrame(String str, String str2, String str3) {
        super("----");
        this.f28251c = str;
        this.d = str2;
        this.f28252e = str3;
    }
}
