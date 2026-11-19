package com.vuitton.android.presentation.model.location;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;", "Landroid/os/Parcelable;", "", "address", "", "centerLatitude", "centerLongitude", "northEastLatitude", "northEastLongitude", "southWestLatitude", "southWestLongitude", "<init>", "(Ljava/lang/String;DDDDDD)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PlaceGeocodingUiModel implements Parcelable {
    public static final Parcelable.Creator<PlaceGeocodingUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f51805c;
    public final double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f51806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f51807f;
    public final double g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final double f51808h;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<PlaceGeocodingUiModel> {
        @Override // android.os.Parcelable.Creator
        public final PlaceGeocodingUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new PlaceGeocodingUiModel(parcel.readString(), parcel.readDouble(), parcel.readDouble(), parcel.readDouble(), parcel.readDouble(), parcel.readDouble(), parcel.readDouble());
        }

        @Override // android.os.Parcelable.Creator
        public final PlaceGeocodingUiModel[] newArray(int i2) {
            return new PlaceGeocodingUiModel[i2];
        }
    }

    public PlaceGeocodingUiModel(String str, double d, double d2, double d3, double d4, double d5, double d6) {
        str.getClass();
        this.f51804b = str;
        this.f51805c = d;
        this.d = d2;
        this.f51806e = d3;
        this.f51807f = d4;
        this.g = d5;
        this.f51808h = d6;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceGeocodingUiModel)) {
            return false;
        }
        PlaceGeocodingUiModel placeGeocodingUiModel = (PlaceGeocodingUiModel) obj;
        return Intrinsics.c(this.f51804b, placeGeocodingUiModel.f51804b) && Double.compare(this.f51805c, placeGeocodingUiModel.f51805c) == 0 && Double.compare(this.d, placeGeocodingUiModel.d) == 0 && Double.compare(this.f51806e, placeGeocodingUiModel.f51806e) == 0 && Double.compare(this.f51807f, placeGeocodingUiModel.f51807f) == 0 && Double.compare(this.g, placeGeocodingUiModel.g) == 0 && Double.compare(this.f51808h, placeGeocodingUiModel.f51808h) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.f51808h) + d21.a(this.g, d21.a(this.f51807f, d21.a(this.f51806e, d21.a(this.d, d21.a(this.f51805c, this.f51804b.hashCode() * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "PlaceGeocodingUiModel(address=" + this.f51804b + ", centerLatitude=" + this.f51805c + ", centerLongitude=" + this.d + ", northEastLatitude=" + this.f51806e + ", northEastLongitude=" + this.f51807f + ", southWestLatitude=" + this.g + ", southWestLongitude=" + this.f51808h + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f51804b);
        parcel.writeDouble(this.f51805c);
        parcel.writeDouble(this.d);
        parcel.writeDouble(this.f51806e);
        parcel.writeDouble(this.f51807f);
        parcel.writeDouble(this.g);
        parcel.writeDouble(this.f51808h);
    }
}
