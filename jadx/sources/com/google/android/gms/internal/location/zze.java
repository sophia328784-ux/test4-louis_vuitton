package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zze implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        String strG2 = null;
        String strG3 = null;
        ArrayList arrayListK = null;
        zzd zzdVar = null;
        int iT = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 3) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 4) {
                strG2 = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 6) {
                strG3 = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 7) {
                zzdVar = (zzd) SafeParcelReader.f(parcel, i2, zzd.CREATOR);
            } else if (c2 != '\b') {
                SafeParcelReader.y(i2, parcel);
            } else {
                arrayListK = SafeParcelReader.k(parcel, i2, Feature.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzd(iT, strG, strG2, strG3, arrayListK, zzdVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzd[i2];
    }
}
