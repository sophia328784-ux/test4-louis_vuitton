package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zay;

/* JADX INFO: loaded from: classes2.dex */
public final class zal implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        ConnectionResult connectionResult = null;
        int iT = 0;
        zay zayVar = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 2) {
                connectionResult = (ConnectionResult) SafeParcelReader.f(parcel, i2, ConnectionResult.CREATOR);
            } else if (c2 != 3) {
                SafeParcelReader.y(i2, parcel);
            } else {
                zayVar = (zay) SafeParcelReader.f(parcel, i2, zay.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zak(iT, connectionResult, zayVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zak[i2];
    }
}
