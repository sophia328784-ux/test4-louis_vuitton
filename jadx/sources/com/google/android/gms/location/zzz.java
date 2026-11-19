package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzz implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        com.google.android.gms.internal.location.zzd zzdVar = null;
        int iT = 0;
        boolean zM = false;
        long jV = Long.MAX_VALUE;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                jV = SafeParcelReader.v(i2, parcel);
            } else if (c2 == 2) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 3) {
                zM = SafeParcelReader.m(i2, parcel);
            } else if (c2 != 5) {
                SafeParcelReader.y(i2, parcel);
            } else {
                zzdVar = (com.google.android.gms.internal.location.zzd) SafeParcelReader.f(parcel, i2, com.google.android.gms.internal.location.zzd.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new LastLocationRequest(jV, iT, zM, zzdVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new LastLocationRequest[i2];
    }
}
