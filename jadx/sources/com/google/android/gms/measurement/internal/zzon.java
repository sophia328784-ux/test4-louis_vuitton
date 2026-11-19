package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzon implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        byte[] bArrC = null;
        String strG = null;
        Bundle bundleB = null;
        String strG2 = null;
        long jV = 0;
        long jV2 = 0;
        int iT = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                case 2:
                    bArrC = SafeParcelReader.c(i2, parcel);
                    break;
                case 3:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 4:
                    bundleB = SafeParcelReader.b(i2, parcel);
                    break;
                case 5:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 6:
                    jV2 = SafeParcelReader.v(i2, parcel);
                    break;
                case 7:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzom(jV, bArrC, strG, bundleB, iT, jV2, strG2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzom[i2];
    }
}
