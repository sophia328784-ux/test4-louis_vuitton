package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzi implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        Integer numU = null;
        Integer numU2 = null;
        Float fR = null;
        Float fR2 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                numU = SafeParcelReader.u(i2, parcel);
            } else if (c2 == 2) {
                numU2 = SafeParcelReader.u(i2, parcel);
            } else if (c2 == 3) {
                fR = SafeParcelReader.r(i2, parcel);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                fR2 = SafeParcelReader.r(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new FeatureStyle(numU, numU2, fR, fR2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new FeatureStyle[i2];
    }
}
