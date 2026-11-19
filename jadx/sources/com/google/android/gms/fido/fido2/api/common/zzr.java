package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzr implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        byte[] bArrC = null;
        byte[] bArrC2 = null;
        byte[] bArrC3 = null;
        long jV = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                jV = SafeParcelReader.v(i2, parcel);
            } else if (c2 == 2) {
                bArrC = SafeParcelReader.c(i2, parcel);
            } else if (c2 == 3) {
                bArrC2 = SafeParcelReader.c(i2, parcel);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                bArrC3 = SafeParcelReader.c(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzq(jV, bArrC, bArrC2, bArrC3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzq[i2];
    }
}
