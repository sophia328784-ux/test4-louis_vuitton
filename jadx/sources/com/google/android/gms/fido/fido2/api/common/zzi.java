package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.fido.zzgx;

/* JADX INFO: loaded from: classes2.dex */
public final class zzi implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        boolean zM = false;
        byte[] bArrC = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                zM = SafeParcelReader.m(i2, parcel);
            } else if (c2 != 2) {
                SafeParcelReader.y(i2, parcel);
            } else {
                bArrC = SafeParcelReader.c(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzh(zM, bArrC != null ? zzgx.p(bArrC.length, bArrC) : null);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzh[i2];
    }
}
