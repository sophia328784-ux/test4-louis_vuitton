package com.google.android.exoplayer2.container;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;

/* JADX INFO: loaded from: classes2.dex */
public final class CreationTime implements Metadata.Entry {
    public static final Parcelable.Creator<CreationTime> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f28200b;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.container.CreationTime$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<CreationTime> {
        @Override // android.os.Parcelable.Creator
        public final CreationTime createFromParcel(Parcel parcel) {
            return new CreationTime(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final CreationTime[] newArray(int i2) {
            return new CreationTime[i2];
        }
    }

    public CreationTime(Parcel parcel) {
        this.f28200b = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CreationTime) {
            return this.f28200b == ((CreationTime) obj).f28200b;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f28200b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Creation time: ");
        long j2 = this.f28200b;
        sb.append(j2 == -2082844800000L ? "unset" : Long.valueOf(j2));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f28200b);
    }

    public CreationTime(long j2) {
        this.f28200b = j2;
    }
}
