package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaa implements Parcelable.Creator<zzab> {
    @Override // android.os.Parcelable.Creator
    public final zzab createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        int iT2 = 0;
        int iT3 = 0;
        int iT4 = 0;
        float fQ = 0.0f;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 3) {
                iT2 = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 4) {
                iT3 = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 5) {
                iT4 = SafeParcelReader.t(i2, parcel);
            } else if (c2 != 6) {
                SafeParcelReader.y(i2, parcel);
            } else {
                fQ = SafeParcelReader.q(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzab(iT, iT2, iT3, iT4, fQ);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzab[] newArray(int i2) {
        return new zzab[i2];
    }
}
