package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.fido.common.Transport;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zze implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        byte[] bArrC = null;
        ArrayList arrayListK = null;
        int iT = 0;
        String strG = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 2) {
                bArrC = SafeParcelReader.c(i2, parcel);
            } else if (c2 == 3) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                arrayListK = SafeParcelReader.k(parcel, i2, Transport.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new KeyHandle(iT, bArrC, strG, arrayListK);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new KeyHandle[i2];
    }
}
