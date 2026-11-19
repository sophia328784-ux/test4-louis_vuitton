package com.vuitton.android.presentation.screen.connectivity.travel;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.foundation.model.domain.model.connectivity.travel.TravelType;
import defpackage.fc;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;", "", "booking", "name", "Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;", "place", "Ljava/util/Date;", "checkIn", "checkOut", "phone", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HotelUiModel extends TravelUiModel {
    public static final Parcelable.Creator<HotelUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f56337c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HotelPlaceUiModel f56338e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Date f56339f;
    public final Date g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f56340h;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<HotelUiModel> {
        @Override // android.os.Parcelable.Creator
        public final HotelUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new HotelUiModel(parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : HotelPlaceUiModel.CREATOR.createFromParcel(parcel), (Date) parcel.readSerializable(), (Date) parcel.readSerializable(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final HotelUiModel[] newArray(int i2) {
            return new HotelUiModel[i2];
        }
    }

    public HotelUiModel(String str, String str2, HotelPlaceUiModel hotelPlaceUiModel, Date date, Date date2, String str3) {
        super(str, TravelType.HOTEL, null);
        this.f56337c = str;
        this.d = str2;
        this.f56338e = hotelPlaceUiModel;
        this.f56339f = date;
        this.g = date2;
        this.f56340h = str3;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF56337c() {
        return this.f56337c;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HotelUiModel)) {
            return false;
        }
        HotelUiModel hotelUiModel = (HotelUiModel) obj;
        return Intrinsics.c(this.f56337c, hotelUiModel.f56337c) && Intrinsics.c(this.d, hotelUiModel.d) && Intrinsics.c(this.f56338e, hotelUiModel.f56338e) && Intrinsics.c(this.f56339f, hotelUiModel.f56339f) && Intrinsics.c(this.g, hotelUiModel.g) && Intrinsics.c(this.f56340h, hotelUiModel.f56340h);
    }

    public final int hashCode() {
        String str = this.f56337c;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        HotelPlaceUiModel hotelPlaceUiModel = this.f56338e;
        int iHashCode3 = (iHashCode2 + (hotelPlaceUiModel == null ? 0 : hotelPlaceUiModel.hashCode())) * 31;
        Date date = this.f56339f;
        int iHashCode4 = (iHashCode3 + (date == null ? 0 : date.hashCode())) * 31;
        Date date2 = this.g;
        int iHashCode5 = (iHashCode4 + (date2 == null ? 0 : date2.hashCode())) * 31;
        String str3 = this.f56340h;
        return iHashCode5 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("HotelUiModel(booking=", this.f56337c, ", name=", this.d, ", place=");
        sbS.append(this.f56338e);
        sbS.append(", checkIn=");
        sbS.append(this.f56339f);
        sbS.append(", checkOut=");
        sbS.append(this.g);
        sbS.append(", phone=");
        sbS.append(this.f56340h);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f56337c);
        parcel.writeString(this.d);
        HotelPlaceUiModel hotelPlaceUiModel = this.f56338e;
        if (hotelPlaceUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            hotelPlaceUiModel.writeToParcel(parcel, i2);
        }
        parcel.writeSerializable(this.f56339f);
        parcel.writeSerializable(this.g);
        parcel.writeString(this.f56340h);
    }
}
