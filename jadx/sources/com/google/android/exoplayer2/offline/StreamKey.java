package com.google.android.exoplayer2.offline;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.Util;
import com.sightcall.universal.media.offline.FileUtils;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class StreamKey implements Comparable<StreamKey>, Parcelable, Bundleable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28304c;
    public final int d;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.offline.StreamKey$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<StreamKey> {
        @Override // android.os.Parcelable.Creator
        public final StreamKey createFromParcel(Parcel parcel) {
            return new StreamKey(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final StreamKey[] newArray(int i2) {
            return new StreamKey[i2];
        }
    }

    static {
        Util.e(0);
        Util.e(1);
        Util.e(2);
    }

    public StreamKey(Parcel parcel) {
        this.f28303b = parcel.readInt();
        this.f28304c = parcel.readInt();
        this.d = parcel.readInt();
    }

    @Override // java.lang.Comparable
    public final int compareTo(StreamKey streamKey) {
        StreamKey streamKey2 = streamKey;
        int i2 = this.f28303b - streamKey2.f28303b;
        return (i2 == 0 && (i2 = this.f28304c - streamKey2.f28304c) == 0) ? this.d - streamKey2.d : i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && StreamKey.class == obj.getClass()) {
            StreamKey streamKey = (StreamKey) obj;
            if (this.f28303b == streamKey.f28303b && this.f28304c == streamKey.f28304c && this.d == streamKey.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((this.f28303b * 31) + this.f28304c) * 31) + this.d;
    }

    public final String toString() {
        return this.f28303b + FileUtils.HIDDEN_PREFIX + this.f28304c + FileUtils.HIDDEN_PREFIX + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f28303b);
        parcel.writeInt(this.f28304c);
        parcel.writeInt(this.d);
    }

    public StreamKey(int i2, int i3, int i4) {
        this.f28303b = i2;
        this.f28304c = i3;
        this.d = i4;
    }

    public StreamKey(int i2, int i3) {
        this(0, i2, i3);
    }
}
