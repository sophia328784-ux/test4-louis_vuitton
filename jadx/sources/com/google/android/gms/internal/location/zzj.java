package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzj implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        zzg zzgVar = null;
        IBinder iBinderS = null;
        IBinder iBinderS2 = null;
        int iT = 1;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 2) {
                zzgVar = (zzg) SafeParcelReader.f(parcel, i2, zzg.CREATOR);
            } else if (c2 == 3) {
                iBinderS = SafeParcelReader.s(i2, parcel);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                iBinderS2 = SafeParcelReader.s(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzi(iT, zzgVar, iBinderS, iBinderS2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzi[i2];
    }
}
