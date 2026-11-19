package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbe implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        short s = 0;
        short s2 = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 2) {
                SafeParcelReader.A(parcel, i2, 4);
                s = (short) parcel.readInt();
            } else if (c2 != 3) {
                SafeParcelReader.y(i2, parcel);
            } else {
                SafeParcelReader.A(parcel, i2, 4);
                s2 = (short) parcel.readInt();
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new UvmEntry(iT, s, s2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new UvmEntry[i2];
    }
}
