package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zac implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        boolean zM = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 != 2) {
                SafeParcelReader.y(i2, parcel);
            } else {
                zM = SafeParcelReader.m(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new ModuleInstallResponse(iT, zM);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new ModuleInstallResponse[i2];
    }
}
