package com.vuitton.android.presentation.screen.connectivity.travel;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.foundation.model.domain.model.connectivity.travel.TravelType;
import defpackage.fc;
import defpackage.tr;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001BW\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;", "", "booking", "trainNumber", "Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;", "departureStation", "Ljava/util/Date;", "departureTime", "arrivalStation", "arrivalTime", "coach", "seat", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;Ljava/util/Date;Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TrainUiModel extends TravelUiModel {
    public static final Parcelable.Creator<TrainUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f56345c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StationUiModel f56346e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Date f56347f;
    public final StationUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Date f56348h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f56349i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f56350j;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<TrainUiModel> {
        @Override // android.os.Parcelable.Creator
        public final TrainUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new TrainUiModel(parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : StationUiModel.CREATOR.createFromParcel(parcel), (Date) parcel.readSerializable(), parcel.readInt() != 0 ? StationUiModel.CREATOR.createFromParcel(parcel) : null, (Date) parcel.readSerializable(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final TrainUiModel[] newArray(int i2) {
            return new TrainUiModel[i2];
        }
    }

    public TrainUiModel(String str, String str2, StationUiModel stationUiModel, Date date, StationUiModel stationUiModel2, Date date2, String str3, String str4) {
        super(str, TravelType.TRAIN, null);
        this.f56345c = str;
        this.d = str2;
        this.f56346e = stationUiModel;
        this.f56347f = date;
        this.g = stationUiModel2;
        this.f56348h = date2;
        this.f56349i = str3;
        this.f56350j = str4;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF56345c() {
        return this.f56345c;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TrainUiModel)) {
            return false;
        }
        TrainUiModel trainUiModel = (TrainUiModel) obj;
        return Intrinsics.c(this.f56345c, trainUiModel.f56345c) && Intrinsics.c(this.d, trainUiModel.d) && Intrinsics.c(this.f56346e, trainUiModel.f56346e) && Intrinsics.c(this.f56347f, trainUiModel.f56347f) && Intrinsics.c(this.g, trainUiModel.g) && Intrinsics.c(this.f56348h, trainUiModel.f56348h) && Intrinsics.c(this.f56349i, trainUiModel.f56349i) && Intrinsics.c(this.f56350j, trainUiModel.f56350j);
    }

    public final int hashCode() {
        String str = this.f56345c;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        StationUiModel stationUiModel = this.f56346e;
        int iHashCode3 = (iHashCode2 + (stationUiModel == null ? 0 : stationUiModel.hashCode())) * 31;
        Date date = this.f56347f;
        int iHashCode4 = (iHashCode3 + (date == null ? 0 : date.hashCode())) * 31;
        StationUiModel stationUiModel2 = this.g;
        int iHashCode5 = (iHashCode4 + (stationUiModel2 == null ? 0 : stationUiModel2.hashCode())) * 31;
        Date date2 = this.f56348h;
        int iHashCode6 = (iHashCode5 + (date2 == null ? 0 : date2.hashCode())) * 31;
        String str3 = this.f56349i;
        int iHashCode7 = (iHashCode6 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f56350j;
        return iHashCode7 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("TrainUiModel(booking=", this.f56345c, ", trainNumber=", this.d, ", departureStation=");
        sbS.append(this.f56346e);
        sbS.append(", departureTime=");
        sbS.append(this.f56347f);
        sbS.append(", arrivalStation=");
        sbS.append(this.g);
        sbS.append(", arrivalTime=");
        sbS.append(this.f56348h);
        sbS.append(", coach=");
        return tr.l(sbS, this.f56349i, ", seat=", this.f56350j, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f56345c);
        parcel.writeString(this.d);
        StationUiModel stationUiModel = this.f56346e;
        if (stationUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            stationUiModel.writeToParcel(parcel, i2);
        }
        parcel.writeSerializable(this.f56347f);
        StationUiModel stationUiModel2 = this.g;
        if (stationUiModel2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            stationUiModel2.writeToParcel(parcel, i2);
        }
        parcel.writeSerializable(this.f56348h);
        parcel.writeString(this.f56349i);
        parcel.writeString(this.f56350j);
    }
}
