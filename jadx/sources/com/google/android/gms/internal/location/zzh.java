package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.DeviceOrientationRequest;

/* JADX INFO: loaded from: classes2.dex */
public final class zzh implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        DeviceOrientationRequest deviceOrientationRequest = zzg.f30267c;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            if (((char) i2) != 1) {
                SafeParcelReader.y(i2, parcel);
            } else {
                deviceOrientationRequest = (DeviceOrientationRequest) SafeParcelReader.f(parcel, i2, DeviceOrientationRequest.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzg(deviceOrientationRequest);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzg[i2];
    }
}
