package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzap implements Parcelable.Creator<zzam> {
    @Override // android.os.Parcelable.Creator
    public final zzam createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            if (((char) i2) != 2) {
                SafeParcelReader.y(i2, parcel);
            } else {
                strG = SafeParcelReader.g(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzam(strG);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzam[] newArray(int i2) {
        return new zzam[i2];
    }
}
