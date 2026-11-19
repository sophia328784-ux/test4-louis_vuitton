package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.fido.zzgx;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaj implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        byte[] bArrC = null;
        byte[] bArrC2 = null;
        byte[] bArrC3 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                bArrC = SafeParcelReader.c(i2, parcel);
            } else if (c2 == 2) {
                bArrC2 = SafeParcelReader.c(i2, parcel);
            } else if (c2 == 3) {
                bArrC3 = SafeParcelReader.c(i2, parcel);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                iT = SafeParcelReader.t(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzai(bArrC == null ? null : zzgx.p(bArrC.length, bArrC), bArrC2 == null ? null : zzgx.p(bArrC2.length, bArrC2), bArrC3 != null ? zzgx.p(bArrC3.length, bArrC3) : null, iT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzai[i2];
    }
}
