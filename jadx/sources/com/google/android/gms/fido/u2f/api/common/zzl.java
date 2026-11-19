package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzl implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        byte[] bArrC = null;
        String strG = null;
        byte[] bArrC2 = null;
        byte[] bArrC3 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                bArrC = SafeParcelReader.c(i2, parcel);
            } else if (c2 == 3) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 4) {
                bArrC2 = SafeParcelReader.c(i2, parcel);
            } else if (c2 != 5) {
                SafeParcelReader.y(i2, parcel);
            } else {
                bArrC3 = SafeParcelReader.c(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new SignResponseData(bArrC, strG, bArrC2, bArrC3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new SignResponseData[i2];
    }
}
