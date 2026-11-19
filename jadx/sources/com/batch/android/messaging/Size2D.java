package com.batch.android.messaging;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class Size2D implements Parcelable, Serializable {
    public static final Parcelable.Creator<Size2D> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f23706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f23707c;

    public Size2D(Parcel parcel) {
        this.f23706b = parcel.readInt();
        this.f23707c = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Size2D size2D = (Size2D) obj;
            if (this.f23706b == size2D.f23706b && this.f23707c == size2D.f23707c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.f23706b * 31) + this.f23707c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f23706b);
        parcel.writeInt(this.f23707c);
    }

    public class a implements Parcelable.Creator<Size2D> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Size2D createFromParcel(Parcel parcel) {
            return new Size2D(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Size2D[] newArray(int i2) {
            return new Size2D[i2];
        }
    }

    public Size2D(int i2, int i3) {
        this.f23706b = i2;
        this.f23707c = i3;
    }
}
