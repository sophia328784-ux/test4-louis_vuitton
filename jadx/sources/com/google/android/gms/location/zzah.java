package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzah implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        Status status = null;
        LocationSettingsStates locationSettingsStates = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                status = (Status) SafeParcelReader.f(parcel, i2, Status.CREATOR);
            } else if (c2 != 2) {
                SafeParcelReader.y(i2, parcel);
            } else {
                locationSettingsStates = (LocationSettingsStates) SafeParcelReader.f(parcel, i2, LocationSettingsStates.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new LocationSettingsResult(status, locationSettingsStates);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new LocationSettingsResult[i2];
    }
}
