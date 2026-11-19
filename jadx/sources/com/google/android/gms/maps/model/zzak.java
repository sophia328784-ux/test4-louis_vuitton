package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzak implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        LatLng latLng = null;
        LatLng latLng2 = null;
        LatLng latLng3 = null;
        LatLng latLng4 = null;
        LatLngBounds latLngBounds = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                latLng = (LatLng) SafeParcelReader.f(parcel, i2, LatLng.CREATOR);
            } else if (c2 == 3) {
                latLng2 = (LatLng) SafeParcelReader.f(parcel, i2, LatLng.CREATOR);
            } else if (c2 == 4) {
                latLng3 = (LatLng) SafeParcelReader.f(parcel, i2, LatLng.CREATOR);
            } else if (c2 == 5) {
                latLng4 = (LatLng) SafeParcelReader.f(parcel, i2, LatLng.CREATOR);
            } else if (c2 != 6) {
                SafeParcelReader.y(i2, parcel);
            } else {
                latLngBounds = (LatLngBounds) SafeParcelReader.f(parcel, i2, LatLngBounds.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new VisibleRegion(latLng, latLng2, latLng3, latLng4, latLngBounds);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new VisibleRegion[i2];
    }
}
