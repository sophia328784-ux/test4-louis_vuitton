package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzm implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        LatLng latLng = null;
        LatLng latLng2 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                latLng = (LatLng) SafeParcelReader.f(parcel, i2, LatLng.CREATOR);
            } else if (c2 != 3) {
                SafeParcelReader.y(i2, parcel);
            } else {
                latLng2 = (LatLng) SafeParcelReader.f(parcel, i2, LatLng.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new LatLngBounds(latLng, latLng2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new LatLngBounds[i2];
    }
}
