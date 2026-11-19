package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzl implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        Status status = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            if (((char) i2) != 1) {
                SafeParcelReader.y(i2, parcel);
            } else {
                status = (Status) SafeParcelReader.f(parcel, i2, Status.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzk(status);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzk[i2];
    }
}
