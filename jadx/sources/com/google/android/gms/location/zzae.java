package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzae implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        WorkSource workSource = new WorkSource();
        com.google.android.gms.internal.location.zzd zzdVar = null;
        boolean zM = false;
        int iT = 0;
        int iT2 = 0;
        boolean zM2 = false;
        long jV = -1;
        float fQ = 0.0f;
        int iT3 = Integer.MAX_VALUE;
        long jV2 = Long.MAX_VALUE;
        long jV3 = Long.MAX_VALUE;
        long jV4 = 0;
        long jV5 = 600000;
        long jV6 = 3600000;
        int iT4 = 102;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    iT4 = SafeParcelReader.t(i2, parcel);
                    break;
                case 2:
                    jV6 = SafeParcelReader.v(i2, parcel);
                    break;
                case 3:
                    jV5 = SafeParcelReader.v(i2, parcel);
                    break;
                case 4:
                case 14:
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
                case 5:
                    jV2 = SafeParcelReader.v(i2, parcel);
                    break;
                case 6:
                    iT3 = SafeParcelReader.t(i2, parcel);
                    break;
                case 7:
                    fQ = SafeParcelReader.q(i2, parcel);
                    break;
                case '\b':
                    jV4 = SafeParcelReader.v(i2, parcel);
                    break;
                case '\t':
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case '\n':
                    jV3 = SafeParcelReader.v(i2, parcel);
                    break;
                case 11:
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                case '\f':
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case '\r':
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case 15:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case 16:
                    workSource = (WorkSource) SafeParcelReader.f(parcel, i2, WorkSource.CREATOR);
                    break;
                case 17:
                    zzdVar = (com.google.android.gms.internal.location.zzd) SafeParcelReader.f(parcel, i2, com.google.android.gms.internal.location.zzd.CREATOR);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new LocationRequest(iT4, jV6, jV5, jV4, jV2, jV3, iT3, fQ, zM, jV, iT, iT2, zM2, workSource, zzdVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new LocationRequest[i2];
    }
}
