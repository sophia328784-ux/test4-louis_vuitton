package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zaq implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        Parcel parcel2 = null;
        zan zanVar = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 2) {
                int iX = SafeParcelReader.x(i2, parcel);
                int iDataPosition = parcel.dataPosition();
                if (iX == 0) {
                    parcel2 = null;
                } else {
                    Parcel parcelObtain = Parcel.obtain();
                    parcelObtain.appendFrom(parcel, iDataPosition, iX);
                    parcel.setDataPosition(iDataPosition + iX);
                    parcel2 = parcelObtain;
                }
            } else if (c2 != 3) {
                SafeParcelReader.y(i2, parcel);
            } else {
                zanVar = (zan) SafeParcelReader.f(parcel, i2, zan.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new SafeParcelResponse(iT, parcel2, zanVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new SafeParcelResponse[i2];
    }
}
