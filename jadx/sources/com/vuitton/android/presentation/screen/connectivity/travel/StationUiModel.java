package com.vuitton.android.presentation.screen.connectivity.travel;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;", "Landroid/os/Parcelable;", "", "name", "city", "", "latitude", "longitude", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StationUiModel implements Parcelable {
    public static final Parcelable.Creator<StationUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f56342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f56343c;
    public final Double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Double f56344e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<StationUiModel> {
        @Override // android.os.Parcelable.Creator
        public final StationUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new StationUiModel(parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble()), parcel.readInt() != 0 ? Double.valueOf(parcel.readDouble()) : null);
        }

        @Override // android.os.Parcelable.Creator
        public final StationUiModel[] newArray(int i2) {
            return new StationUiModel[i2];
        }
    }

    public StationUiModel(String str, String str2, Double d, Double d2) {
        this.f56342b = str;
        this.f56343c = str2;
        this.d = d;
        this.f56344e = d2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StationUiModel)) {
            return false;
        }
        StationUiModel stationUiModel = (StationUiModel) obj;
        return Intrinsics.c(this.f56342b, stationUiModel.f56342b) && Intrinsics.c(this.f56343c, stationUiModel.f56343c) && Intrinsics.c(this.d, stationUiModel.d) && Intrinsics.c(this.f56344e, stationUiModel.f56344e);
    }

    public final int hashCode() {
        String str = this.f56342b;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f56343c;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Double d = this.d;
        int iHashCode3 = (iHashCode2 + (d == null ? 0 : d.hashCode())) * 31;
        Double d2 = this.f56344e;
        return iHashCode3 + (d2 != null ? d2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("StationUiModel(name=", this.f56342b, ", city=", this.f56343c, ", latitude=");
        sbS.append(this.d);
        sbS.append(", longitude=");
        sbS.append(this.f56344e);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f56342b);
        parcel.writeString(this.f56343c);
        Double d = this.d;
        if (d == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeDouble(d.doubleValue());
        }
        Double d2 = this.f56344e;
        if (d2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeDouble(d2.doubleValue());
        }
    }
}
