package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzag implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        long jV = 0;
        long jV2 = 0;
        int iT = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                jV = SafeParcelReader.v(i2, parcel);
            } else if (c2 == 2) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 != 3) {
                SafeParcelReader.y(i2, parcel);
            } else {
                jV2 = SafeParcelReader.v(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzaf(jV, iT, jV2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzaf[i2];
    }
}
