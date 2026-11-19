package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzam implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        int iT2 = 0;
        int iT3 = 0;
        long jV = 0;
        long jV2 = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                jV = SafeParcelReader.v(i2, parcel);
            } else if (c2 == 2) {
                jV2 = SafeParcelReader.v(i2, parcel);
            } else if (c2 == 3) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 4) {
                iT2 = SafeParcelReader.t(i2, parcel);
            } else if (c2 != 5) {
                SafeParcelReader.y(i2, parcel);
            } else {
                iT3 = SafeParcelReader.t(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new SleepSegmentEvent(jV, jV2, iT, iT2, iT3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new SleepSegmentEvent[i2];
    }
}
