package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zza implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        byte[] bArrC = null;
        Bundle bundleB = null;
        long jV = 0;
        int iT = 0;
        int iT2 = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 2) {
                iT2 = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 3) {
                jV = SafeParcelReader.v(i2, parcel);
            } else if (c2 == 4) {
                bArrC = SafeParcelReader.c(i2, parcel);
            } else if (c2 == 5) {
                bundleB = SafeParcelReader.b(i2, parcel);
            } else if (c2 != 1000) {
                SafeParcelReader.y(i2, parcel);
            } else {
                iT = SafeParcelReader.t(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new ProxyRequest(iT, strG, iT2, jV, bArrC, bundleB);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new ProxyRequest[i2];
    }
}
