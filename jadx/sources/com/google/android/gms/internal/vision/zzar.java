package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzar implements Parcelable.Creator<zzao> {
    @Override // android.os.Parcelable.Creator
    public final zzao createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        zzal[] zzalVarArr = null;
        zzab zzabVar = null;
        zzab zzabVar2 = null;
        String strG = null;
        String strG2 = null;
        float fQ = 0.0f;
        boolean zM = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    zzalVarArr = (zzal[]) SafeParcelReader.j(parcel, i2, zzal.CREATOR);
                    break;
                case 3:
                    zzabVar = (zzab) SafeParcelReader.f(parcel, i2, zzab.CREATOR);
                    break;
                case 4:
                    zzabVar2 = (zzab) SafeParcelReader.f(parcel, i2, zzab.CREATOR);
                    break;
                case 5:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 6:
                    fQ = SafeParcelReader.q(i2, parcel);
                    break;
                case 7:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\b':
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzao(zzalVarArr, zzabVar, zzabVar2, strG, fQ, strG2, zM);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzao[] newArray(int i2) {
        return new zzao[i2];
    }
}
