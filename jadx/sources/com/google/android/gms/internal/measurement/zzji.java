package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzji implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        long jV = 0;
        String strG = null;
        String strG2 = null;
        zzjf[] zzjfVarArr = null;
        byte[] bArrC = null;
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
                    zzjfVarArr = (zzjf[]) SafeParcelReader.j(parcel, i2, zzjf.CREATOR);
                    break;
                case 5:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 6:
                    bArrC = SafeParcelReader.c(i2, parcel);
                    break;
                case 7:
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzjh(strG, strG2, zzjfVarArr, zM, bArrC, jV);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzjh[i2];
    }
}
