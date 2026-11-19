package com.google.android.gms.internal.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzs implements Parcelable.Creator<zzr> {
    @Override // android.os.Parcelable.Creator
    public final zzr createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        String strG2 = null;
        String strG3 = null;
        String strG4 = null;
        int iT = 0;
        int iT2 = 0;
        boolean zM = false;
        int iT3 = 0;
        boolean zM2 = true;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 4:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case 5:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 6:
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                case 7:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case '\b':
                    strG4 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\t':
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case '\n':
                    iT3 = SafeParcelReader.t(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzr(strG, iT, iT2, strG2, strG3, zM2, strG4, zM, iT3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr[] newArray(int i2) {
        return new zzr[i2];
    }
}
