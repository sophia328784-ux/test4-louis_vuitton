package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import defpackage.pq0;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class SmtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<SmtaMetadataEntry> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f28269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28270c;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<SmtaMetadataEntry> {
        @Override // android.os.Parcelable.Creator
        public final SmtaMetadataEntry createFromParcel(Parcel parcel) {
            return new SmtaMetadataEntry(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final SmtaMetadataEntry[] newArray(int i2) {
            return new SmtaMetadataEntry[i2];
        }
    }

    public SmtaMetadataEntry(Parcel parcel) {
        this.f28269b = parcel.readFloat();
        this.f28270c = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SmtaMetadataEntry.class == obj.getClass()) {
            SmtaMetadataEntry smtaMetadataEntry = (SmtaMetadataEntry) obj;
            if (this.f28269b == smtaMetadataEntry.f28269b && this.f28270c == smtaMetadataEntry.f28270c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return pq0.b(527, 31, this.f28269b) + this.f28270c;
    }

    public final String toString() {
        return "smta: captureFrameRate=" + this.f28269b + ", svcTemporalLayerCount=" + this.f28270c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.f28269b);
        parcel.writeInt(this.f28270c);
    }

    public SmtaMetadataEntry(float f2, int i2) {
        this.f28269b = f2;
        this.f28270c = i2;
    }
}
