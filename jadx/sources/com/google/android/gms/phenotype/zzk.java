package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzk implements Parcelable.Creator<zzi> {
    @Override // android.os.Parcelable.Creator
    public final zzi createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        String strG2 = null;
        byte[] bArrC = null;
        long jV = 0;
        boolean zM = false;
        int iT = 0;
        int iT2 = 0;
        double dO = 0.0d;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                case 4:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 5:
                    dO = SafeParcelReader.o(i2, parcel);
                    break;
                case 6:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 7:
                    bArrC = SafeParcelReader.c(i2, parcel);
                    break;
                case '\b':
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case '\t':
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzi(strG, jV, zM, dO, strG2, bArrC, iT, iT2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzi[] newArray(int i2) {
        return new zzi[i2];
    }
}
