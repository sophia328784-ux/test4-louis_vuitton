package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzoi implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        long jV = 0;
        String strG = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 2) {
                jV = SafeParcelReader.v(i2, parcel);
            } else if (c2 != 3) {
                SafeParcelReader.y(i2, parcel);
            } else {
                iT = SafeParcelReader.t(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzoh(iT, strG, jV);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzoh[i2];
    }
}
