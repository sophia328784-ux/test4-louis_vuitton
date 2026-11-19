package com.vuitton.android.presentation.screen.connectivity.travel;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.foundation.model.domain.model.connectivity.travel.TravelType;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;", "", "booking", "Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;", "departure", "arrival", "flightCode", "seat", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FlightUiModel extends TravelUiModel {
    public static final Parcelable.Creator<FlightUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f56330c;
    public final FlightAirportUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FlightAirportUiModel f56331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f56332f;
    public final String g;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<FlightUiModel> {
        @Override // android.os.Parcelable.Creator
        public final FlightUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new FlightUiModel(parcel.readString(), parcel.readInt() == 0 ? null : FlightAirportUiModel.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? FlightAirportUiModel.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final FlightUiModel[] newArray(int i2) {
            return new FlightUiModel[i2];
        }
    }

    public FlightUiModel(String str, FlightAirportUiModel flightAirportUiModel, FlightAirportUiModel flightAirportUiModel2, String str2, String str3) {
        super(str, TravelType.FLIGHT, null);
        this.f56330c = str;
        this.d = flightAirportUiModel;
        this.f56331e = flightAirportUiModel2;
        this.f56332f = str2;
        this.g = str3;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF56330c() {
        return this.f56330c;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlightUiModel)) {
            return false;
        }
        FlightUiModel flightUiModel = (FlightUiModel) obj;
        return Intrinsics.c(this.f56330c, flightUiModel.f56330c) && Intrinsics.c(this.d, flightUiModel.d) && Intrinsics.c(this.f56331e, flightUiModel.f56331e) && Intrinsics.c(this.f56332f, flightUiModel.f56332f) && Intrinsics.c(this.g, flightUiModel.g);
    }

    public final int hashCode() {
        String str = this.f56330c;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        FlightAirportUiModel flightAirportUiModel = this.d;
        int iHashCode2 = (iHashCode + (flightAirportUiModel == null ? 0 : flightAirportUiModel.hashCode())) * 31;
        FlightAirportUiModel flightAirportUiModel2 = this.f56331e;
        int iHashCode3 = (iHashCode2 + (flightAirportUiModel2 == null ? 0 : flightAirportUiModel2.hashCode())) * 31;
        String str2 = this.f56332f;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FlightUiModel(booking=");
        sb.append(this.f56330c);
        sb.append(", departure=");
        sb.append(this.d);
        sb.append(", arrival=");
        sb.append(this.f56331e);
        sb.append(", flightCode=");
        sb.append(this.f56332f);
        sb.append(", seat=");
        return n00.r(this.g, ")", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f56330c);
        FlightAirportUiModel flightAirportUiModel = this.d;
        if (flightAirportUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            flightAirportUiModel.writeToParcel(parcel, i2);
        }
        FlightAirportUiModel flightAirportUiModel2 = this.f56331e;
        if (flightAirportUiModel2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            flightAirportUiModel2.writeToParcel(parcel, i2);
        }
        parcel.writeString(this.f56332f);
        parcel.writeString(this.g);
    }
}
