package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public final class zzp implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        HashSet hashSet = new HashSet();
        int iT = 0;
        ArrayList arrayListK = null;
        zzs zzsVar = null;
        int iT2 = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                iT = SafeParcelReader.t(i2, parcel);
                hashSet.add(1);
            } else if (c2 == 2) {
                arrayListK = SafeParcelReader.k(parcel, i2, zzu.CREATOR);
                hashSet.add(2);
            } else if (c2 == 3) {
                iT2 = SafeParcelReader.t(i2, parcel);
                hashSet.add(3);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                zzsVar = (zzs) SafeParcelReader.f(parcel, i2, zzs.CREATOR);
                hashSet.add(4);
            }
        }
        if (parcel.dataPosition() == iZ) {
            return new zzo(hashSet, iT, arrayListK, iT2, zzsVar);
        }
        throw new SafeParcelReader.ParseException(pq0.k(iZ, "Overread allowed size end="), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzo[i2];
    }
}
