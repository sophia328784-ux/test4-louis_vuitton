package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f633c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f634e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f635f;

    /* JADX INFO: renamed from: android.support.v4.media.session.ParcelableVolumeInfo$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<ParcelableVolumeInfo> {
        @Override // android.os.Parcelable.Creator
        public final ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ParcelableVolumeInfo[] newArray(int i2) {
            return new ParcelableVolumeInfo[i2];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f632b = parcel.readInt();
        this.d = parcel.readInt();
        this.f634e = parcel.readInt();
        this.f635f = parcel.readInt();
        this.f633c = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f632b);
        parcel.writeInt(this.d);
        parcel.writeInt(this.f634e);
        parcel.writeInt(this.f635f);
        parcel.writeInt(this.f633c);
    }

    public ParcelableVolumeInfo(int i2, int i3, int i4, int i5, int i6) {
        this.f632b = i2;
        this.f633c = i3;
        this.d = i4;
        this.f634e = i5;
        this.f635f = i6;
    }
}
