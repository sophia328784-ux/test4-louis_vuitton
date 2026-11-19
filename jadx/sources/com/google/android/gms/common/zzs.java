package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzs implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        long jV = -1;
        int iT = 0;
        int iT2 = 0;
        boolean zM = false;
        String strG = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                zM = SafeParcelReader.m(i2, parcel);
            } else if (c2 == 2) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 3) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 4) {
                iT2 = SafeParcelReader.t(i2, parcel);
            } else if (c2 != 5) {
                SafeParcelReader.y(i2, parcel);
            } else {
                jV = SafeParcelReader.v(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzr(iT, strG, jV, iT2, zM);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzr[i2];
    }
}
