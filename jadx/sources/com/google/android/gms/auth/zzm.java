package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzm implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        Long lW = null;
        ArrayList arrayListI = null;
        String strG2 = null;
        int iT = 0;
        boolean zM = false;
        boolean zM2 = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 2:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    lW = SafeParcelReader.w(i2, parcel);
                    break;
                case 4:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 5:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case 6:
                    arrayListI = SafeParcelReader.i(i2, parcel);
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
        return new TokenData(iT, strG, lW, zM, zM2, arrayListI, strG2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new TokenData[i2];
    }
}
