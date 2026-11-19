package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zaw;

/* JADX INFO: loaded from: classes2.dex */
public final class zaj implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        zaw zawVar = null;
        int iT = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 != 2) {
                SafeParcelReader.y(i2, parcel);
            } else {
                zawVar = (zaw) SafeParcelReader.f(parcel, i2, zaw.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zai(iT, zawVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zai[i2];
    }
}
