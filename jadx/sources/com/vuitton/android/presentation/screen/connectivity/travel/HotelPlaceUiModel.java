package com.vuitton.android.presentation.screen.connectivity.travel;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;", "Landroid/os/Parcelable;", "", "latitude", "longitude", "", "city", "address", "<init>", "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HotelPlaceUiModel implements Parcelable {
    public static final Parcelable.Creator<HotelPlaceUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Double f56334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Double f56335c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f56336e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<HotelPlaceUiModel> {
        @Override // android.os.Parcelable.Creator
        public final HotelPlaceUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new HotelPlaceUiModel(parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble()), parcel.readInt() != 0 ? Double.valueOf(parcel.readDouble()) : null, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final HotelPlaceUiModel[] newArray(int i2) {
            return new HotelPlaceUiModel[i2];
        }
    }

    public HotelPlaceUiModel(Double d, Double d2, String str, String str2) {
        this.f56334b = d;
        this.f56335c = d2;
        this.d = str;
        this.f56336e = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HotelPlaceUiModel)) {
            return false;
        }
        HotelPlaceUiModel hotelPlaceUiModel = (HotelPlaceUiModel) obj;
        return Intrinsics.c(this.f56334b, hotelPlaceUiModel.f56334b) && Intrinsics.c(this.f56335c, hotelPlaceUiModel.f56335c) && Intrinsics.c(this.d, hotelPlaceUiModel.d) && Intrinsics.c(this.f56336e, hotelPlaceUiModel.f56336e);
    }

    public final int hashCode() {
        Double d = this.f56334b;
        int iHashCode = (d == null ? 0 : d.hashCode()) * 31;
        Double d2 = this.f56335c;
        int iHashCode2 = (iHashCode + (d2 == null ? 0 : d2.hashCode())) * 31;
        String str = this.d;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f56336e;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("HotelPlaceUiModel(latitude=");
        sb.append(this.f56334b);
        sb.append(", longitude=");
        sb.append(this.f56335c);
        sb.append(", city=");
        return tr.l(sb, this.d, ", address=", this.f56336e, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        Double d = this.f56334b;
        if (d == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeDouble(d.doubleValue());
        }
        Double d2 = this.f56335c;
        if (d2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeDouble(d2.doubleValue());
        }
        parcel.writeString(this.d);
        parcel.writeString(this.f56336e);
    }
}
