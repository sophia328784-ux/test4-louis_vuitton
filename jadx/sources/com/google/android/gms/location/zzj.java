package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzj implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        WorkSource workSource = new WorkSource();
        com.google.android.gms.internal.location.zzd zzdVar = null;
        int iT = 0;
        boolean zM = false;
        int iT2 = 0;
        long jV = Long.MAX_VALUE;
        long jV2 = Long.MAX_VALUE;
        int iT3 = 102;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                case 2:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 3:
                    iT3 = SafeParcelReader.t(i2, parcel);
                    break;
                case 4:
                    jV2 = SafeParcelReader.v(i2, parcel);
                    break;
                case 5:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 6:
                    workSource = (WorkSource) SafeParcelReader.f(parcel, i2, WorkSource.CREATOR);
                    break;
                case 7:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case '\b':
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
                case '\t':
                    zzdVar = (com.google.android.gms.internal.location.zzd) SafeParcelReader.f(parcel, i2, com.google.android.gms.internal.location.zzd.CREATOR);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new CurrentLocationRequest(jV, iT, iT3, jV2, zM, iT2, workSource, zzdVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new CurrentLocationRequest[i2];
    }
}
