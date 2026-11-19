package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zze implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        ConnectionResult connectionResult = null;
        int iT = 0;
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 2) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.f(parcel, i2, PendingIntent.CREATOR);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                connectionResult = (ConnectionResult) SafeParcelReader.f(parcel, i2, ConnectionResult.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new Status(iT, strG, pendingIntent, connectionResult);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new Status[i2];
    }
}
