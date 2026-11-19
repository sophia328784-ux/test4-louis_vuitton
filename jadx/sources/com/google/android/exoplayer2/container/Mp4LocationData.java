package com.google.android.exoplayer2.container;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import defpackage.md;
import defpackage.pq0;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class Mp4LocationData implements Metadata.Entry {
    public static final Parcelable.Creator<Mp4LocationData> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f28201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f28202c;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.container.Mp4LocationData$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<Mp4LocationData> {
        @Override // android.os.Parcelable.Creator
        public final Mp4LocationData createFromParcel(Parcel parcel) {
            return new Mp4LocationData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Mp4LocationData[] newArray(int i2) {
            return new Mp4LocationData[i2];
        }
    }

    public Mp4LocationData(float f2, float f3) {
        if (!(f2 >= -90.0f && f2 <= 90.0f && f3 >= -180.0f && f3 <= 180.0f)) {
            md.n("Invalid latitude or longitude");
            throw null;
        }
        this.f28201b = f2;
        this.f28202c = f3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Mp4LocationData.class == obj.getClass()) {
            Mp4LocationData mp4LocationData = (Mp4LocationData) obj;
            if (this.f28201b == mp4LocationData.f28201b && this.f28202c == mp4LocationData.f28202c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.f28202c) + pq0.b(527, 31, this.f28201b);
    }

    public final String toString() {
        return "xyz: latitude=" + this.f28201b + ", longitude=" + this.f28202c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.f28201b);
        parcel.writeFloat(this.f28202c);
    }

    public Mp4LocationData(Parcel parcel) {
        this.f28201b = parcel.readFloat();
        this.f28202c = parcel.readFloat();
    }
}
