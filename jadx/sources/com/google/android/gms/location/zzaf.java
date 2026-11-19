package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaf implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        List listK = LocationResult.f31362c;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            if (((char) i2) != 1) {
                SafeParcelReader.y(i2, parcel);
            } else {
                listK = SafeParcelReader.k(parcel, i2, Location.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new LocationResult(listK);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new LocationResult[i2];
    }
}
