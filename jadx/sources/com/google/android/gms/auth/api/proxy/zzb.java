package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzb implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        PendingIntent pendingIntent = null;
        Bundle bundleB = null;
        byte[] bArrC = null;
        int iT = 0;
        int iT2 = 0;
        int iT3 = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                iT2 = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 2) {
                pendingIntent = (PendingIntent) SafeParcelReader.f(parcel, i2, PendingIntent.CREATOR);
            } else if (c2 == 3) {
                iT3 = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 4) {
                bundleB = SafeParcelReader.b(i2, parcel);
            } else if (c2 == 5) {
                bArrC = SafeParcelReader.c(i2, parcel);
            } else if (c2 != 1000) {
                SafeParcelReader.y(i2, parcel);
            } else {
                iT = SafeParcelReader.t(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new ProxyResponse(iT, iT2, pendingIntent, iT3, bundleB, bArrC);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new ProxyResponse[i2];
    }
}
