package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.location.zzej;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzo implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        ArrayList arrayListK = null;
        int iT = 0;
        String strG = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                arrayListK = SafeParcelReader.k(parcel, i2, zzej.CREATOR);
            } else if (c2 == 2) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                strG = SafeParcelReader.g(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new GeofencingRequest(iT, strG, arrayListK);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new GeofencingRequest[i2];
    }
}
