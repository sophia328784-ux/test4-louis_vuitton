package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import defpackage.pq0;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public final class zzv implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        HashSet hashSet = new HashSet();
        int iT = 0;
        zzw zzwVar = null;
        String strG = null;
        String strG2 = null;
        String strG3 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                iT = SafeParcelReader.t(i2, parcel);
                hashSet.add(1);
            } else if (c2 == 2) {
                zzwVar = (zzw) SafeParcelReader.f(parcel, i2, zzw.CREATOR);
                hashSet.add(2);
            } else if (c2 == 3) {
                strG = SafeParcelReader.g(i2, parcel);
                hashSet.add(3);
            } else if (c2 == 4) {
                strG2 = SafeParcelReader.g(i2, parcel);
                hashSet.add(4);
            } else if (c2 != 5) {
                SafeParcelReader.y(i2, parcel);
            } else {
                strG3 = SafeParcelReader.g(i2, parcel);
                hashSet.add(5);
            }
        }
        if (parcel.dataPosition() == iZ) {
            return new zzu(hashSet, iT, zzwVar, strG, strG2, strG3);
        }
        throw new SafeParcelReader.ParseException(pq0.k(iZ, "Overread allowed size end="), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzu[i2];
    }
}
