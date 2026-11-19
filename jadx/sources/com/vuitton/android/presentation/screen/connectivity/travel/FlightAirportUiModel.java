package com.vuitton.android.presentation.screen.connectivity.travel;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;
import defpackage.n00;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;", "Landroid/os/Parcelable;", "", "iata", "city", "Ljava/util/Date;", "time", "terminal", "gate", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FlightAirportUiModel implements Parcelable {
    public static final Parcelable.Creator<FlightAirportUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f56326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f56327c;
    public final Date d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f56328e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f56329f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<FlightAirportUiModel> {
        @Override // android.os.Parcelable.Creator
        public final FlightAirportUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new FlightAirportUiModel(parcel.readString(), parcel.readString(), (Date) parcel.readSerializable(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final FlightAirportUiModel[] newArray(int i2) {
            return new FlightAirportUiModel[i2];
        }
    }

    public FlightAirportUiModel(String str, String str2, Date date, String str3, String str4) {
        this.f56326b = str;
        this.f56327c = str2;
        this.d = date;
        this.f56328e = str3;
        this.f56329f = str4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlightAirportUiModel)) {
            return false;
        }
        FlightAirportUiModel flightAirportUiModel = (FlightAirportUiModel) obj;
        return Intrinsics.c(this.f56326b, flightAirportUiModel.f56326b) && Intrinsics.c(this.f56327c, flightAirportUiModel.f56327c) && Intrinsics.c(this.d, flightAirportUiModel.d) && Intrinsics.c(this.f56328e, flightAirportUiModel.f56328e) && Intrinsics.c(this.f56329f, flightAirportUiModel.f56329f);
    }

    public final int hashCode() {
        String str = this.f56326b;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f56327c;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Date date = this.d;
        int iHashCode3 = (iHashCode2 + (date == null ? 0 : date.hashCode())) * 31;
        String str3 = this.f56328e;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f56329f;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("FlightAirportUiModel(iata=", this.f56326b, ", city=", this.f56327c, ", time=");
        sbS.append(this.d);
        sbS.append(", terminal=");
        sbS.append(this.f56328e);
        sbS.append(", gate=");
        return n00.r(this.f56329f, ")", sbS);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f56326b);
        parcel.writeString(this.f56327c);
        parcel.writeSerializable(this.d);
        parcel.writeString(this.f56328e);
        parcel.writeString(this.f56329f);
    }
}
