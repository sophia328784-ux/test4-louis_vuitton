package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzad implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        StampStyle stampStyle = null;
        int iT = 0;
        int iT2 = 0;
        boolean zM = false;
        float fQ = 0.0f;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                fQ = SafeParcelReader.q(i2, parcel);
            } else if (c2 == 3) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 4) {
                iT2 = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 5) {
                zM = SafeParcelReader.m(i2, parcel);
            } else if (c2 != 6) {
                SafeParcelReader.y(i2, parcel);
            } else {
                stampStyle = (StampStyle) SafeParcelReader.f(parcel, i2, StampStyle.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new StrokeStyle(fQ, iT, iT2, zM, stampStyle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new StrokeStyle[i2];
    }
}
