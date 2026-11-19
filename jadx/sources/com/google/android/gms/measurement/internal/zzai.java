package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzai implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        String strG2 = null;
        zzpl zzplVar = null;
        String strG3 = null;
        zzbh zzbhVar = null;
        zzbh zzbhVar2 = null;
        zzbh zzbhVar3 = null;
        long jV = 0;
        long jV2 = 0;
        long jV3 = 0;
        boolean zM = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 4:
                    zzplVar = (zzpl) SafeParcelReader.f(parcel, i2, zzpl.CREATOR);
                    break;
                case 5:
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                case 6:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 7:
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\b':
                    zzbhVar = (zzbh) SafeParcelReader.f(parcel, i2, zzbh.CREATOR);
                    break;
                case '\t':
                    jV2 = SafeParcelReader.v(i2, parcel);
                    break;
                case '\n':
                    zzbhVar2 = (zzbh) SafeParcelReader.f(parcel, i2, zzbh.CREATOR);
                    break;
                case 11:
                    jV3 = SafeParcelReader.v(i2, parcel);
                    break;
                case '\f':
                    zzbhVar3 = (zzbh) SafeParcelReader.f(parcel, i2, zzbh.CREATOR);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzah(strG, strG2, zzplVar, jV, zM, strG3, zzbhVar, jV2, zzbhVar2, jV3, zzbhVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzah[i2];
    }
}
