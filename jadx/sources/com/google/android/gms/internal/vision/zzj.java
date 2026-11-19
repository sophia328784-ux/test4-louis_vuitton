package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzj implements Parcelable.Creator<zzk> {
    @Override // android.os.Parcelable.Creator
    public final zzk createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        boolean zM = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 != 3) {
                SafeParcelReader.y(i2, parcel);
            } else {
                zM = SafeParcelReader.m(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzk(iT, zM);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzk[] newArray(int i2) {
        return new zzk[i2];
    }
}
