package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import defpackage.fc;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class MotionPhotoMetadata implements Metadata.Entry {
    public static final Parcelable.Creator<MotionPhotoMetadata> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f28262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f28263c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f28264e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f28265f;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<MotionPhotoMetadata> {
        @Override // android.os.Parcelable.Creator
        public final MotionPhotoMetadata createFromParcel(Parcel parcel) {
            return new MotionPhotoMetadata(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final MotionPhotoMetadata[] newArray(int i2) {
            return new MotionPhotoMetadata[i2];
        }
    }

    public MotionPhotoMetadata(Parcel parcel) {
        this.f28262b = parcel.readLong();
        this.f28263c = parcel.readLong();
        this.d = parcel.readLong();
        this.f28264e = parcel.readLong();
        this.f28265f = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MotionPhotoMetadata.class == obj.getClass()) {
            MotionPhotoMetadata motionPhotoMetadata = (MotionPhotoMetadata) obj;
            if (this.f28262b == motionPhotoMetadata.f28262b && this.f28263c == motionPhotoMetadata.f28263c && this.d == motionPhotoMetadata.d && this.f28264e == motionPhotoMetadata.f28264e && this.f28265f == motionPhotoMetadata.f28265f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f28265f) + fc.a(fc.a(fc.a(fc.a(527, 31, this.f28262b), 31, this.f28263c), 31, this.d), 31, this.f28264e);
    }

    public final String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f28262b + ", photoSize=" + this.f28263c + ", photoPresentationTimestampUs=" + this.d + ", videoStartPosition=" + this.f28264e + ", videoSize=" + this.f28265f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f28262b);
        parcel.writeLong(this.f28263c);
        parcel.writeLong(this.d);
        parcel.writeLong(this.f28264e);
        parcel.writeLong(this.f28265f);
    }

    public MotionPhotoMetadata(long j2, long j3, long j4, long j5, long j6) {
        this.f28262b = j2;
        this.f28263c = j3;
        this.d = j4;
        this.f28264e = j5;
        this.f28265f = j6;
    }
}
