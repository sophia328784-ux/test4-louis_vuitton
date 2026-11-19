package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzad implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        com.google.android.gms.internal.location.zzd zzdVar = null;
        boolean zM = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                zM = SafeParcelReader.m(i2, parcel);
            } else if (c2 != 2) {
                SafeParcelReader.y(i2, parcel);
            } else {
                zzdVar = (com.google.android.gms.internal.location.zzd) SafeParcelReader.f(parcel, i2, com.google.android.gms.internal.location.zzd.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzac(zM, zzdVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzac[i2];
    }
}
