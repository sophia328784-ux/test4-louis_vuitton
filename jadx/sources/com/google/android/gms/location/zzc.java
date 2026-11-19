package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        WorkSource workSource = null;
        String strG = null;
        int[] iArrE = null;
        String strG2 = null;
        String strG3 = null;
        long jV = 0;
        long jV2 = 0;
        boolean zM = false;
        boolean zM2 = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                case 2:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 3:
                    workSource = (WorkSource) SafeParcelReader.f(parcel, i2, WorkSource.CREATOR);
                    break;
                case 4:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    iArrE = SafeParcelReader.e(i2, parcel);
                    break;
                case 6:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case 7:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\b':
                    jV2 = SafeParcelReader.v(i2, parcel);
                    break;
                case '\t':
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzb(jV, zM, workSource, strG, iArrE, zM2, strG2, jV2, strG3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzb[i2];
    }
}
