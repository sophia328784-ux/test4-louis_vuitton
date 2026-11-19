package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzw implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        IBinder iBinderS = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            if (((char) i2) != 2) {
                SafeParcelReader.y(i2, parcel);
            } else {
                iBinderS = SafeParcelReader.s(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new StampStyle(iBinderS);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new StampStyle[i2];
    }
}
