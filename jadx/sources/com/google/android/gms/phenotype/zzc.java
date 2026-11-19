package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzc implements Parcelable.Creator<Configuration> {
    @Override // android.os.Parcelable.Creator
    public final Configuration createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        zzi[] zziVarArr = null;
        String[] strArrH = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 3) {
                zziVarArr = (zzi[]) SafeParcelReader.j(parcel, i2, zzi.CREATOR);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                strArrH = SafeParcelReader.h(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new Configuration(iT, zziVarArr, strArrH);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Configuration[] newArray(int i2) {
        return new Configuration[i2];
    }
}
