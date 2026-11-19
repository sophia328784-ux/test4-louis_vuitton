package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzag implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        boolean zM = false;
        ArrayList arrayListK = null;
        boolean zM2 = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                arrayListK = SafeParcelReader.k(parcel, i2, LocationRequest.CREATOR);
            } else if (c2 == 2) {
                zM = SafeParcelReader.m(i2, parcel);
            } else if (c2 != 3) {
                SafeParcelReader.y(i2, parcel);
            } else {
                zM2 = SafeParcelReader.m(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new LocationSettingsRequest(arrayListK, zM, zM2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new LocationSettingsRequest[i2];
    }
}
