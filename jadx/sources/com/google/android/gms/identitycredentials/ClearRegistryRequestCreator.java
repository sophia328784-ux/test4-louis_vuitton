package com.google.android.gms.identitycredentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class ClearRegistryRequestCreator implements Parcelable.Creator<ClearRegistryRequest> {
    @Override // android.os.Parcelable.Creator
    public final ClearRegistryRequest createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        while (parcel.dataPosition() < iZ) {
            SafeParcelReader.y(parcel.readInt(), parcel);
        }
        SafeParcelReader.l(iZ, parcel);
        return new ClearRegistryRequest();
    }

    @Override // android.os.Parcelable.Creator
    public final ClearRegistryRequest[] newArray(int i2) {
        return new ClearRegistryRequest[i2];
    }
}
