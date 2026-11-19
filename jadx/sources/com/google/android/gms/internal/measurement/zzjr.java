package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjr implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        boolean zM = false;
        String strG = null;
        String strG2 = null;
        zzjo zzjoVar = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 3) {
                strG2 = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 4) {
                zzjoVar = (zzjo) SafeParcelReader.f(parcel, i2, zzjo.CREATOR);
            } else if (c2 != 5) {
                SafeParcelReader.y(i2, parcel);
            } else {
                zM = SafeParcelReader.m(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzjq(strG, strG2, zzjoVar, zM);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzjq[i2];
    }
}
