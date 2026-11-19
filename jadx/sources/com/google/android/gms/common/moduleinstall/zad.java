package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zad implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        int iT2 = 0;
        int iT3 = 0;
        Long lW = null;
        Long lW2 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 2) {
                iT2 = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 3) {
                lW = SafeParcelReader.w(i2, parcel);
            } else if (c2 == 4) {
                lW2 = SafeParcelReader.w(i2, parcel);
            } else if (c2 != 5) {
                SafeParcelReader.y(i2, parcel);
            } else {
                iT3 = SafeParcelReader.t(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new ModuleInstallStatusUpdate(iT, iT2, lW, lW2, iT3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new ModuleInstallStatusUpdate[i2];
    }
}
