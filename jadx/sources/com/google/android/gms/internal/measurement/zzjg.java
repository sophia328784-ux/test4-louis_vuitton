package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjg implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        zzjo[] zzjoVarArr = null;
        int iT = 0;
        String[] strArrH = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 3) {
                zzjoVarArr = (zzjo[]) SafeParcelReader.j(parcel, i2, zzjo.CREATOR);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                strArrH = SafeParcelReader.h(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzjf(iT, zzjoVarArr, strArrH);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzjf[i2];
    }
}
