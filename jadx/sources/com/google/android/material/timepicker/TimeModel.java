package com.google.android.material.timepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class TimeModel implements Parcelable {
    public static final Parcelable.Creator<TimeModel> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f33246b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f33247c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f33248e;

    /* JADX INFO: renamed from: com.google.android.material.timepicker.TimeModel$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<TimeModel> {
        @Override // android.os.Parcelable.Creator
        public final TimeModel createFromParcel(Parcel parcel) {
            return new TimeModel(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final TimeModel[] newArray(int i2) {
            return new TimeModel[i2];
        }
    }

    public TimeModel(int i2, int i3, int i4, int i5) {
        this.f33247c = i2;
        this.d = i3;
        this.f33248e = i4;
        this.f33246b = i5;
        new MaxInputValidator(59);
        new MaxInputValidator(i5 == 1 ? 23 : 12);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeModel)) {
            return false;
        }
        TimeModel timeModel = (TimeModel) obj;
        return this.f33247c == timeModel.f33247c && this.d == timeModel.d && this.f33246b == timeModel.f33246b && this.f33248e == timeModel.f33248e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f33246b), Integer.valueOf(this.f33247c), Integer.valueOf(this.d), Integer.valueOf(this.f33248e)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f33247c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.f33248e);
        parcel.writeInt(this.f33246b);
    }

    public TimeModel(int i2) {
        this(0, 0, 10, i2);
    }

    public TimeModel() {
        this(0);
    }
}
